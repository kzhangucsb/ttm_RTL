`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2018 01:34:31 PM
// Design Name: 
// Module Name: ttm_core
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ttm_core #(
	parameter
	DATA_WIDTH    = 32,
	WIDTH_INT     = 2,
	BATCH_SIZE    = 32,
	BURST_SIZE    = 4,
	MAT_A1_SCALE  = 8,
	RANK_MAX      = 32
)(	
	input  clk,
	input  rst_n,
	input  mode,
	fifo_if.slave  ten,
	fifo_if.slave  mat,
	fifo_if.master res,
	ram_if.slave   mat_a1
);
	
	genvar g, h;
	
	reg signed [15:0] counter_burst;
	reg signed [15:0] counter_a1_scale;
	reg signed [15:0] counter_output;

	fifo_if #(
		.WIDTH((BATCH_SIZE+RANK_MAX)*DATA_WIDTH)
	) tenmat();
	// fifo_if #(
	// 	.WIDTH(RANK_MAX*DATA_WIDTH)
	// ) res_prt();

	wire procvalid;
	wire procpause;
	reg  procvalid_1;
	reg  tlast_1;// tlast_2;
	wire [DATA_WIDTH-1:0] ten_int [BATCH_SIZE-1:0];
	wire [DATA_WIDTH-1:0] mat_int [RANK_MAX-1:0];

	wire [DATA_WIDTH-1:0] mat_a1_wr_r [RANK_MAX-1:0];
	reg  [DATA_WIDTH-1:0] mat_a1_rd_r [RANK_MAX-1:0];
	reg  [17:0] mat_a1_r [0:MAT_A1_SCALE-1][BATCH_SIZE-1:0][RANK_MAX-1:0];

	reg  [44:0] prod_l [BATCH_SIZE-1:0][RANK_MAX-1:0];
	reg  [DATA_WIDTH-1:0] prod_r [BATCH_SIZE-1:0][RANK_MAX-1:0];

	reg  [DATA_WIDTH-1:0] res_reg [0:BURST_SIZE-1][BATCH_SIZE-1:0][RANK_MAX-1:0];
	reg  [DATA_WIDTH-1:0] res_reg_1 [0:BURST_SIZE-1][BATCH_SIZE-1:0][RANK_MAX-1:0];

	reg  [RANK_MAX*DATA_WIDTH-1:0] res_a1_sum;
	wire [RANK_MAX*DATA_WIDTH-1:0] res_a1_sum_1;
	reg  res_a1_valid;
	//reg  res_a1_ready;

	fifo_merge_repeat #(
		.WIDTH_1(BATCH_SIZE*DATA_WIDTH), 
		.WIDTH_2(RANK_MAX*DATA_WIDTH)
	) fm (
		.clk(clk),
		.rst_n(rst_n),
		.bypass(~mode),
		.f1(ten),
		.f2(mat),
		.fo(tenmat)
	);

	always_ff @(posedge clk or negedge rst_n) begin : proc_counter_burst
		if(~rst_n) begin
			counter_burst <= 0;
		end else begin
			if (mode) begin
				if (procvalid) begin
					counter_burst <= (counter_burst + 1) % BURST_SIZE; 
					if (tenmat.tlast & procvalid) begin
						counter_burst <= 0;
					end
				end
			end else begin
				counter_burst <= 0;
			end 
		end
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_counter_a1_scale
		if(~rst_n) begin
			counter_a1_scale <= 0;
		end else begin
			if (mode) begin
				counter_a1_scale <= 0;
			end else begin
				if (procvalid) begin
					counter_a1_scale <= (counter_a1_scale + 1) % MAT_A1_SCALE;
					if (tenmat.tlast & procvalid) begin
						counter_a1_scale <= 0;
					end
				end
			end
		end
	end

	assign tenmat.tready = ~procpause; 
	assign procvalid = tenmat.tvalid & tenmat.tready;
	assign procpause = tlast_1 & (counter_output >= 0); 

	// always_comb begin : proc_ten_n_mat
	// 	for (int i = 0; i < RANK_MAX; i = i + 1) begin
	// 		mat_int[i] = tenmat.data[(i+1)*DATA_WIDTH-1: i*DATA_WIDTH];
	// 	end
	// 	for (int i = 0; i < BATCH_SIZE; i = i + 1) begin
	// 		ten_int[i] = tenmat.data[(i+1+RANK_MAX)*DATA_WIDTH-1: (i+RANK_MAX)*DATA_WIDTH];
	// 	end
	// end
	

	for (g = 0; g < RANK_MAX; g = g + 1) begin
		assign mat_int[g] = tenmat.data[(g+1)*DATA_WIDTH-1: g*DATA_WIDTH];
	end
	for (g = 0; g < BATCH_SIZE; g = g + 1) begin
		assign ten_int[g] = tenmat.data[(g+1+RANK_MAX)*DATA_WIDTH-1: (g+RANK_MAX)*DATA_WIDTH];
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_labels
		if(~rst_n) begin
			procvalid_1 <= 0;
			tlast_1 <= 0;
			//tlast_2 <= 0;
		end else begin
			procvalid_1 <= procvalid;
			tlast_1 <= (tenmat.tlast & procvalid) | (tlast_1 & procpause);// | procpause;
			//tlast_2 <= tlast_1 & ~procpause;	
		end
	end

	for (g = 0; g < RANK_MAX; g = g + 1) begin
		assign mat_a1_wr_r[g] = mat_a1.dataw[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH];
		assign mat_a1.datar[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH] = mat_a1_rd_r[g];
	end

	always_ff @(posedge mat_a1.clk) begin : proc_mat_a1_r
		if(mat_a1.rst) begin
			for (int k = 0; k < MAT_A1_SCALE; k = k + 1) begin
				for (int i = 0; i < BATCH_SIZE; i = i + 1) begin
					for (int j = 0; j < RANK_MAX; j = j + 1) begin
						mat_a1_r[k][i][j] <= 0;//18'h10000;
					end // for (int j = 0; j < RANK_MAX; j = j + 1)
				end // for (int i = 0; i < BATCH_SIZE; i = i + 1)
			end // for (int k = 0; k < MAT_A1_SCALE; k = k + 1)
		end else begin
			if (mat_a1.wr & mat_a1.en) begin
				for (int j = 0; j < RANK_MAX; j = j + 1) begin
					mat_a1_r[mat_a1.address / BATCH_SIZE][mat_a1.address % BATCH_SIZE][j] <= mat_a1_wr_r[j];
				end // for (int j = 0; j < RANK_MAX; j = j + 1)
			end
		end
	end

	for (g = 0; g < RANK_MAX; g = g + 1) begin
		always_ff @(posedge mat_a1.clk) begin : proc_mat_a1_datar
			if(mat_a1.rst) begin
				mat_a1_rd_r[g] <= 0;
			end else begin
				if (mat_a1.en) begin
					mat_a1_rd_r[g] <= mat_a1_r[mat_a1.address / BATCH_SIZE][mat_a1.address % BATCH_SIZE][g];
				end
				else begin
					mat_a1_rd_r[g] <= 0;
				end
			end
		end
	end

	// always_ff @(posedge clk) begin : proc_mat_a1_datar
	// 	if(~rst_n) begin
	// 		mat_a1.datarvalid <= 0;
	// 	end else begin
	// 		if (mat_a1.rd) begin
	// 			mat_a1.datarvalid <= 1;
	// 		end
	// 		else begin
	// 			mat_a1.datarvalid <= 0;
	// 		end
	// 	end
	// end

	for (g = 0; g < BATCH_SIZE; g = g + 1) begin
		for (h = 0; h < RANK_MAX; h = h + 1) begin
			xbip_multadd_0 mult_inst(
				//.CLK(clk), 
				.A(ten_int[g][DATA_WIDTH-1:DATA_WIDTH-27]), 
				.B(mode ? mat_int[h][DATA_WIDTH-1:DATA_WIDTH-18] : mat_a1_r[counter_a1_scale][g][h]),
				.C(tlast_1 ? 0 : {res_reg[counter_burst][g][h], 11'h0}),
				//.SCLR(~rst_n),
				.SUBTRACT(0),
				.P(prod_r[g][h]),
				.PCOUT()
			);
		end // for (int h = 0; h < RANK_MAX; h = h + 1)
	end // for (int g = 0; g < BATCH_SIZE; g = g + 1)

	always_ff @(posedge clk or negedge rst_n) begin : proc_res_reg
		if(~rst_n) begin
			for (int k = 0; k < BURST_SIZE; k = k + 1) begin
				for (int i = 0; i < BATCH_SIZE; i = i + 1) begin
					for (int j = 0; j < RANK_MAX; j = j + 1) begin
							res_reg[k][i][j] <= 0;
					end // for (int j = 0; j < RANK_MAX; j = j + 1)
				end // for (int i = 0; i < BATCH_SIZE; i = i + 1)
			end // for (int k = 0; k < BURST_SIZE; k = k + 1)
		end else begin
			if (procvalid) begin
				if (tlast_1) begin
					for (int k = 0; k < BURST_SIZE; k = k + 1) begin
						for (int i = 0; i < BATCH_SIZE; i = i + 1) begin
							for (int j = 0; j < RANK_MAX; j = j + 1) begin
								if (k == counter_burst) begin
									res_reg[counter_burst][i][j] <= prod_r[i][j];
								end // if (j == counter_burst)
								else begin
									res_reg[k][i][j] <= 0;
								end 
							end // for (int j = 0; j < RANK_MAX; j = j + 1)
						end // for (int j = 0; j < RANK_MAX; j = j + 1)
					end // for (int i = 0; i < BATCH_SIZE; i = i + 1)
				end // if (tlast_1)
				else begin
					for (int i = 0; i < BATCH_SIZE; i = i + 1) begin
						for (int j = 0; j < RANK_MAX; j = j + 1) begin
							res_reg[counter_burst][i][j] <= prod_r[i][j]; // + res_reg[counter_burst][i][j] 
						end // for (int j = 0; j < RANK_MAX; j = j + 1)
					end // for (int i = 0; i < BATCH_SIZE; i = i + 1)
				end
			end // if (procvalid_1)
			else if (tlast_1 & ~procpause) begin
				for (int k = 0; k < BURST_SIZE; k = k + 1) begin
					for (int i = 0; i < BATCH_SIZE; i = i + 1) begin
						for (int j = 0; j < RANK_MAX; j = j + 1) begin
							res_reg[k][i][j] <= 0;
						end // for (int j = 0; j < RANK_MAX; j = j + 1)
					end // for (int i = 0; i < BATCH_SIZE; i = i + 1)
				end
			end // else if (tlast_2)
		end
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_res_reg_1
		if(~rst_n) begin
			for (int k = 0; k < BURST_SIZE; k = k + 1) begin
				for (int i = 0; i < BATCH_SIZE; i = i + 1) begin
					for (int j = 0; j < RANK_MAX; j = j + 1) begin
						res_reg_1[k][i][j] <= 0;
					end // for (int j = 0; j < RANK_MAX; j = j + 1)
				end // for (int i = 0; i < BATCH_SIZE; i = i + 1)
			end // for (int k = 0; k < BURST_SIZE; k = k + 1)
		end else if (tlast_1 & ~procpause) begin
			for (int k = 0; k < BURST_SIZE; k = k + 1) begin
				for (int i = 0; i < BATCH_SIZE; i = i + 1) begin
					for (int j = 0; j < RANK_MAX; j = j + 1) begin
						res_reg_1[k][i][j] <= res_reg[k][i][j];
					end // for (int j = 0; j < RANK_MAX; j = j + 1)
				end // for (int i = 0; i < BATCH_SIZE; i = i + 1)
			end // for (int k = 0; k < BURST_SIZE; k = k + 1)
		end
		else if (~mode) begin
			for (int k = 1; k < BURST_SIZE; k = k + 1) begin
				for (int i = 0; i < BATCH_SIZE; i = i + 1) begin
					for (int j = 0; j < RANK_MAX; j = j + 1) begin
						res_reg_1[k][i][j] <= 0;
					end // for (int j = 0; j < RANK_MAX; j = j + 1)
				end // for (int i = 0; i < BATCH_SIZE; i = i + 1)
			end // for (int k = 0; k < BURST_SIZE; k = k + 1)
			if ((counter_output < 5) & (counter_output >= 0)) begin
				for (int i = 0; i < BATCH_SIZE / 2; i = i + 1) begin
					for (int j = 0; j < RANK_MAX; j = j + 1) begin
						res_reg_1[0][i][j] <= res_reg_1[0][i*2][j] + res_reg_1[0][i*2+1][j];
					end // for (int j = 0; j < RANK_MAX; j = j + 1)
				end // for (int i = 0; i < BATCH_SIZE; i = i + 1)
				for (int i = BATCH_SIZE / 2; i < BATCH_SIZE; i = i + 1) begin
					for (int j = 0; j < RANK_MAX; j = j + 1) begin
						res_reg_1[0][i][j] <= 0;
					end // for (int j = 0; j < RANK_MAX; j = j + 1)
				end // for (int i = 0; i < BATCH_SIZE; i = i + 1)
			end // if ((counter_output < 5) & (counter_output >= 0))
		end
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_counter_output
		if(~rst_n) begin
			counter_output <= -1;
		end else begin
			if (tlast_1 & ~procpause) begin //TODO
				counter_output <= 0;
			end
			else begin
				if (mode) begin
					if (counter_output >= 0 & res.tready) begin
						counter_output <= counter_output + 1;
						if (counter_output == (BATCH_SIZE * BURST_SIZE -1)) begin
							counter_output <= -1;
						end
					end
				end
				else begin
					if ((counter_output < 5) & (counter_output >= 0)) begin
						counter_output <= counter_output + 1;
					end	else if ((counter_output == 5) & res.tready) begin
						counter_output <= -1;
					end
				end
			end
		end
	end

	always_comb begin : proc_res_prt
		if (mode) begin 
			if (counter_output >= 0) begin
				// for (int t = 0; t < RANK_MAX; t = t + 1) begin
				// 	res.data[(t+1)*DATA_WIDTH-1:t*DATA_WIDTH] = res_reg[counter_output/BATCH_SIZE][counter_output%BATCH_SIZE][t];	
				// end // for (int t = 0; t < RANK_MAX; t = t + 1)
				res.tvalid = 1;
				res.tlast  = ((counter_output+1) % BURST_SIZE == 0);
			end else begin
				// res.data = 0;
				res.tvalid = 0;
				res.tlast  = 0;
			end
		end else begin
			if (counter_output == 5) begin
				res.tvalid = 1;
				res.tlast  = 1;
			end else begin
				res.tvalid = 0;
				res.tlast  = 0;
			end
		end
	end

	for (g = 0; g < RANK_MAX; g = g + 1) begin
		//assign res_prt.data[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH] = (counter_output >= 0) ? res_reg_1[counter_output/BATCH_SIZE][counter_output%BATCH_SIZE][g] : 0;
		assign res.data[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH] = (counter_output < 0) ? 0 : (mode ? res_reg_1[counter_output%BURST_SIZE][g][counter_output/BURST_SIZE] : res_reg_1[0][0][g]);
	end

	// always_ff @(posedge clk or negedge rst_n) begin : proc_res_a1
	// 	if(~rst_n) begin
	// 		res_a1_valid <= 0;
	// 		res_a1_sum   <= 0;
	// 	end else begin
	// 		if (mode) begin
	// 			res_a1_valid <= 0;
	// 			res_a1_sum   <= 0;
	// 		end else begin 
	// 			if (res.tlast & res.tvalid) begin
	// 				res_a1_valid <= 1;
	// 			end 
	// 			else if (res.tready) begin
	// 				res_a1_valid <= 0;
	// 			end
	// 			if (res_a1_valid & res.tready) begin
	// 				res_a1_sum <= 0;
	// 			end else if (res.tvalid & ~res_a1_valid) begin
	// 				res_a1_sum <= res_a1_sum_1;
	// 			end
	// 		end			
	// 	end
	// end

	// for (g = 0; g < RANK_MAX; g = g + 1) begin
	// 	assign res_a1_sum_1[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH] = res_a1_sum[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH] + res_prt.data[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH];
	// end // for (int g = 0; g < RANK_MAX; g = g + 1)

	// always_comb begin : proc_res
	// 	if (mode) begin
	// 		res.data   = res_prt.data;
	// 		res.tvalid = res_prt.tvalid;
	// 		res.tlast  = res_prt.tlast;
	// 		res_prt.tready = res.tready;
	// 	end else begin
	// 		res.data   = res_a1_sum;
	// 		res.tvalid = res_a1_valid;
	// 		res.tlast  = 1;
	// 		res_prt.tready = ~res_a1_valid;
	// 	end // end else
	// end
	
endmodule



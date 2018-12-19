`timescale 1ns / 1ps
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
	RANK_MAX      = 32
)(	
	input  clk,
	input  rst_n,
	input  mode,
	fifo_if.rd ten,
	fifo_if.rd mat,
	fifo_if.wr res,
	ram_if.ram mat_a1
);
	
	integer counter_burst;
	integer counter_output;

	fifo_if #(
		.WIDTH((BATCH_SIZE+RANK_MAX)*DATA_WIDTH)
	) tenmat();

	wire procvalid;
	wire procpause;
	reg  procvalid_1;
	reg  tlast_1, tlast_2;
	wire [DATA_WIDTH-1:0] ten_int [BATCH_SIZE-1:0];
	wire [DATA_WIDTH-1:0] mat_int [RANK_MAX-1:0];

	reg  [44:0] prod_l [BATCH_SIZE-1:0][RANK_MAX-1:0];
	reg  [DATA_WIDTH-1:0] prod_r [BATCH_SIZE-1:0][RANK_MAX-1:0];

	reg [DATA_WIDTH-1:0] res_reg [0:BURST_SIZE-1][BATCH_SIZE-1:0][RANK_MAX-1:0];
	reg [DATA_WIDTH-1:0] res_reg_1 [0:BURST_SIZE-1][BATCH_SIZE-1:0][RANK_MAX-1:0];

	fifo_merge #(
		.WIDTH_1(BATCH_SIZE*DATA_WIDTH), 
		.WIDTH_2(RANK_MAX*DATA_WIDTH)
	) fm (
		.clk(clk),
		.rst_n(rst_n),
		.f1(ten),
		.f2(mat),
		.fo(tenmat)
	);

	always_ff @(posedge clk or negedge rst_n) begin : proc_counter_burst
		if(~rst_n) begin
			counter_burst <= 0;
		end else begin
			if (procvalid_1) begin
				counter_burst <= (counter_burst + 1) % BURST_SIZE;
				if (tlast_1) begin
					counter_burst <= 0;
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
	genvar g;

	for (g = 0; g < RANK_MAX; g = g + 1) begin
		assign mat_int[g] = tenmat.data[(g+1)*DATA_WIDTH-1: g*DATA_WIDTH];
	end
	for (g = 0; g < BATCH_SIZE; g = g + 1) begin
		assign ten_int[g] = tenmat.data[(g+1+RANK_MAX)*DATA_WIDTH-1: (g+RANK_MAX)*DATA_WIDTH];
	end

	always_comb begin : proc_prod_l
		for (int i = 0; i < BATCH_SIZE; i = i + 1) begin
			for (int j = 0; j < RANK_MAX; j = j + 1) begin
				if (mode) begin
					prod_l[i][j] = $signed(mat_int[j][DATA_WIDTH-1:DATA_WIDTH-18]) * $signed(ten_int[i][DATA_WIDTH-1:DATA_WIDTH-27]);
				end
				else begin
					prod_l[i][j] = 0; //TODO
				end // else
			end // for (int j = 0; j < RANK_MAX; j = j + 1)
		end // for (int i = 0; i < BATCH_SIZE; i = i + 1)
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_labels
		if(~rst_n) begin
			procvalid_1 <= 0;
			tlast_1 <= 0;
			tlast_2 <= 0;
			
		end else begin
			procvalid_1 <= procvalid;
			//tlast_1 <= (tenmat.tlast & procvalid);
			tlast_1 <= (tenmat.tlast & procvalid) | procpause;
			tlast_2 <= tlast_1 & ~procpause;
			
		end
	end

	always_ff @(posedge clk) begin : proc_prod_r
		if(~rst_n) begin
			for (int i = 0; i < BATCH_SIZE; i = i + 1) begin
				for (int j = 0; j < RANK_MAX; j = j + 1) begin
					prod_r[i][j] <= 0;
				end // for (int j = 0; j < RANK_MAX; j = j + 1)
			end // for (int i = 0; i < BATCH_SIZE; i = i + 1)
		end else begin
			for (int i = 0; i < BATCH_SIZE; i = i + 1) begin
				for (int j = 0; j < RANK_MAX; j = j + 1) begin
					prod_r[i][j] <= prod_l[i][j][44-WIDTH_INT: 45-DATA_WIDTH-WIDTH_INT];
				end // for (int j = 0; j < RANK_MAX; j = j + 1)
			end // for ( 
		end
	end

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
			if (procvalid_1) begin
				if (tlast_2) begin
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
							res_reg[counter_burst][i][j] <= res_reg[counter_burst][i][j] + prod_r[i][j];
						end // for (int j = 0; j < RANK_MAX; j = j + 1)
					end // for (int i = 0; i < BATCH_SIZE; i = i + 1)
				end
			end // if (procvalid_1)
			else if (tlast_2) begin
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
		end else if (tlast_2) begin
			for (int k = 0; k < BURST_SIZE; k = k + 1) begin
				for (int i = 0; i < BATCH_SIZE; i = i + 1) begin
					for (int j = 0; j < RANK_MAX; j = j + 1) begin
						res_reg_1[k][i][j] <= res_reg[k][i][j];
					end // for (int j = 0; j < RANK_MAX; j = j + 1)
				end // for (int i = 0; i < BATCH_SIZE; i = i + 1)
			end // for (int k = 0; k < BURST_SIZE; k = k + 1)
		end
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_counter_output
		if(~rst_n) begin
			counter_output <= -1;
		end else begin
			if (tlast_2) begin //TODO
				counter_output <= 0;
			end
			else begin
				if (counter_output >= 0 & res.tready) begin
					counter_output <= counter_output + 1;
					if (counter_output == (BATCH_SIZE * BURST_SIZE -1)) begin
						counter_output <= -1;
					end // for (int k = 0; k < BURST_SIZE; k = k + 1)		
				end
			end
		end
	end

	always_comb begin : proc_res
		if (counter_output >= 0) begin
			// for (int t = 0; t < RANK_MAX; t = t + 1) begin
			// 	res.data[(t+1)*DATA_WIDTH-1:t*DATA_WIDTH] = res_reg[counter_output/BATCH_SIZE][counter_output%BATCH_SIZE][t];	
			// end // for (int t = 0; t < RANK_MAX; t = t + 1)
			res.tvalid = 1;
			res.tlast  = (counter_output == (BATCH_SIZE * BURST_SIZE -1));
		end else begin
			// res.data = 0;
			res.tvalid = 0;
			res.tlast  = 0;
		end
	end

	for (g = 0; g < RANK_MAX; g = g + 1) begin
		assign res.data[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH] = (counter_output >= 0) ? res_reg_1[counter_output/BATCH_SIZE][counter_output%BATCH_SIZE][g] : 0;
	end

	
endmodule


module fifo_merge#(
	parameter
	WIDTH_1 = 32,
	WIDTH_2 = 32
)(
	input  clk,
	input  rst_n,
	fifo_if.rd f1,
	fifo_if.rd f2,
	fifo_if.wr fo
);

	reg  [WIDTH_1-1 : 0] f1_reg;
	reg  [WIDTH_2-1 : 0] f2_reg;

	reg   f1_reg_valid;
	reg   f1_reg_last;
	reg   f2_reg_valid;
	reg   f2_reg_last;
	wire  all_reg_valid;


	assign all_reg_valid = f1_reg_valid & f2_reg_valid;

	assign f1.tready = (all_reg_valid & fo.tready) | (~f1_reg_valid);

	always_ff @(posedge clk /*or negedge rst_n*/) begin : proc_f1_reg
		if(~rst_n) begin
			f1_reg <= 0;
			//f1_reg_valid <= 0;
			f1_reg_last <= 0;
		end else begin
			if (f1.tready) begin // fetch new data
				f1_reg <= f1.data;
				//f1_reg_valid <= f1.tvalid;
				f1_reg_last  <= f1.tlast;
			end
		end
	end
	
	assign f2.tready = (all_reg_valid & fo.tready) | (~f2_reg_valid);
	always_ff @(posedge clk /*or negedge rst_n*/) begin : proc_f2_reg
		if(~rst_n) begin
			f2_reg <= 0;
			//f2_reg_valid <= 0;
			f2_reg_last  <= 0;
		end else begin
			if (f2.tready) begin // fetch new data
				f2_reg <= f2.data;
				//f2_reg_valid <= f2.tvalid;
				f2_reg_last  <= f2.tlast;
			end
		end
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_reg_valid
		if(~rst_n) begin
			f1_reg_valid <= 0;
			f2_reg_valid <= 0;
		end else begin
			if (f1.tready) begin
				f1_reg_valid <= f1.tvalid;
			end // if (f1.tready)
			if (f2.tready) begin
				f2_reg_valid <= f2.tvalid;
			end // if (f2.tready)
		end
	end
	
	assign fo.data   = {f1_reg, f2_reg};
	assign fo.tvalid = all_reg_valid;
	assign fo.tlast  = f2_reg_last;

endmodule

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
	//BURST_SIZE    = 4,
	//MAT_A1_SCALE  = 8,
	RANK_MAX      = 32
)(	
	input  clk,
	input  rst_n,
	input  mode,
	input  [4:0] burst_size,
	fifo_if.slave  ten,
	fifo_if.slave  mat,
	fifo_if.master res,
	ram_if.slave   mat_a1
);
	
	genvar g, h;
	
	reg signed [3:0] counter_burst_a;
	reg signed [3:0] counter_burst_ai;
	reg signed [3:0] counter_burst_b;
	reg signed [3:0] counter_burst_bi;
	//reg signed [15:0] counter_a1_scale;
	reg signed [15:0] counter_output_a;
	reg signed [3:0] counter_output_b;

	reg mat_a1_en_r;

	fifo_if #(
		.WIDTH((BATCH_SIZE+RANK_MAX)*DATA_WIDTH)
	) tenmat();
	// fifo_if #(
	// 	.WIDTH(RANK_MAX*DATA_WIDTH)
	// ) res_prt();

	wire procvalid;
	reg  procpause;
	wire procvalid_r;
	wire proclast_r;
	//reg  procvalid_1;
	reg  tlast_2;
	wire [DATA_WIDTH-1:0] ten_int [BATCH_SIZE-1:0];
	wire [DATA_WIDTH-1:0] mat_int [RANK_MAX-1:0];

	wire [DATA_WIDTH-1:0] mat_a1_wr_r [RANK_MAX-1:0];
	wire [17:0] mat_a1_i [BATCH_SIZE-1:0][RANK_MAX-1:0];

	//reg  [44:0] prod_l [BATCH_SIZE-1:0][RANK_MAX-1:0];
	reg  [DATA_WIDTH-1:0] prod_r [BATCH_SIZE-1:0][RANK_MAX-1:0];

	//reg  [DATA_WIDTH-1:0] res_reg [0:BURST_SIZE-1][BATCH_SIZE-1:0][RANK_MAX-1:0];
	//reg  [DATA_WIDTH-1:0] res_reg_1 [0:BURST_SIZE-1][BATCH_SIZE-1:0][RANK_MAX-1:0];

	wire [DATA_WIDTH-1:0] res_ping [BATCH_SIZE-1:0][RANK_MAX-1:0];
	wire [DATA_WIDTH-1:0] res_pong [BATCH_SIZE-1:0][RANK_MAX-1:0];
	reg  [DATA_WIDTH-1:0] res_sum  [BATCH_SIZE-1:0][RANK_MAX-1:0];
	reg  res_ud [RANK_MAX-1:0];

	reg  [RANK_MAX*DATA_WIDTH-1:0] res_a1_sum;
	wire [RANK_MAX*DATA_WIDTH-1:0] res_a1_sum_1;
	reg  res_a1_valid;
	reg  ping, ping_r;
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



	always_comb begin: counter_burst_i
		if (mode) begin
			counter_burst_bi = 0; 
			if (procvalid_r & ~procpause) begin
				counter_burst_ai = counter_burst_a + 1; 
				if ((proclast_r) | (counter_burst_a >= burst_size - 1))begin
					counter_burst_ai = 0;
				end
			end else begin
				counter_burst_ai = counter_burst_a;
			end
		end else begin
			counter_burst_ai = 0; 
			if (procvalid_r & ~procpause) begin
				counter_burst_bi = counter_burst_b + 1; 
				if ((proclast_r) | (counter_burst_b >= burst_size - 1))begin
					counter_burst_bi = 0;
				end
			end else begin
				counter_burst_bi = counter_burst_b;
			end
		end
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_counter_burst
		if(~rst_n) begin
			counter_burst_a <= 0;
			counter_burst_b <= 0;
		end else begin
			counter_burst_a <= counter_burst_ai;
			counter_burst_b <= counter_burst_bi;
		end
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_mat_a1_en_r
		if(~rst_n) begin
			mat_a1_en_r <= 0;
		end else begin
			mat_a1_en_r <= mat_a1.en;
		end
	end

	c_shift_ram_0 shift_valid(
		.D   (procvalid), 
		.CLK (clk), 
		.CE  (~procpause), 
		.Q   (procvalid_r)
	);

	c_shift_ram_0 shift_last(
		.D   (tenmat.tlast), 
		.CLK (clk), 
		.CE  (~procpause), 
		.Q   (proclast_r)
	);

	assign tenmat.tready = (~procpause) & ~(~mode & mat_a1_en_r); 
	assign procvalid = tenmat.tvalid & tenmat.tready;
	

	
	always_ff @(posedge clk or negedge rst_n) begin : proc_labels
		if(~rst_n) begin
			//procvalid_1 <= 0;
			//tlast_1 <= 0;
			tlast_2 <= 1;
		end else begin
			//procvalid_1 <= procvalid;
			//tlast_1 <= (tenmat.tlast & procvalid) | (tlast_1 & procpause);// | procpause;
			//tlast_2 <= tlast_1 & ~procpause;	
			if (proclast_r & procvalid_r) begin
				tlast_2 <= 1;
			end else if (mode & (counter_burst_a >= burst_size - 1)) begin
				tlast_2 <= 0;
			end else if (~mode & procvalid_r) begin
				tlast_2 <= 0;
			end
		end
	end

	
	for (g = 0; g < BATCH_SIZE; g = g + 1) begin
		assign ten_int[g] = tenmat.data[(g+1+RANK_MAX)*DATA_WIDTH-1: (g+RANK_MAX)*DATA_WIDTH];
	end
	for (h = 0; h < RANK_MAX; h = h + 1) begin
		assign mat_int[h] = tenmat.data[(h+1)*DATA_WIDTH-1: h*DATA_WIDTH];
	end
	for (h = 0; h < RANK_MAX; h = h + 1) begin
		assign mat_a1_wr_r[h] = mat_a1.dataw[(h+1)*DATA_WIDTH-1:h*DATA_WIDTH];
		assign mat_a1.datar[(h+1)*DATA_WIDTH-1:h*DATA_WIDTH] = {mat_a1_i[mat_a1.address % BATCH_SIZE][h], {(DATA_WIDTH-18){1'h0}}};
	end

	for (g = 0; g < BATCH_SIZE; g = g + 1) begin
		for (h = 0; h < RANK_MAX; h = h + 1) begin 
			dist_mem_gen_w18 dist_mem_mat_a1(
				.a(mat_a1.en ? (mat_a1.address / BATCH_SIZE) : counter_burst_bi),
				.d({mat_a1_wr_r[h][DATA_WIDTH-1:DATA_WIDTH-17], 1'h1}),
				.clk(mat_a1.clk),
				.we((mat_a1.address % BATCH_SIZE == g) & mat_a1.wr & mat_a1.en),
				.qspo(mat_a1_i[g][h])
			);
	
			// xbip_multadd_0 mult_inst(
			// 	//.CLK(clk), 
			// 	.A({ten_int[g][DATA_WIDTH-1:DATA_WIDTH-26], 1'h1}), 
			// 	.B(mode ? {mat_int[h][DATA_WIDTH-1:DATA_WIDTH-17], 1'h1} : mat_a1_i[g][h]),
			// 	.C(tlast_2 ? 0 : {(ping ? res_ping[g][h] : res_pong[g][h]), 11'h0}),
			// 	//.SCLR(~rst_n),
			// 	.SUBTRACT(0),
			// 	.P(prod_r[g][h]),
			// 	.PCOUT()
			// );

			multiplier mult_inst(
				.clk (clk),
				.ce  (~procpause),
				.add_n(tlast_2),
				.A    ({ten_int[g][DATA_WIDTH-1:DATA_WIDTH-26], 1'h1}),
				.B    (mode ? {mat_int[h][DATA_WIDTH-1:DATA_WIDTH-17], 1'h1} : mat_a1_i[g][h]),
				.C    (ping ? res_ping[g][h] : res_pong[g][h]),
				.P    (prod_r[g][h])
			);
	
			dist_mem_gen_w32 dist_mem_res_ping(
				.a(ping ? counter_burst_a : counter_output_b), 
				.d(ping ? prod_r[g][h] : res_sum[g][h]),
				.clk(clk), 
				.we(ping ? procvalid_r & ~procpause: res_ud[h]), 
				.spo(res_ping[g][h])
			);

			dist_mem_gen_w32 dist_mem_res_pong(
				.a(~ping ? counter_burst_a : counter_output_b), 
				.d(~ping ? prod_r[g][h] : res_sum[g][h]), 
				.clk(clk), 
				.we(~ping ? procvalid_r & ~procpause: res_ud[h]), 
				.spo(res_pong[g][h])
			);

			always_comb begin : proc_res_sum
				if (mode) begin
					if (h < RANK_MAX - 1) begin
						if (ping) begin
							res_sum[g][h] = res_pong[g][h+1];
						end else begin
							res_sum[g][h] = res_ping[g][h+1];
						end 
					end else begin
						res_sum[g][h] = 0;
					end
				
				end else begin
					if (g < BATCH_SIZE / 2) begin
						if (ping) begin
							res_sum[g][h] = res_pong[2*g][h] + res_pong[2*g+1][h];
						end else begin
							res_sum[g][h] = res_ping[2*g][h] + res_ping[2*g+1][h];
						end
					end else begin
						res_sum[g][h] = 0;
					end
				end
			end

		end // for (int h = 0; h < RANK_MAX; h = h + 1)
	end // for (int g = 0; g < BATCH_SIZE; g = g + 1)

	for (h = 0; h < RANK_MAX; h = h + 1) begin 
		always_comb begin
			if (mode) begin
				res_ud[h] = (counter_output_a >= 0) & res.tready;
			end else begin
				res_ud[h] = (counter_output_a >= 0) & (counter_output_a < 4);
			end
		end
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_counter_output_a
		if(~rst_n) begin
			counter_output_a <= -1;
			procpause <= 0;
			ping <= 1;
		end else begin
			//if (tlast_1 & ~procpause) begin 

			if (counter_output_a < 0) begin
				if (procvalid_r & proclast_r) begin
					counter_output_a <= 0;
					ping <= ~ping;
				end
			end else begin // (counter_output_a >= 0)
				if (procvalid_r & proclast_r) begin
					procpause <= 1;
				end
				if (mode) begin
					if ((counter_output_b >= burst_size - 1) & res.tready) begin
						counter_output_a <= counter_output_a + 1;
						if (counter_output_a == RANK_MAX -1) begin
							if (procpause) begin
								procpause <= 0;
								ping <= ~ping;
								counter_output_a <= 0;
							end else begin
								counter_output_a <= -1;
							end
						end
					end
				end else begin
					if (counter_output_a < 4) begin
						counter_output_a <= counter_output_a + 1;
					end	else if (res.tready) begin // (counter_output_a == 4)
						if (procpause) begin
							procpause <= 0;
							ping <= ~ping;
							counter_output_a <= 0;
						end else begin
							counter_output_a <= -1;
						end
					end
				end
			end
		end
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_counter_output_b
		if(~rst_n) begin
			counter_output_b <= 0;
		end
		else if (mode) begin
			if ((counter_output_a >= 0) & res.tready) begin
				counter_output_b <= counter_output_b + 1;
				if (counter_output_b >= burst_size - 1) begin
					counter_output_b <= 0;
				end
			end
		end
		else begin
			counter_output_b <= 0;
		end
	end


	always_comb begin : proc_res_prt
		if (mode) begin 
			if (counter_output_a >= 0) begin
				res.tvalid = 1;
				res.tlast  = (counter_output_b >= burst_size - 1);
			end else begin
				// res.data = 0;
				res.tvalid = 0;
				res.tlast  = 0;
			end
		end else begin
			if (counter_output_a == 4) begin
				res.tvalid = 1;
				res.tlast  = 1;
			end else begin
				res.tvalid = 0;
				res.tlast  = 0;
			end
		end
	end

	for (g = 0; g < BATCH_SIZE; g = g + 1) begin
		//assign res_prt.data[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH] = (counter_output >= 0) ? res_reg_1[counter_output/BATCH_SIZE][counter_output%BATCH_SIZE][g] : 0;
		always_comb begin
			if (counter_output_a < 0) begin
				res.data[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH] = 0;
			end else if (mode) begin
				if (ping) begin
					res.data[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH] = res_pong[g][0];
				end else begin
					res.data[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH] = res_ping[g][0];
				end
			end else begin
				res.data[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH] = res_sum[0][g];
				// if (ping) begin
				// 	res.data[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH] = res_pong[0][g] + res_pong[1][g];
				// end else begin
				// 	res.data[(g+1)*DATA_WIDTH-1:g*DATA_WIDTH] = res_ping[0][g] + res_ping[1][g];
				// end
			end // end else
		end
	end


	
endmodule



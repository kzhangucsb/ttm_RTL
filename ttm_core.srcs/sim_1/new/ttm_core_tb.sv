`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2018 11:17:34 AM
// Design Name: 
// Module Name: ttm_core_tb
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


module ttm_core_tb #(
	parameter
	DATA_WIDTH    = 32,
	WIDTH_INT     = 2,
	BATCH_SIZE    = 32,
	BURST_SIZE    = 4, 
	RANK_MAX      = 32
)();

	reg clk, rst_n;
	reg mode;
	int tencnt, matcnt;

	fifo_if #(
		.WIDTH(BATCH_SIZE*DATA_WIDTH)
	) tenfifoif();

	fifo_if #(
		.WIDTH(RANK_MAX*DATA_WIDTH)
	) matfifoif();

	fifo_if #(
		.WIDTH(RANK_MAX*DATA_WIDTH)
	) resfifoif();

	ram_if #(
		.DWIDTH(RANK_MAX*DATA_WIDTH)
	) coefframif();

	ttm_core #(
		.DATA_WIDTH (DATA_WIDTH),
		.WIDTH_INT  (WIDTH_INT ),		
		.BATCH_SIZE (BATCH_SIZE),
		.BURST_SIZE (BURST_SIZE),		
		.RANK_MAX   (RANK_MAX  )	
	) ttm_core_inst (	
		.clk(clk),
		.rst_n(rst_n),
		.mode(mode),
		.ten(tenfifoif),
		.mat(matfifoif),
		.res(resfifoif),
		.mat_a1(coefframif)
	);

	initial begin
		clk = 0;
		rst_n = 0;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		#5 clk = ~clk;
		rst_n = 1;

		while(1) begin
			#5 clk = ~clk;
		end // while(1)
	end // initial

	initial begin
		tenfifoif.tvalid = 0;
		# 30 tenfifoif.tvalid = 1;
		while(1)
			#400 tenfifoif.tvalid = ~tenfifoif.tvalid;
	end

	initial begin
		resfifoif.tready = 0;
		# 30 resfifoif.tready = 1;
		while(1)
			#600 resfifoif.tready = ~resfifoif.tready;
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_ten
		if(~rst_n) begin
			tenfifoif.data <= 1024'h00000000000100000002000000030000000400000005000000060000000700000008000000090000000a0000000b0000000c0000000d0000000e0000000f000000100000001100000012000000130000001400000015000000160000001700000018000000190000001a0000001b0000001c0000001d0000001e0000001f0000;
			//tenfifoif.tvalid <= 0;
			tencnt <= 0;
		end else begin
			//tenfifoif.tvalid <= 1;
			if (tenfifoif.tvalid & tenfifoif.tready) begin
				tenfifoif.data <= tenfifoif.data + 1024'h0001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000;
				tencnt <= tencnt + 1;
			end
		end
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_mat
		if(~rst_n) begin
			//matfifoif.data <= 1024'h00000000000100000002000000030000000400000005000000060000000700000008000000090000000a0000000b0000000c0000000d0000000e0000000f000000100000001100000012000000130000001400000015000000160000001700000018000000190000001a0000001b0000001c0000001d0000001e0000001f0000;
			matfifoif.data <= 1024'h4000000040000000400000004000000040000000400000004000000040000000400000004000000040000000400000004000000040000000400000004000000040000000400000004000000040000000400000004000000040000000400000004000000040000000400000004000000040000000400000004000000040000000;
			matfifoif.tvalid <= 0;
			matcnt <= 0;
		end else begin
			matfifoif.tvalid <= 1;
			if (matfifoif.tvalid & matfifoif.tready) begin
				matfifoif.data <= matfifoif.data;// + 1024'h0001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000000100000001000000010000;
				matcnt <= matcnt + 1;
			end
		end
	end

	assign tenfifoif.tlast = ((tencnt+1)%32 == 0);
	assign matfifoif.tlast = ((matcnt+1)%4 == 0);
	//assign resfifoif.tready = 1;
	assign mode = 1;
endmodule

`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/13/2018 04:49:07 PM
// Design Name: 
// Module Name: ttm_core_wrapper
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




module ttm_core_wrapper #(
	parameter
	DATA_WIDTH    = 32,
	WIDTH_INT     = 2,
	BATCH_SIZE    = 32,
	//BURST_SIZE    = 4, 
	RANK_MAX      = 32
)(	
	input  wire clk,
	input  wire rst_n,
	input  wire [BATCH_SIZE*DATA_WIDTH-1:0] tendata,
	input  wire tenvalid,
	input  wire tenlast,
	output wire tenready,
	input  wire [RANK_MAX*DATA_WIDTH-1:0] matdata,
	input  wire matvalid,
	input  wire matlast,
	output wire matready,
	output wire [RANK_MAX*DATA_WIDTH-1:0] resdata,
	output wire resvalid,
	output wire reslast,
	input  wire resready,
	input  wire coeffclk,
	input  wire coeffrst,
	input  wire coeffwr,
	input  wire coeffen,
	input  wire [RANK_MAX*DATA_WIDTH-1:0] coeffdataw,
	output wire [RANK_MAX*DATA_WIDTH-1:0] coeffdatar,
	input  wire [8:0]                     coeffadd,
	input  wire [4:0]                     burst_size,
	input  wire mode
);

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
		.DWIDTH(RANK_MAX*DATA_WIDTH),
		.AWIDTH(9)
	) coefframif();

	assign tenfifoif.data   = tendata;
	assign tenfifoif.tvalid = tenvalid;
	assign tenfifoif.tlast  = tenlast;
	assign tenready         = tenfifoif.tready;
	assign matfifoif.data   = matdata;
	assign matfifoif.tvalid = matvalid;
	assign matfifoif.tlast  = matlast;
	assign matready         = matfifoif.tready;
	assign resdata          = resfifoif.data;
	assign resvalid         = resfifoif.tvalid;
	assign reslast          = resfifoif.tlast;
	assign resfifoif.tready = resready;

	assign coefframif.clk   = coeffclk;
	assign coefframif.rst   = coeffrst;
	assign coefframif.dataw = coeffdataw;
	assign coefframif.address = coeffadd;
	assign coefframif.wr    = coeffwr;
	assign coefframif.en    = coeffen;
	assign coeffdatar       = coefframif.datar;
	

	
	ttm_core #(
		.DATA_WIDTH (DATA_WIDTH),
		.WIDTH_INT  (WIDTH_INT ),		
		.BATCH_SIZE (BATCH_SIZE),
		//.BURST_SIZE (BURST_SIZE),		
		.RANK_MAX   (RANK_MAX  )	
	) ttm_core_inst (	
		.clk(clk),
		.rst_n(rst_n),
		.mode(mode),
		.burst_size(burst_size),
		.ten(tenfifoif),
		.mat(matfifoif),
		.res(resfifoif),
		.mat_a1(coefframif)
	);



endmodule

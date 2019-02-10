`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2019 11:59:37 AM
// Design Name: 
// Module Name: multiplier
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


module multiplier(
	input  clk,
	input  ce,
	input  add_n,
	input  [26:0] A,
	input  [17:0] B,
	input  [31:0] C,
	// input  invalid,
	// input  inlast,
	output [31:0] P
	// output outvalid,
	// output outlast
);

wire [4:0] nc1;
wire [10:0] nc2;

xbip_dsp48_macro_0 dsp_inst(
	.CLK (clk), 
	.CE  (ce), 
	.SEL (add_n), 
	.A   (A), 
	.B   (B), 
	.C   ({{5{C[31]}}, C, 11'h0}), 
	.P   ({nc1, P, nc2})
);

// c_shift_ram_0 shift_valid(
// 	.D   (invalid), 
// 	.CLK (clk), 
// 	.CE  (ce), 
// 	.Q   (outvalid)
// );

// c_shift_ram_0 shift_last(
// 	.D   (inlast), 
// 	.CLK (clk), 
// 	.CE  (ce), 
// 	.Q   (outlast)
// );

endmodule

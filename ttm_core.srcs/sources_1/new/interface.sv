`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2018 01:59:16 PM
// Design Name: 
// Module Name: interface
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
interface fifo_if #(parameter WIDTH = 32);
	logic [WIDTH-1 : 0] data;
	logic tvalid;
	logic tready;
	logic tlast;

	modport rd (input  data, input  tvalid, output tready, input  tlast);
	modport wr (output data, output tvalid, input  tready, output tlast);

endinterface

interface ram_if #(parameter DWIDTH=32, AWIDTH=32);
	logic [DWIDTH-1 : 0] dataw;
	logic [DWIDTH-1 : 0] datar;
	logic [AWIDTH-1 : 0] address;
	logic wr;
	logic rd;
	logic datarvalid;

	modport ram (input  dataw, output datar, input  address, input  wr, input  rd, output datarvalid);
	modport sys (output dataw, input  datar, output address, output wr, output rd, input  datarvalid);
endinterface : ram_if
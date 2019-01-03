// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Jan  2 17:32:00 2019
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/zkq/Xilinx/ttm_core/ttm_core.srcs/sources_1/ip/dist_mem_gen_w32/dist_mem_gen_w32_stub.v
// Design      : dist_mem_gen_w32
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *)
module dist_mem_gen_w32(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[3:0],d[31:0],clk,we,spo[31:0]" */;
  input [3:0]a;
  input [31:0]d;
  input clk;
  input we;
  output [31:0]spo;
endmodule

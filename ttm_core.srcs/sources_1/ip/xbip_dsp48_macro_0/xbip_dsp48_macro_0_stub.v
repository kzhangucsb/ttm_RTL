// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Feb 20 14:46:56 2019
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/zkq/Xilinx/ttm_core/ttm_core.srcs/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_stub.v
// Design      : xbip_dsp48_macro_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_dsp48_macro_v3_0_16,Vivado 2018.3" *)
module xbip_dsp48_macro_0(CLK, CE, SEL, A, B, C, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,SEL[0:0],A[26:0],B[17:0],C[47:0],P[47:0]" */;
  input CLK;
  input CE;
  input [0:0]SEL;
  input [26:0]A;
  input [17:0]B;
  input [47:0]C;
  output [47:0]P;
endmodule

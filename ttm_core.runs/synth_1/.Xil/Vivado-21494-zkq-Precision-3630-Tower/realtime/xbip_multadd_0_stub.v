// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_multadd_v3_0_13,Vivado 2018.3" *)
module xbip_multadd_0(A, B, C, SUBTRACT, P, PCOUT);
  input [26:0]A;
  input [17:0]B;
  input [42:0]C;
  input SUBTRACT;
  output [42:11]P;
  output [47:0]PCOUT;
endmodule

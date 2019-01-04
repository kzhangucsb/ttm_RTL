// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *)
module dist_mem_gen_w18(a, d, clk, we, spo);
  input [3:0]a;
  input [17:0]d;
  input clk;
  input we;
  output [17:0]spo;
endmodule

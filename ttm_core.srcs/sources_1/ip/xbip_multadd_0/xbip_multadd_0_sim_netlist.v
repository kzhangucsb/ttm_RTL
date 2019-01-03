// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Dec 25 15:34:12 2018
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top xbip_multadd_0 -prefix
//               xbip_multadd_0_ xbip_multadd_0_sim_netlist.v
// Design      : xbip_multadd_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_multadd_0,xbip_multadd_v3_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_13,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module xbip_multadd_0
   (A,
    B,
    C,
    SUBTRACT,
    P,
    PCOUT);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [42:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME subtract_intf, LAYERED_METADATA undef" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [42:11]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;

  wire [26:0]A;
  wire [17:0]B;
  wire [42:0]C;
  wire [42:11]P;
  wire [47:0]PCOUT;
  wire SUBTRACT;

  (* C_AB_LATENCY = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "27" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "0" *) 
  (* C_C_TYPE = "0" *) 
  (* C_C_WIDTH = "43" *) 
  (* C_OUT_HIGH = "42" *) 
  (* C_OUT_LOW = "11" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_multadd_0_xbip_multadd_v3_0_13 U0
       (.A(A),
        .B(B),
        .C(C),
        .CE(1'b0),
        .CLK(1'b0),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(1'b0),
        .SUBTRACT(SUBTRACT));
endmodule

(* C_AB_LATENCY = "0" *) (* C_A_TYPE = "0" *) (* C_A_WIDTH = "27" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "18" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_C_LATENCY = "0" *) (* C_C_TYPE = "0" *) (* C_C_WIDTH = "43" *) 
(* C_OUT_HIGH = "42" *) (* C_OUT_LOW = "11" *) (* C_TEST_CORE = "0" *) 
(* C_USE_PCIN = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtexuplus" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module xbip_multadd_0_xbip_multadd_v3_0_13
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    PCIN,
    SUBTRACT,
    P,
    PCOUT);
  input CLK;
  input CE;
  input SCLR;
  input [26:0]A;
  input [17:0]B;
  input [42:0]C;
  input [47:0]PCIN;
  input SUBTRACT;
  output [42:11]P;
  output [47:0]PCOUT;

  wire [26:0]A;
  wire [17:0]B;
  wire [42:0]C;
  wire [42:11]P;
  wire [47:0]PCOUT;
  wire SUBTRACT;

  (* C_AB_LATENCY = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "27" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "0" *) 
  (* C_C_TYPE = "0" *) 
  (* C_C_WIDTH = "43" *) 
  (* C_OUT_HIGH = "42" *) 
  (* C_OUT_LOW = "11" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_multadd_0_xbip_multadd_v3_0_13_viv i_synth
       (.A(A),
        .B(B),
        .C(C),
        .CE(1'b0),
        .CLK(1'b0),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(1'b0),
        .SUBTRACT(SUBTRACT));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dPt5E4AieGCEt/K66u1/rHhPwZDIYuKJwNBuR3AyvXP3DLERa8PZqI33iFD5YJ9K/pk84GsX6gXR
MC76HtZRQg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ipv6ffnwFF7w6Ljnhr7VoRPZgB1xYGVDBO+TeyA+ahu9o3WI4B6MbZL7+nv2IMUuMck+p/96Vm2S
2AlMDXC4nTIaPKSBgF9dXv+35lhtJCWo4bWiW8wYuCs9hpcTZ5QrDse1NwpDrsU1BdGGANPzkO/m
NZcFX3LChIZ7REQB07E=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UZUgdCuw/Ac1ONRQBUfK5aNtN1l1cOReTrgn2gb4ILBz0ZwK5khLM9TWNLMXkoMo7N7PTJ8qzO1k
t50c0i5imhdgTF1vLgLjhrJyhVV36LJbQMbHnsVPNdfrxDUcaUyM4wnvK6amvgGTvU3jGiq3Vw1b
ftPQEstmyIqMvIoyTDwpS5g78tGtVvAxw/I1Du998pj+WRr6NPmYQyZPIzjYyMnEtQCmZd845S+l
jRux0/v8Nl7jeiQFBa5x1XY1pPSUVSaOqNHH5i2VyB4fQGhununoLlUTP8GCP6eExGXfePBOQxsN
5yUsIKgx40ND3sb317vZbUn/6KPB9Jp9AmevmQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
itAx4PFdHKd1pmYBAUAeYLzpD2P3lq3ovIMewnbIZEMg4IhZggNF6oYRG0yDOH3jUWBXfp0UCUlQ
TjLuruS+58ta9malWIYG1Vp2JR7IDWwT+zqneaXOYhFidduDVHGoVSS0s5LW6JITUQB1VxOfbdzG
2Nak8LjI/GUlGwcxphtXykrL89CimAoCE6rE72zVZ0ljifKC+6j9c2d2GMFMUUxIkCion2/IMeT+
LYa6L9Ccs4b2iLDyFdRni+iaXjKg4y7dD7JJ2aKy65TA1KF06xjDS2FxRC20TC1c9JRa9bgaEHWM
oRHZBvkX8S1Wc0DMZS99iNKpcOGPgtcJRLeMTg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hMRQn17JrfkggLuUDBtw0SSucCOYDsiTT49JuhzF7AXT7ldqRnzU79S6QcX2P5xPeSQD1OLrxCMl
P4qRH5kCvfUjpu3u4hQjUZWcXU3Uc8dGpFXYujAE4p5/nCUgMFdnPeqqYENSvOg+CFHRWsucjcRH
dwVo6kCKsn1+vVadQbUqYothaDoMdqKpIfERwVTbk3zbmdnBuq1keVYYsTRE7FewU5+yj0tSQoTG
hXBr3oTfE+RB1x1X5A59k+Lil/UU0AWYuGRJQD6qgv+JatF4ch12k+jUCQWDuKE6qAv2P7aHp5Ai
evj0iRNJXk7I28xo7R+4IIoLSrtcMXVN2rrkdQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oeVfoBxMjOQlLHahMvbBt9pCmBLpFy87hhFGDJKOlXQpdYbWDCKubxm3l5LJe578FTxJNOLt+DM/
Twrcb4yTwW5J1Ps58huSXu5X2oHCMw5H9jY/GNpPPjViet4YtuG23G+dS3SoW7WoOCiC5XH7F5H+
T8m6V5PyUqGIFLFRr0A=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JygHOAa03zUR1c70sqKmG58tH0oRsKYKnGmP6aNoXz1lyVhXSQACXpOn1c55aV5MmzZUVQBCWZyn
3HUdFXCgloQcywkYOpiV6acnlDrNNZjnJGQkLOmPm4ZmNPxuVGPIZZQtHoT5QUkjbdwDBDPy4jiE
CskQPt97etE7I4zl5d/nG7dX1I4SxKvdHZZChBS/+l85X40Jk3TmO6YAkGszEdNetanqnZZjv209
n8+16TD3e6CyjDT4Oe/Fd9L7vnNhJXfNzkL2tyAsZMCX4E6PjOSMH8NwNuLAasN03HaDJoiPsrvt
3MctCKl3EYFQBnT3ZCKP2+uLu/zRfBsJzwLu8Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kEuATmHErQMfnfbQEmWGdSay/UaFecEWkeZ09b4U6HtB9ak17F/fA5np08+dADSQRoCo5rKVmUQ8
DX8nIUutGl5o95ms31BTu2Ab8ea59d3x3hkur/EN57B/8iJQ4ib7uZgAf4MaJSwx5gfqxSMecb6z
fxxXYlxDgW+bKgWzokMqN52qizSFY8G/MNx0tYcyvAH5D9LHIsrTGeYvf40wHqMp1SsXWNE85qDC
F7nBH2kznOIKE91CyyNoZfwmdcWvbb8KDfxYnAn4JTImjbPmvoWTEJ+TG1t5yedrzguuyJerve3T
LbqxL9PdiVyBt9B9zb1/FZYAUkmhZGrPo5+pjA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PsjfSOBslFKQ/Y2U1CIcqEgjggirmq6mQ3z+WvbaWeeLdPBt5dCC188RLOC4TBsBVfsNFpwWWgPP
BLoJd4WIV2pgz1l/MzaIhgJLQn77hpOuezZ7kCFrQK9lwoV824xcA4SjT0B5+gSZzU4NFHlmRLdD
PAEU3xH65+019DsWLFi5UzBFH/BPmcr7OEBJZJgzOQ14WW+QlZibw5SZVrtXYAAI3dTG1VlN5bCd
ZtJ7uI/7sYmLxGvh2PVbEhV52dkthLHZAAlDiksaJM3hnGGd4/O8zXkD0peT+odI051DWJmd/P6O
Tdv7dDfrrS2VDnnkW4y/XfatyEoRrblHhE7MqA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10016)
`pragma protect data_block
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
qJ4ysW57sQEVxfJychq0Vr8ZipG0c27UNE1PO1E=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Dec 25 15:34:12 2018
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xbip_multadd_0_sim_netlist.v
// Design      : xbip_multadd_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_multadd_0,xbip_multadd_v3_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_13,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_13 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_13
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_13_viv i_synth
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

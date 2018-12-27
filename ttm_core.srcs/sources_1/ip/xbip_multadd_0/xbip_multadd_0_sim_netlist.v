// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Dec 25 15:34:13 2018
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/zkq/Xilinx/ttm_core/ttm_core.srcs/sources_1/ip/xbip_multadd_0/xbip_multadd_0_sim_netlist.v
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
(* ORIG_REF_NAME = "xbip_multadd_v3_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
pVu/ppo9koLU50rs1S8hbZKjkF9LijFWMn3AvNZmTm5p7RxfIWIGphcfNdVJQ4VbPwV3melhivvB
Cn941XDDv9vrPUg7sTXNJ/dEyRpf/47WQM1CpPwGc8N8K1NbgHbR+9F1S5ols9OfrLrfeWaPmguh
7SiyizRyquNqB/sUPkJlXwF3TCTUNR4u91YBMGpPcsqbaFuqE4cF2QbbQ1YxYsSq6P7X6jkuIFAs
wgS44bvO1VpneFnxJ0v0O8BhN+MZffjNsXD2c3MU0PyDm13N7NK7PYY7gdKxlZaqAPOBd3rs1ilq
Yda2gAwL6LdkmLsmlC7PGpHRSyuS6yvWShcbzA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LqUprH9cqxAgDB+TuMdz3x/BLrumuyjBdjNhNWzy40Wi1sDhYiDQIOwrcCv9Mp2xfBgIPHBsgrSS
mfLxaEb0MFsw9//GuweEoRc7ka6X8ClZmEa1fvKmwGBHbpzJNzJ8sDiDsFA2O6KxydvJEstmawMZ
6l+9qA5uKOZgrLuYPqPXIHmlAoFWaShI/3X/VRRK2rtdBqmTu5iEHX+PmyoLVHGU1zQiP6VpbfGD
afTcLzAri70+hLi4tiroUlNTXqT0qThxd2hTxlpEZQLK98rUcC6wByxREr+u7RaTWfjGylxcDM6A
0iMPgHhlGUan0FnFODlfbnNvHsntjn/MKzDSBw==

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

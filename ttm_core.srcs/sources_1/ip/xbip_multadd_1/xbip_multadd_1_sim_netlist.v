// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Feb  9 01:43:15 2019
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/zkq/Xilinx/ttm_core/ttm_core.srcs/sources_1/ip/xbip_multadd_1/xbip_multadd_1_sim_netlist.v
// Design      : xbip_multadd_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_multadd_1,xbip_multadd_v3_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_13,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module xbip_multadd_1
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    SUBTRACT,
    P,
    PCOUT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF pcout_intf:p_intf:subtract_intf:pcin_intf:c_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME subtract_intf, LAYERED_METADATA undef" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;

  wire [26:0]A;
  wire [17:0]B;
  wire [47:0]C;
  wire CE;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "27" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "0" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_OUT_HIGH = "47" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_multadd_1_xbip_multadd_v3_0_13 U0
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule

(* C_AB_LATENCY = "-1" *) (* C_A_TYPE = "0" *) (* C_A_WIDTH = "27" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "18" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_C_LATENCY = "-1" *) (* C_C_TYPE = "0" *) (* C_C_WIDTH = "48" *) 
(* C_OUT_HIGH = "47" *) (* C_OUT_LOW = "0" *) (* C_TEST_CORE = "0" *) 
(* C_USE_PCIN = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtexuplus" *) 
(* ORIG_REF_NAME = "xbip_multadd_v3_0_13" *) (* downgradeipidentifiedwarnings = "yes" *) 
module xbip_multadd_1_xbip_multadd_v3_0_13
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
  input [47:0]C;
  input [47:0]PCIN;
  input SUBTRACT;
  output [47:0]P;
  output [47:0]PCOUT;

  wire [26:0]A;
  wire [17:0]B;
  wire [47:0]C;
  wire CE;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "27" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "0" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_OUT_HIGH = "47" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_multadd_1_xbip_multadd_v3_0_13_viv i_synth
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
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
QR9SqQmIqVhC7CwDyuvcxEQihKYpqLYSPmlXvvMjTwEfJXrx3gnl+eWv1ama1I5pBa6iBDpaGW7K
ElFxO6o8S6+wpVeRi0DhLtC2NM+cLsVE/enZvURKnAkJPNHMQr3COGEwMsplfO1ozbwi08uckphv
59vOI/26Rd07D3sAeA2eMhQWN5zdZ8sawuuc1wAEPSZfAkFMq8qHOb16FlhGVmk74PNVtyXS0rnl
rheylxJU8N+d4d7fcxhCMTm52/DHPK3RPiXeIq5niVLRHUdD4CMzX/q8K1vLibJeO+TJWopmAtr+
qNQHdNISbVxaOKi4pO0MwZAqjtm3OkgB8xMBQw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WS6hlientBcXwKTz0b41rolsnUAQVFj20P721N8fnzvc2EtgjO+phY3efPI47MZwTPc2RFyAlbva
y4Gk7lhMaSF7nOrRM/H67dznjvghfxX9/IqnMmS6qVTdfiA26J4OR+mRghk/wbJgEPGadjMI89DX
LB+MRzgVLT3oKU3T8k4aae9fF2nr1CzaNJW9UUTpsmlkGoqgchwTyDIjgFM9L0/bOFsUUmqf/9p/
ZkCzKKNiOiDS9z2pDBagzoRBtjSTwnypAmM/WFEikwqdNYZ0B64UPfDVFfBq0oPRDG5wTqZ2Xgxo
fgumlk4fmkZOP2ij3csWAnd8LSivqufcNk77gg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9888)
`pragma protect data_block
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
HgHFjii2QdjCO76vnaiPAvaf3i6pO4QNEJSm
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

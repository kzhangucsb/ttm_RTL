// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Dec 25 14:54:06 2018
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [43:12]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;

  wire [26:0]A;
  wire [17:0]B;
  wire [42:0]C;
  wire [43:12]P;
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
  (* C_OUT_HIGH = "43" *) 
  (* C_OUT_LOW = "12" *) 
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
(* C_OUT_HIGH = "43" *) (* C_OUT_LOW = "12" *) (* C_TEST_CORE = "0" *) 
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
  output [43:12]P;
  output [47:0]PCOUT;

  wire [26:0]A;
  wire [17:0]B;
  wire [42:0]C;
  wire [43:12]P;
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
  (* C_OUT_HIGH = "43" *) 
  (* C_OUT_LOW = "12" *) 
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
bEIeOQ1LzaGO/JN0hWSRJ5BbfVW31laKtZncZ9CaIvNIcEZ+5XFUOORq6EB5IH8HixdL3a1NR5tb
Xj0YgOoWtIYOl6rjGzxphX4Opy/Pg+fO3idRIw9NxCjWp4Vtv+p0xgZvZmbaOMABizOoBI3lIwy4
O4sCfOl2HEjdvc8z1HfuxCwl22PcksZcgEG4zl/KN2G7LAIhuAK2c1lkXoOeoxglMxNHuucONpIB
AzRRvMUV/Lbe7x5i/xcLWO2lxx3P0ysPZJo3RIuhvdXjhy8EVql02pLNbLn+B2fukHnQwIE9oo72
nb0DiJ0NdFg8fwVnMsJxiHGiHAHMz5M7TKdTcQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Y8iXDyxIwZ4MUJufhiUr5PGAp2QEQJ2VmFpo8crVOdYmCxU2H9OC93lc5m96O42nMmvk6KALMYAq
lT4LADYgh2FfI7f08VQolCdo7SgH+M9jTFqMfB0gl1U44dBUtzIzL8XVUsYyj7xGQ8324QxknfiH
ujc4TQokVKq6SUz1NlHkW8wLaWm08pR0brrrpdz7WFge5QlYeaEBdCoPn29VspR1p7twPs0ZqJ3x
TWBOpiepTEyzkpTPMe07RLcPwPPfzHyoG8q8k1QWe+dc+MZXQ1xrrJt+C/sG3OFlmAA3Cs+MdFKT
z6h/uHwRwa/uhxah9x84BB8f8bgYWhhCmDKifg==

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

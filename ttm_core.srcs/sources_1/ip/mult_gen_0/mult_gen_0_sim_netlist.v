// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Dec 20 14:06:47 2018
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/zkq/Xilinx/ttm_core/ttm_core.srcs/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [26:0]A;
  wire [17:0]B;
  wire CLK;
  wire [31:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "27" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "42" *) 
  (* C_OUT_LOW = "11" *) 
  (* C_ROUND_OUTPUT = "1" *) 
  (* C_ROUND_PT = "11" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "27" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "42" *) 
(* C_OUT_LOW = "11" *) (* C_ROUND_OUTPUT = "1" *) (* C_ROUND_PT = "11" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtexuplus" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [26:0]A;
  input [17:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [26:0]A;
  wire [17:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]PCASC;
  wire SCLR;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "27" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "42" *) 
  (* C_OUT_LOW = "11" *) 
  (* C_ROUND_OUTPUT = "1" *) 
  (* C_ROUND_PT = "11" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(PCASC),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fqjQqzZJ+Cx6lUaIruNdBf0sTfDKbF8cvQhekhCeDFIIT/rshPEmj6DuJL57G51Ooqd4UrUaDguk
IYp7tgiGGq3P3K+b897B/C4GwwTuInWlIfsZ2rcih3c7Dfx7CpS8x7reFAz/IVpog3wn4o+Z9Xaj
SBE2ojr5MOOSdCMXUMeP3oMQ9s9iYeySl5XHqACF6tfkWTLMBmUTLhXqf6CUy9mxGGJQJcjhI9ot
znw311pfrcWU+ceP5KaZklL4XmlL7/GN2yjwGmDKTNsIdMXAko+bfou3r7z7zHddJUuAp3B9eRaY
n16EvSwqLXtaWQCHnxIvUAC/OISVY69fb7s/UA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GFRtLzRmpS7SRdHKMbldCvBsSkJXkYmIR9ixjPFBfrlBzAp9rKcvzVrzGIldQhLJiDkxYyiz0v0J
iI2o7GyVdz98TRptDadJbsT+yw9s4UOCXpapgf6swG382oXDVnmnmHMmFC7z0P1D6IUiaj/P2wUW
7xxYEcz6qGesglSD8mElUOI4dhBXV6ubziezTlzqy2ugp78g5eo8eVJ4J/6EOVHxsTZ618bwrP/K
sHPApxktpo5717vAlgl9OTEuCdCqVy6WtT90DDBcCSPWI1ZU8TOltqQEhjtjD8PU6euLqGGtw9vc
63Y6g8+bGpUyjjU/cgg1qw1RzbfQM3x+jj/ENg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7200)
`pragma protect data_block
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
5AuSZL7jzUprIbEGQ4L2a6z8
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

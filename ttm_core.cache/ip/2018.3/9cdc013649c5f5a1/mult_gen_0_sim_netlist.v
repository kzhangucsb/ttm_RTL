// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Dec 20 14:06:46 2018
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtexuplus" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14_viv i_mult
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
QjS8s05sATnfhqwc+M8GANjg/ljH31pWkrX4J//Q9eH8aH9oJSnKTNLWRmOVqbdCJEa+lRQaPJYc
BkpFI09KbR/DOwHqXbfWVRdg/N6u2PX7URh+01SkPI9GP/uIK5YRqsLsFYmBaeunbaLVma4+SY+S
CT0TpUb8iZH0RuOCBJnwekEkP2Qz3nvDazTfjHjqSAF5OU3ZHjMRFcegqR/TO2nypVm7V1pui96w
08tjPPOQOUHalthZzaMl2QPj+upqNfv1JV3utzF/qmenChYmN0HJa9nSYlqLfcVe18/tliuQNwj7
n+qXsTa8ERISst+O5q9Ij30CjmyV7jWNTRfdMA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pGPj8sX3Jn4MC9wpcz+dqSCl08xmqP0uHVRZbTRaKmFONnk/m1utgxr9RrrnPKk6O1AGSHHgVFXD
nolhBTK/AjdHaClB9rgOtxLeYR6Z0I7t4jkMUinfVCRva0BTrJY8Kg63oAoPOdyPEH5+6NyxzZ32
N8+isgl6nenjVAfF/lpglsj8N8xmoEW7MG8Ygc3OhQCpWgKrML7hIjhK9yT3DJdpjFAyCHtJm9DA
pn13ZrEU8J7vQE9Fngb2BtPI3/0+gN1lbKVRT5Gy3ni1qLKvsX2M+3zSFu6HGZUTUiY3rS24CszP
sz6y8mDIFGZ0IGlCq1j1DOOpsohSi+zdY47pKw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7232)
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

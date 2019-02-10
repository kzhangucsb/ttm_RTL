// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Feb  9 12:15:21 2019
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/zkq/Xilinx/ttm_core/ttm_core.srcs/sources_1/ip/c_shift_ram_0/c_shift_ram_0_sim_netlist.v
// Design      : c_shift_ram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_shift_ram_0,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module c_shift_ram_0
   (D,
    CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "2" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "1" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_shift_ram_0_c_shift_ram_v12_0_12 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "2" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "virtexuplus" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_shift_ram_0_c_shift_ram_v12_0_12
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "2" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "1" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_shift_ram_0_c_shift_ram_v12_0_12_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
R80NnScBgIZD14acGTeYZyZzlDoMDRJH97QvrM1z3/BPxjYOI5xO+RmLRE3ogivikKxeQqDB3hYo
CtT6MXJE8w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pzFf5UkhQCihEthT9/vXIu9qyyEco3ugn72RSG7p68vod9TXq7nS9azLrnGkzXHs3PQFBkq+3+ZG
PNN41vDN58/lK8pIjiAlp2V0xXr8ZRf/QoS3nU9pnZ3CEwxt9CGwUMks2MBnm+VSjWWRxbkUaTxZ
+kjzVWvQpUuyFFsOEs8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xDcafb3KrEW7vk1Eyiww/9CKbzlKF9C0uKrVBz5bHy5+6GMNsnwfCSkgxU14+VriR3jhdDN7viwB
M3a2pKPouTEOz066rknyw5X/sQ4hniBD3iUl4NQWkHTGym3kv31ZUeZYdl5ODPvzfUJOWUvkAXp/
gf4rtgV5FBbGm8qJS4jxuFSsv4rhcb7t+cae5sULvX9h7Uh0lEoAlNX3YmEW0fWj4bhIgTdzT2gk
C1ytdGU/UAnitwmujc/k+32KWV0i/o3dHRhIc31iawLLSmuBJYefDEaLG6KE8nGHeuho45Se0dhe
7kIaZp4SW1wGf7C0xxqwh1cgZ7+6eWgYBqVY1g==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OrzITnToGC+ryHZVkpDHCj6CgE4vEVrPZ7Z829783FsE2zjugDCdpipuFZ7ikbeX4Bc52TEJ4mFm
0OxylPcCXPIE74pJ186gBXkmldW4bGFMhTmUHJ94bRAsyJjr329fm+j77y2NmfbHMVOsljahWWK4
OMppytgOrZcnsnsORsbXvvikZALiCB2t+Qc4RdHc3/98o+DDvRf+gwTZNX0GMOitJmVVvqxqw6No
K3aHL26WS+5291/TUz7aF7ySSp+k84h+0omwPrcy0Xc3URWaoYbqLrWiEi22RgQYitI1tEsa+afh
tv3h9WNr+65gWTbdbwWyOz1NeXJSaNV/mc+/Lg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
riYGAyaVfIXieMgcJVFsucQ9kUNBkyzgx5CLlDibSmqSJjCaDvK63ymwoZpsGDT9Rugub8H1Y8xX
XUpLlzZGCXrlWs6NgjXfNxVpLlkmz7GswYkQ6KhUkZhRuPh0HrpJPt1ne+1pTM6fzi5LXsyTv6sn
TisWpJPdsnmBDHgM6jupb4Iv3OG7/q/NPck9K59oFLN+AyKeQ/8pEy2j7xpMiFTRlE1OTJj2mjHF
yWQWyURMafr1KK5t9Wu7YuocfKiTo0f6okHNafEo/nNpObW1D/liUJlS5GVguNNbnFjSuun9SM4T
MXhUoU0rVPqSkeCGnTpMMYK0MY5IwmbyZXn/fQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
HyAIbEI1uxEAA90t6+VWFTmyUje1JDZQZoMv6A5VyFWA8tJ80b/Pwhc93aHby8xZos0WjlEANrxF
3hJ/l8XJYMVZWlVytBIRAZYGbhnMBOGo/5sjE6O2Ap0308iwfA50rb1ZITdKRqNiW+PlWkaGC+3R
QMUfNUa7cSm841V7mmc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GUEL70ZQ78wO25wq2V+5JNZcUKzj485nYHAlIxulC+dFYZ1T3bS7X0juNGn/cdIyRbeWgA5z1viA
KyiSR064Z0BmWFsIYHfLEP1CENE6B/DkEgUM//4pBnGxH0CUe8wWHQBcyJQAxQHemECYQ5/QfTqT
96OTv0jwZ8yRjX1vKXS1qZKREGwNAsV3Kgrd9M5oaNz3PuISlyOOLoxPx9Qvu0Z0QYAzZbksLAI6
oekHTbR7CXs/P7+GCnbyf0lD6RFUyKASz8PAAvPi/+knG0A5BGQv9W8rEQ1GlCyJMbWqS7UMYIM5
Aany0Gd6zUtHqzCJMTpR0Gv6o8IS9bMCD8CICQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fEPWKZh57cuIsXU32Lcy3WqWD1T7mBVamJLkRCg8Dxe2Rpam0cHl/EBx/opbRzZSvLUUuekVfBX9
IrZlLjHgtj7nSyMvD3QcJ3AaqIJkAUHrgECmMsR1n0xsURtSqbVucBLQ382uoEPUtZvILSGYVdUS
ykTYD4ALOZWpb0d+Llc39jj8mWr5CJgiZ83JKs6zadyK3gIWYKfeaeplpeaYKrNDI1hCcJkcqDLQ
/PcBEJqIWQy8j0ukn7jNvn8B3O7BPLum7d9JOp7WJeB3Hg4GS6fQcvc76tNOy5J7ysl0nUlMzyCd
dY62z3t+EEUiFUdZsu6jw93bwz/LSUvBNM0M+A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iU2Fv5RzVKvfzYgAaoAgfoeGIm+P0K4u6PNKN7HnazbtfKqauINFsqO/8XtvPJsTXAiANGgofSwM
p26TXp9+6Ep2PyPwePet0rNeCKtjMOpkK4c7GNu3Uv8eczN2OzF6q9nzl/5zQC0w72ax0+aujfrE
2ksZL7RmPl40y37ZDmnYf8nYykkZmPSYhAG080FZZyNogpgtEykkd6kyKmj2p2yLHLo2L0iYP2Rg
jODD2j8zcXHTjDGYh6v9i8jcy/z3najuNyC28HsQ0Y67LQD8ivvtapR52d1n089lw3KUJLQTi5AD
GFpFuPWWY5FPQT+DCIxVKPpZF1KUi96rLa+AlQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4048)
`pragma protect data_block
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
7Q==
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

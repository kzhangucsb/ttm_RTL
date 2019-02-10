// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Feb  9 12:03:05 2019
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/zkq/Xilinx/ttm_core/ttm_core.srcs/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_sim_netlist.v
// Design      : xbip_dsp48_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-fsgd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_dsp48_macro_0,xbip_dsp48_macro_v3_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_16,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module xbip_dsp48_macro_0
   (CLK,
    CE,
    SEL,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sel_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sel_intf, LAYERED_METADATA undef" *) input [0:0]SEL;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [17:0]B;
  wire [47:0]C;
  wire CE;
  wire CLK;
  wire [47:0]P;
  wire [0:0]SEL;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "27" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100111000010100000000,000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000011000000000001000000" *) 
  (* C_SEL_WIDTH = "1" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0_16 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(CE),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(SEL));
endmodule

(* C_A_WIDTH = "27" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "1" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "1" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100111000010100000000,000100100000010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000011000000000001000000" *) (* C_SEL_WIDTH = "1" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtexuplus" *) 
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0_16" *) (* downgradeipidentifiedwarnings = "yes" *) 
module xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0_16
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [26:0]A;
  input [17:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [47:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [26:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire [47:0]C;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYOUT;
  wire CE;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire [0:0]SEL;

  (* C_A_WIDTH = "27" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100111000010100000000,000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000011000000000001000000" *) 
  (* C_SEL_WIDTH = "1" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0_16_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C(C),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(1'b0),
        .CARRYOUT(CARRYOUT),
        .CE(CE),
        .CEA(1'b0),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEA3(1'b0),
        .CEA4(1'b0),
        .CEB(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEB3(1'b0),
        .CEB4(1'b0),
        .CEC(1'b0),
        .CEC1(1'b0),
        .CEC2(1'b0),
        .CEC3(1'b0),
        .CEC4(1'b0),
        .CEC5(1'b0),
        .CECONCAT(1'b0),
        .CECONCAT3(1'b0),
        .CECONCAT4(1'b0),
        .CECONCAT5(1'b0),
        .CED(1'b0),
        .CED1(1'b0),
        .CED2(1'b0),
        .CED3(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CESEL(1'b0),
        .CESEL1(1'b0),
        .CESEL2(1'b0),
        .CESEL3(1'b0),
        .CESEL4(1'b0),
        .CESEL5(1'b0),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(SEL));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
OA2cDxxBBgQGJMp2pxvIcb9dg8Uqwmv+0eyEdSECDu3UgdHiXU5FeBOB2Q9h9uII0FkFHF8ZM/p5
QCk1gyZuNA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Ohw3/ONQPF4YSQ9T4UlhV3QIxoCPQR4nSH8nk5PkpXa2YESP9l5Ukzz3ov2c4s0uNC7340gxwGIh
iZiO71DkVAEONuxBbBoBIz9wl8KBcu3gIWYM3qoATzEBCvJUsWW3y7x4irWQVePt8OSzl7ugyAKH
Gavs/n2UAAo3JGr9nuQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qbQdmKpXGCQroM/9Mx26/oA5UfkaVHlnKnkEDXAiffyr+pAS4Xq2B/0/lqmbCYBBKnZpRSPoWUEs
Cg1/IqWvWntatpU9JwJ+hjvSRkztujxk9id6jXnKk8AFHe+y36LqoKhVdARle9zcy0G4UlY4ScPP
z18tJGZn1cVPNUr3wbHIKRZS/pdZdBjPIkpZzfpmtwAPWyBT4InH2oT1IUVra4E4Lbc2JeIXcpQI
MA4GDr2IGv/Enl3BKXEt0JzX1tZtq1bzklY6XMcUl1o97QwbFOZa1aUWgVBRRA1AJNIiMyg5Pvfc
Q9phtLshsSkW42KhxQMiXf2l/0OZGMvjsliZOA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ch1JwuARongvYA6wwxtZ9HrijShX8v/T8gJft+KazH/83xQ8WQuf2Auf0DEkLYqXb6lmqjTo5Qv3
/UW4me8gr16uhQcbbM5vhT7Yrb0J0W1xruMlQiO2JNDG9r1RQx2OSK1yi0pPBLLOAlVkKSsgWZbS
tIQhtAj4DXc1oOc5vjpuzgyZ5MsedeXKnOkmG8dO+YW3o63NkPAu9Pl4lAB7oGQEnvua9zRMAsi0
edkVgJdX2DsBhIkBrWZRXQ3TUKGFyrcemkBYBAN/p3IwcmqxU8VD8smJrfUw5ftrr5164WnARz6x
2zZZlLCtzlHvT3Onbva+EKM3a4AioOcXu6Kjag==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VT7lyAYu7/weMOfLvOM+SHZmAAVV6GMaD3gr7ZSNU8JfV9HIoUTxp6J0mJdeOKs3tYYlqi6cF+Qo
F8YCUKXluoy1gcptygDK7q//Xh7zBwLcSKdoUJr/Arnk4ijKQuEZ9JjH98tsD1GIA6B0EUQRclHC
FwSksULSbpayYa7tjvYuijf3sJDtJFxV+GTeKDKTRe8W0jHosQUN+0aKY8WRP/nt7ccDxmn0IZyv
NYwNf0lrWjEC4Ki1WiMukH+NDrbYZZ4V7XSuq11etS2vz0dQpM0oVQxT3DWkod7qrSaHvHyK9moY
KzDcXWkyU3VpqGrxPWl9DJP6lEv2rVhdkpjMbA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XgmFRGaDq2b3xpHvzH+IwGP/IQNDsWlcao685okhs0AfoeD4RtvYCy+nfvG7Y5DWm1xA4Wa046Ju
gEBXPOzaNoAltTfF+odHBTEi+5zMk9gbAJjMmAmBq1RIDStwIFRdEfdyaG+BfFkpmz+MiAGgdUn2
avVOBrCw9WUXA0b+vy0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pjB2Cz+0cSVKp4du1DXMN5l66IUTXx3HaY0OfcBMe+msmACV9SKLQqpbiwy2Glq6Nzrvx960qHGd
FjDXHMKbGPzR33ri6HWVEvLoTZbPfVkX6Jn/yPiNAUbCYBZ6kq0pXUAH3rpN1nE+Eg0wUdWaE9dJ
46214wdWThgp/a2oUEhsBDNuz850Vvo9f3HJGHeUizN/IviKOQCBxQstk1qRDYXVGyiW/vtBTPCL
wVJAZ1C0anyhQAS40N1AKpX8bV9joriwf9jvkmWmBSZB/t12s9UVHmf4Wjyk3vJ2u5s5QKMwb1ag
7LyWm/+cXV1dKHMIaYTLYX6X86whqonJjzSw6g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VxwkduyWZnIldU/JQypxIWCPekEv0Z/LjTCgmArwcqriEpWq1IZvULRXf+E1y5Ku/ukIFffjnurl
vCfehFUBgkcijFqQQupn353LronGqzHruf4M6P6mRJD55C9yL2fSd78OrNjIcIXR8Ig1cy0Box9Y
X7RkX5uaE7PETbRcLbzJaz/AxKakfjGHXX6+0mW7sVME9z7hAh+zgEU8+RdLKBB73uy93GLe2vlQ
7BBnLjprukD7IB1gZNzlmxCUIEofKjOyIXDgexn7VNdEVC7AHT3Quofxe4SldaihkzyLZmqKOrns
2xA/jkv2e4Ta7pDwqXCEe/jPVeEWjhfV3nnpPw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ugdxmue1tkyg/+XGBSyRYaMYDzPUWdcI9sxJZAfOM/WVDi/jE9El2f3eWPMXl5kxXlr/Yv/AF7gA
ysl+5lXxuXcOxQ0AKeE7rRD4UaxA5q/PoqmDMs6h9JSTl2NnH3JynsQIcSEq9QvF5TFLRxZXJocf
W8adhESSpJCJB+DvOdT49lRvHxRmkE39UV5BadQeh4RClt697Db6N4RsbasuQOU8JYVoshpqCn4P
LW0hzhmn0leZ1B10MiUvCdcJmliBCbM+Wa8gQ94hD/lfByNWH/YkFDndZO+6ZA3cgkGS8EzKzcMa
HvsjV4EjmfafdUULLD4eDtF2bYQx6coJmCn8HQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9648)
`pragma protect data_block
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
ACugt+qQav/g7YQJAMUP
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

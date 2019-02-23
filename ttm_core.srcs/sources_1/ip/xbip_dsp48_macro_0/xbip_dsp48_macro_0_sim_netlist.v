// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Feb 20 14:46:57 2019
// Host        : zkq-Precision-3630-Tower running 64-bit Ubuntu 18.04.2 LTS
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
  (* C_REG_CONFIG = "00000000000011000011000011100000" *) 
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
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000011000011000011100000" *) (* C_SEL_WIDTH = "1" *) 
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
  (* C_REG_CONFIG = "00000000000011000011000011100000" *) 
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
mUm2EeArerVMtbPerK4rhIl3ZqviYvU48PTIDyKt07TfLyGkoMVcDCyH98M7Y7ZBFvIYbJQp1e4K
7wbaPyDwwmL8hWrtnylkeB/iaqBHr9uS57ug6r4FZMNDBNb+7jSCc9QRJp/fWQMYGDHqek2Zfvip
Z4UjHvithbOfIJg4jQDzHZ1Zo12mpkvmcrEuhTg0gWLOmLAO2HBCKmi6cF7Vozu8+s4fTShOSwLs
dOkdkCvWtZQmcAw4T1g22XvFkmJb1g8/QbHWryDb2C9pF6mMwgVioXJCBfED1OrxtzebEKT9bydP
W+4iZ1iSKTVJYGgdnrBmS5As0DAsgX8pwGZv6g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5ISLjXzWf5v6GIeZTs1SfUyB8U9fXoXU5jeQx9NEigMkQS1RTCNJzpJSpkw7WtR2QScjIEZCA8Cs
ibwXEABIfvgbizs9GqDNSwub2d8c4RTCmmy/kyxIIYC3zx33DUcIs3IzrzbPThSwNcuxWeyV1zUb
aY5lwHbq7RDSL8uNGozu1VYOXEamP0wcL9oyXVXUR2SU0DKtzEHE3KJwToHrw3gPoUOC8jrhH3pe
Rp5Kg6sKgsbV5XRN23ZIGLJgi/T733hwe8za4FAguJ6UNIaRGEpTzueXd159wEcYyZa5UrBZWb8H
y1fnTCL0FfHBH+9Ggui/GzNRnVqiWCpaUjtJ8w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9632)
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

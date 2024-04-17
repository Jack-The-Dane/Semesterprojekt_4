// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Apr  5 14:03:24 2024
// Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ encoder_bd_encoder_0_0_sim_netlist.v
// Design      : encoder_bd_encoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encoder
   (Q,
    \rot_reg[8]_P_0 ,
    pulses,
    enc_a,
    rst,
    enc_b);
  output [2:0]Q;
  output \rot_reg[8]_P_0 ;
  output [4:0]pulses;
  input enc_a;
  input rst;
  input enc_b;

  wire [2:0]Q;
  wire enc_a;
  wire enc_b;
  wire [4:0]pulses;
  wire \rot[0]_C_i_1_n_0 ;
  wire \rot[4]_i_2_n_0 ;
  wire \rot[4]_i_3_n_0 ;
  wire \rot[4]_i_4_n_0 ;
  wire \rot[4]_i_5_n_0 ;
  wire \rot[4]_i_6_n_0 ;
  wire \rot[4]_i_7_n_0 ;
  wire \rot[4]_i_8_n_0 ;
  wire \rot[7]_i_2_n_0 ;
  wire \rot[7]_i_3_n_0 ;
  wire \rot[7]_i_4_n_0 ;
  wire \rot[7]_i_5_n_0 ;
  wire \rot[7]_i_6_n_0 ;
  wire \rot[7]_i_7_n_0 ;
  wire \rot[7]_i_8_n_0 ;
  wire \rot[7]_i_9_n_0 ;
  wire \rot_reg[0]_C_n_0 ;
  wire \rot_reg[0]_P_n_0 ;
  wire \rot_reg[1]_C_n_0 ;
  wire \rot_reg[1]_P_n_0 ;
  wire \rot_reg[2]_C_n_0 ;
  wire \rot_reg[2]_P_n_0 ;
  wire \rot_reg[4]_i_1_n_0 ;
  wire \rot_reg[4]_i_1_n_1 ;
  wire \rot_reg[4]_i_1_n_2 ;
  wire \rot_reg[4]_i_1_n_3 ;
  wire \rot_reg[4]_i_1_n_4 ;
  wire \rot_reg[4]_i_1_n_5 ;
  wire \rot_reg[4]_i_1_n_6 ;
  wire \rot_reg[4]_i_1_n_7 ;
  wire \rot_reg[5]_C_n_0 ;
  wire \rot_reg[5]_P_n_0 ;
  wire \rot_reg[6]_C_n_0 ;
  wire \rot_reg[6]_P_n_0 ;
  wire \rot_reg[7]_i_1_n_1 ;
  wire \rot_reg[7]_i_1_n_2 ;
  wire \rot_reg[7]_i_1_n_3 ;
  wire \rot_reg[7]_i_1_n_4 ;
  wire \rot_reg[7]_i_1_n_5 ;
  wire \rot_reg[7]_i_1_n_6 ;
  wire \rot_reg[7]_i_1_n_7 ;
  wire \rot_reg[8]_C_n_0 ;
  wire \rot_reg[8]_LDC_i_1_n_0 ;
  wire \rot_reg[8]_LDC_i_2_n_0 ;
  wire \rot_reg[8]_LDC_i_3_n_0 ;
  wire \rot_reg[8]_LDC_i_4_n_0 ;
  wire \rot_reg[8]_LDC_i_5_n_0 ;
  wire \rot_reg[8]_LDC_n_0 ;
  wire \rot_reg[8]_P_0 ;
  wire \rot_reg[8]_P_n_0 ;
  wire rst;
  wire [3:3]\NLW_rot_reg[7]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    \pulses[0]_INST_0 
       (.I0(\rot_reg[0]_P_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[0]_C_n_0 ),
        .O(pulses[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pulses[1]_INST_0 
       (.I0(\rot_reg[1]_P_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[1]_C_n_0 ),
        .O(pulses[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pulses[2]_INST_0 
       (.I0(\rot_reg[2]_P_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[2]_C_n_0 ),
        .O(pulses[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pulses[5]_INST_0 
       (.I0(\rot_reg[5]_P_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[5]_C_n_0 ),
        .O(pulses[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pulses[6]_INST_0 
       (.I0(\rot_reg[6]_P_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[6]_C_n_0 ),
        .O(pulses[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pulses[8]_INST_0 
       (.I0(\rot_reg[8]_P_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[8]_C_n_0 ),
        .O(\rot_reg[8]_P_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \rot[0]_C_i_1 
       (.I0(\rot_reg[0]_C_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[0]_P_n_0 ),
        .O(\rot[0]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rot[4]_i_2 
       (.I0(\rot_reg[2]_P_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[2]_C_n_0 ),
        .O(\rot[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rot[4]_i_3 
       (.I0(\rot_reg[1]_P_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[1]_C_n_0 ),
        .O(\rot[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \rot[4]_i_4 
       (.I0(\rot_reg[1]_C_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[1]_P_n_0 ),
        .O(\rot[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rot[4]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\rot[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \rot[4]_i_6 
       (.I0(\rot_reg[2]_C_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[2]_P_n_0 ),
        .I3(Q[0]),
        .O(\rot[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    \rot[4]_i_7 
       (.I0(\rot_reg[1]_C_n_0 ),
        .I1(\rot_reg[1]_P_n_0 ),
        .I2(\rot_reg[2]_C_n_0 ),
        .I3(\rot_reg[8]_LDC_n_0 ),
        .I4(\rot_reg[2]_P_n_0 ),
        .O(\rot[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \rot[4]_i_8 
       (.I0(\rot_reg[1]_C_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[1]_P_n_0 ),
        .I3(enc_b),
        .O(\rot[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEAEAEAEAA)) 
    \rot[7]_i_2 
       (.I0(rst),
        .I1(\rot_reg[8]_P_0 ),
        .I2(\rot[7]_i_9_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\rot[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rot[7]_i_3 
       (.I0(\rot_reg[6]_P_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[6]_C_n_0 ),
        .O(\rot[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rot[7]_i_4 
       (.I0(\rot_reg[5]_P_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[5]_C_n_0 ),
        .O(\rot[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \rot[7]_i_5 
       (.I0(Q[2]),
        .I1(\rot_reg[8]_C_n_0 ),
        .I2(\rot_reg[8]_LDC_n_0 ),
        .I3(\rot_reg[8]_P_n_0 ),
        .O(\rot[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hE21D)) 
    \rot[7]_i_6 
       (.I0(\rot_reg[6]_C_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[6]_P_n_0 ),
        .I3(Q[2]),
        .O(\rot[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    \rot[7]_i_7 
       (.I0(\rot_reg[5]_C_n_0 ),
        .I1(\rot_reg[5]_P_n_0 ),
        .I2(\rot_reg[6]_C_n_0 ),
        .I3(\rot_reg[8]_LDC_n_0 ),
        .I4(\rot_reg[6]_P_n_0 ),
        .O(\rot[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \rot[7]_i_8 
       (.I0(Q[1]),
        .I1(\rot_reg[5]_C_n_0 ),
        .I2(\rot_reg[8]_LDC_n_0 ),
        .I3(\rot_reg[5]_P_n_0 ),
        .O(\rot[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \rot[7]_i_9 
       (.I0(\rot_reg[5]_C_n_0 ),
        .I1(\rot_reg[5]_P_n_0 ),
        .I2(\rot_reg[6]_C_n_0 ),
        .I3(\rot_reg[8]_LDC_n_0 ),
        .I4(\rot_reg[6]_P_n_0 ),
        .O(\rot[7]_i_9_n_0 ));
  FDCE \rot_reg[0]_C 
       (.C(enc_a),
        .CE(1'b1),
        .CLR(\rot_reg[8]_LDC_i_2_n_0 ),
        .D(\rot[0]_C_i_1_n_0 ),
        .Q(\rot_reg[0]_C_n_0 ));
  FDPE \rot_reg[0]_P 
       (.C(enc_a),
        .CE(1'b1),
        .D(\rot[0]_C_i_1_n_0 ),
        .PRE(\rot_reg[8]_LDC_i_1_n_0 ),
        .Q(\rot_reg[0]_P_n_0 ));
  FDCE \rot_reg[1]_C 
       (.C(enc_a),
        .CE(1'b1),
        .CLR(\rot_reg[8]_LDC_i_2_n_0 ),
        .D(\rot_reg[4]_i_1_n_7 ),
        .Q(\rot_reg[1]_C_n_0 ));
  FDPE \rot_reg[1]_P 
       (.C(enc_a),
        .CE(1'b1),
        .D(\rot_reg[4]_i_1_n_7 ),
        .PRE(\rot_reg[8]_LDC_i_1_n_0 ),
        .Q(\rot_reg[1]_P_n_0 ));
  FDCE \rot_reg[2]_C 
       (.C(enc_a),
        .CE(1'b1),
        .CLR(\rot_reg[8]_LDC_i_2_n_0 ),
        .D(\rot_reg[4]_i_1_n_6 ),
        .Q(\rot_reg[2]_C_n_0 ));
  FDPE \rot_reg[2]_P 
       (.C(enc_a),
        .CE(1'b1),
        .D(\rot_reg[4]_i_1_n_6 ),
        .PRE(\rot_reg[8]_LDC_i_1_n_0 ),
        .Q(\rot_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rot_reg[3] 
       (.C(enc_a),
        .CE(1'b1),
        .CLR(\rot[7]_i_2_n_0 ),
        .D(\rot_reg[4]_i_1_n_5 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b1)) 
    \rot_reg[4] 
       (.C(enc_a),
        .CE(1'b1),
        .CLR(\rot[7]_i_2_n_0 ),
        .D(\rot_reg[4]_i_1_n_4 ),
        .Q(Q[1]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \rot_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\rot_reg[4]_i_1_n_0 ,\rot_reg[4]_i_1_n_1 ,\rot_reg[4]_i_1_n_2 ,\rot_reg[4]_i_1_n_3 }),
        .CYINIT(pulses[0]),
        .DI({Q[0],\rot[4]_i_2_n_0 ,\rot[4]_i_3_n_0 ,\rot[4]_i_4_n_0 }),
        .O({\rot_reg[4]_i_1_n_4 ,\rot_reg[4]_i_1_n_5 ,\rot_reg[4]_i_1_n_6 ,\rot_reg[4]_i_1_n_7 }),
        .S({\rot[4]_i_5_n_0 ,\rot[4]_i_6_n_0 ,\rot[4]_i_7_n_0 ,\rot[4]_i_8_n_0 }));
  FDCE \rot_reg[5]_C 
       (.C(enc_a),
        .CE(1'b1),
        .CLR(\rot_reg[8]_LDC_i_2_n_0 ),
        .D(\rot_reg[7]_i_1_n_7 ),
        .Q(\rot_reg[5]_C_n_0 ));
  FDPE \rot_reg[5]_P 
       (.C(enc_a),
        .CE(1'b1),
        .D(\rot_reg[7]_i_1_n_7 ),
        .PRE(\rot_reg[8]_LDC_i_1_n_0 ),
        .Q(\rot_reg[5]_P_n_0 ));
  FDCE \rot_reg[6]_C 
       (.C(enc_a),
        .CE(1'b1),
        .CLR(\rot_reg[8]_LDC_i_2_n_0 ),
        .D(\rot_reg[7]_i_1_n_6 ),
        .Q(\rot_reg[6]_C_n_0 ));
  FDPE \rot_reg[6]_P 
       (.C(enc_a),
        .CE(1'b1),
        .D(\rot_reg[7]_i_1_n_6 ),
        .PRE(\rot_reg[8]_LDC_i_1_n_0 ),
        .Q(\rot_reg[6]_P_n_0 ));
  FDCE #(
    .INIT(1'b1)) 
    \rot_reg[7] 
       (.C(enc_a),
        .CE(1'b1),
        .CLR(\rot[7]_i_2_n_0 ),
        .D(\rot_reg[7]_i_1_n_5 ),
        .Q(Q[2]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \rot_reg[7]_i_1 
       (.CI(\rot_reg[4]_i_1_n_0 ),
        .CO({\NLW_rot_reg[7]_i_1_CO_UNCONNECTED [3],\rot_reg[7]_i_1_n_1 ,\rot_reg[7]_i_1_n_2 ,\rot_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\rot[7]_i_3_n_0 ,\rot[7]_i_4_n_0 ,Q[1]}),
        .O({\rot_reg[7]_i_1_n_4 ,\rot_reg[7]_i_1_n_5 ,\rot_reg[7]_i_1_n_6 ,\rot_reg[7]_i_1_n_7 }),
        .S({\rot[7]_i_5_n_0 ,\rot[7]_i_6_n_0 ,\rot[7]_i_7_n_0 ,\rot[7]_i_8_n_0 }));
  FDCE \rot_reg[8]_C 
       (.C(enc_a),
        .CE(1'b1),
        .CLR(\rot_reg[8]_LDC_i_2_n_0 ),
        .D(\rot_reg[7]_i_1_n_4 ),
        .Q(\rot_reg[8]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b1)) 
    \rot_reg[8]_LDC 
       (.CLR(\rot_reg[8]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\rot_reg[8]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\rot_reg[8]_LDC_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC0C0C0800)) 
    \rot_reg[8]_LDC_i_1 
       (.I0(\rot_reg[8]_LDC_i_3_n_0 ),
        .I1(\rot_reg[8]_P_0 ),
        .I2(\rot[7]_i_9_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\rot_reg[8]_LDC_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA00AA3A)) 
    \rot_reg[8]_LDC_i_2 
       (.I0(rst),
        .I1(\rot_reg[8]_LDC_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\rot_reg[8]_LDC_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\rot_reg[8]_LDC_i_5_n_0 ),
        .O(\rot_reg[8]_LDC_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCFAFAFFFC)) 
    \rot_reg[8]_LDC_i_3 
       (.I0(\rot_reg[2]_P_n_0 ),
        .I1(\rot_reg[2]_C_n_0 ),
        .I2(pulses[1]),
        .I3(\rot_reg[0]_C_n_0 ),
        .I4(\rot_reg[8]_LDC_n_0 ),
        .I5(\rot_reg[0]_P_n_0 ),
        .O(\rot_reg[8]_LDC_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h47CF77FFFFFFFFFF)) 
    \rot_reg[8]_LDC_i_4 
       (.I0(\rot_reg[6]_P_n_0 ),
        .I1(\rot_reg[8]_LDC_n_0 ),
        .I2(\rot_reg[6]_C_n_0 ),
        .I3(\rot_reg[5]_P_n_0 ),
        .I4(\rot_reg[5]_C_n_0 ),
        .I5(\rot_reg[8]_P_0 ),
        .O(\rot_reg[8]_LDC_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \rot_reg[8]_LDC_i_5 
       (.I0(Q[2]),
        .I1(\rot_reg[8]_C_n_0 ),
        .I2(\rot_reg[8]_LDC_n_0 ),
        .I3(\rot_reg[8]_P_n_0 ),
        .O(\rot_reg[8]_LDC_i_5_n_0 ));
  FDPE \rot_reg[8]_P 
       (.C(enc_a),
        .CE(1'b1),
        .D(\rot_reg[7]_i_1_n_4 ),
        .PRE(\rot_reg[8]_LDC_i_1_n_0 ),
        .Q(\rot_reg[8]_P_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "encoder_bd_encoder_0_0,encoder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "encoder,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (enc_a,
    enc_b,
    rst,
    pulses);
  input enc_a;
  input enc_b;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output [8:0]pulses;

  wire enc_a;
  wire enc_b;
  wire [8:0]pulses;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encoder U0
       (.Q({pulses[7],pulses[4:3]}),
        .enc_a(enc_a),
        .enc_b(enc_b),
        .pulses({pulses[6:5],pulses[2:0]}),
        .\rot_reg[8]_P_0 (pulses[8]),
        .rst(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

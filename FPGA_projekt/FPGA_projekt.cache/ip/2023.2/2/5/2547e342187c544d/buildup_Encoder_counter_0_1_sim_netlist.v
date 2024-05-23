// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri May 17 10:59:26 2024
// Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ buildup_Encoder_counter_0_1_sim_netlist.v
// Design      : buildup_Encoder_counter_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Encoder_counter
   (encoder_cnt,
    encoder_b,
    clk,
    rst,
    encoder_a);
  output [8:0]encoder_cnt;
  input encoder_b;
  input clk;
  input rst;
  input encoder_a;

  wire FF1;
  wire FF2;
  wire FF3;
  wire FF4;
  wire clk;
  wire encoder_a;
  wire encoder_b;
  wire [8:0]encoder_cnt;
  wire int_cnt12_out;
  wire \int_cnt_reg[0]_i_1_n_0 ;
  wire \int_cnt_reg[1]_i_1_n_0 ;
  wire \int_cnt_reg[2]_i_1_n_0 ;
  wire \int_cnt_reg[3]_i_1_n_0 ;
  wire \int_cnt_reg[4]_i_1_n_0 ;
  wire \int_cnt_reg[4]_i_2_n_0 ;
  wire \int_cnt_reg[4]_i_3_n_0 ;
  wire \int_cnt_reg[5]_i_1_n_0 ;
  wire \int_cnt_reg[5]_i_2_n_0 ;
  wire \int_cnt_reg[5]_i_3_n_0 ;
  wire \int_cnt_reg[6]_i_1_n_0 ;
  wire \int_cnt_reg[7]_i_1_n_0 ;
  wire \int_cnt_reg[7]_i_2_n_0 ;
  wire \int_cnt_reg[7]_i_3_n_0 ;
  wire \int_cnt_reg[7]_i_4_n_0 ;
  wire \int_cnt_reg[8]_i_1_n_0 ;
  wire \int_cnt_reg[8]_i_2_n_0 ;
  wire \int_cnt_reg[8]_i_3_n_0 ;
  wire \int_cnt_reg[8]_i_4_n_0 ;
  wire \int_cnt_reg[8]_i_5_n_0 ;
  wire \int_cnt_reg[8]_i_6_n_0 ;
  wire \int_cnt_reg[8]_i_7_n_0 ;
  wire \int_cnt_reg[8]_i_8_n_0 ;
  wire \int_cnt_reg[8]_i_9_n_0 ;
  wire rst;

  FDCE #(
    .INIT(1'b0)) 
    FF1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(encoder_a),
        .Q(FF1));
  FDCE #(
    .INIT(1'b0)) 
    FF2_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(FF1),
        .Q(FF2));
  FDCE #(
    .INIT(1'b0)) 
    FF3_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(encoder_b),
        .Q(FF3));
  FDCE #(
    .INIT(1'b0)) 
    FF4_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(FF3),
        .Q(FF4));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[0] 
       (.CLR(1'b0),
        .D(\int_cnt_reg[0]_i_1_n_0 ),
        .G(\int_cnt_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(encoder_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \int_cnt_reg[0]_i_1 
       (.I0(\int_cnt_reg[8]_i_6_n_0 ),
        .I1(encoder_cnt[0]),
        .I2(\int_cnt_reg[7]_i_2_n_0 ),
        .O(\int_cnt_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[1] 
       (.CLR(1'b0),
        .D(\int_cnt_reg[1]_i_1_n_0 ),
        .G(\int_cnt_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(encoder_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBE82)) 
    \int_cnt_reg[1]_i_1 
       (.I0(\int_cnt_reg[7]_i_2_n_0 ),
        .I1(encoder_cnt[1]),
        .I2(encoder_cnt[0]),
        .I3(\int_cnt_reg[8]_i_6_n_0 ),
        .O(\int_cnt_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[2] 
       (.CLR(1'b0),
        .D(\int_cnt_reg[2]_i_1_n_0 ),
        .G(\int_cnt_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(encoder_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCAE0E0AC)) 
    \int_cnt_reg[2]_i_1 
       (.I0(\int_cnt_reg[8]_i_6_n_0 ),
        .I1(\int_cnt_reg[7]_i_2_n_0 ),
        .I2(encoder_cnt[2]),
        .I3(encoder_cnt[0]),
        .I4(encoder_cnt[1]),
        .O(\int_cnt_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[3] 
       (.CLR(1'b0),
        .D(\int_cnt_reg[3]_i_1_n_0 ),
        .G(\int_cnt_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(encoder_cnt[3]));
  LUT6 #(
    .INIT(64'hEEFEFBBBEABAEABA)) 
    \int_cnt_reg[3]_i_1 
       (.I0(\int_cnt_reg[8]_i_3_n_0 ),
        .I1(encoder_cnt[3]),
        .I2(\int_cnt_reg[8]_i_4_n_0 ),
        .I3(\int_cnt_reg[4]_i_3_n_0 ),
        .I4(\int_cnt_reg[4]_i_2_n_0 ),
        .I5(\int_cnt_reg[8]_i_6_n_0 ),
        .O(\int_cnt_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[4] 
       (.CLR(1'b0),
        .D(\int_cnt_reg[4]_i_1_n_0 ),
        .G(\int_cnt_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(encoder_cnt[4]));
  LUT6 #(
    .INIT(64'hF822F822FA00AAF0)) 
    \int_cnt_reg[4]_i_1 
       (.I0(\int_cnt_reg[8]_i_6_n_0 ),
        .I1(\int_cnt_reg[4]_i_2_n_0 ),
        .I2(\int_cnt_reg[7]_i_2_n_0 ),
        .I3(encoder_cnt[4]),
        .I4(\int_cnt_reg[4]_i_3_n_0 ),
        .I5(encoder_cnt[3]),
        .O(\int_cnt_reg[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \int_cnt_reg[4]_i_2 
       (.I0(encoder_cnt[1]),
        .I1(encoder_cnt[0]),
        .I2(encoder_cnt[2]),
        .O(\int_cnt_reg[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \int_cnt_reg[4]_i_3 
       (.I0(encoder_cnt[1]),
        .I1(encoder_cnt[0]),
        .I2(encoder_cnt[2]),
        .O(\int_cnt_reg[4]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[5] 
       (.CLR(1'b0),
        .D(\int_cnt_reg[5]_i_1_n_0 ),
        .G(\int_cnt_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(encoder_cnt[5]));
  LUT6 #(
    .INIT(64'hEFAFEAAEFAFEEAAE)) 
    \int_cnt_reg[5]_i_1 
       (.I0(\int_cnt_reg[8]_i_3_n_0 ),
        .I1(\int_cnt_reg[8]_i_4_n_0 ),
        .I2(encoder_cnt[5]),
        .I3(\int_cnt_reg[5]_i_2_n_0 ),
        .I4(\int_cnt_reg[8]_i_6_n_0 ),
        .I5(\int_cnt_reg[5]_i_3_n_0 ),
        .O(\int_cnt_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \int_cnt_reg[5]_i_2 
       (.I0(encoder_cnt[3]),
        .I1(encoder_cnt[1]),
        .I2(encoder_cnt[0]),
        .I3(encoder_cnt[2]),
        .I4(encoder_cnt[4]),
        .O(\int_cnt_reg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \int_cnt_reg[5]_i_3 
       (.I0(encoder_cnt[4]),
        .I1(encoder_cnt[3]),
        .I2(encoder_cnt[1]),
        .I3(encoder_cnt[0]),
        .I4(encoder_cnt[2]),
        .O(\int_cnt_reg[5]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[6] 
       (.CLR(1'b0),
        .D(\int_cnt_reg[6]_i_1_n_0 ),
        .G(\int_cnt_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(encoder_cnt[6]));
  LUT6 #(
    .INIT(64'hEEFEEABAFBBBEABA)) 
    \int_cnt_reg[6]_i_1 
       (.I0(\int_cnt_reg[8]_i_3_n_0 ),
        .I1(encoder_cnt[6]),
        .I2(\int_cnt_reg[8]_i_4_n_0 ),
        .I3(\int_cnt_reg[7]_i_3_n_0 ),
        .I4(\int_cnt_reg[8]_i_6_n_0 ),
        .I5(\int_cnt_reg[7]_i_4_n_0 ),
        .O(\int_cnt_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[7] 
       (.CLR(1'b0),
        .D(\int_cnt_reg[7]_i_1_n_0 ),
        .G(\int_cnt_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(encoder_cnt[7]));
  LUT6 #(
    .INIT(64'hCCCE8882BBCE8882)) 
    \int_cnt_reg[7]_i_1 
       (.I0(\int_cnt_reg[7]_i_2_n_0 ),
        .I1(encoder_cnt[7]),
        .I2(\int_cnt_reg[7]_i_3_n_0 ),
        .I3(encoder_cnt[6]),
        .I4(\int_cnt_reg[8]_i_6_n_0 ),
        .I5(\int_cnt_reg[7]_i_4_n_0 ),
        .O(\int_cnt_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \int_cnt_reg[7]_i_2 
       (.I0(\int_cnt_reg[8]_i_4_n_0 ),
        .I1(encoder_cnt[1]),
        .I2(encoder_cnt[0]),
        .I3(encoder_cnt[2]),
        .I4(\int_cnt_reg[8]_i_8_n_0 ),
        .O(\int_cnt_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \int_cnt_reg[7]_i_3 
       (.I0(encoder_cnt[4]),
        .I1(encoder_cnt[2]),
        .I2(encoder_cnt[0]),
        .I3(encoder_cnt[1]),
        .I4(encoder_cnt[3]),
        .I5(encoder_cnt[5]),
        .O(\int_cnt_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \int_cnt_reg[7]_i_4 
       (.I0(encoder_cnt[2]),
        .I1(encoder_cnt[0]),
        .I2(encoder_cnt[1]),
        .I3(encoder_cnt[3]),
        .I4(encoder_cnt[4]),
        .I5(encoder_cnt[5]),
        .O(\int_cnt_reg[7]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[8] 
       (.CLR(1'b0),
        .D(\int_cnt_reg[8]_i_1_n_0 ),
        .G(\int_cnt_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(encoder_cnt[8]));
  LUT6 #(
    .INIT(64'hEEFEEABAFBBBEABA)) 
    \int_cnt_reg[8]_i_1 
       (.I0(\int_cnt_reg[8]_i_3_n_0 ),
        .I1(encoder_cnt[8]),
        .I2(\int_cnt_reg[8]_i_4_n_0 ),
        .I3(\int_cnt_reg[8]_i_5_n_0 ),
        .I4(\int_cnt_reg[8]_i_6_n_0 ),
        .I5(\int_cnt_reg[8]_i_7_n_0 ),
        .O(\int_cnt_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \int_cnt_reg[8]_i_10 
       (.I0(FF3),
        .I1(FF1),
        .I2(FF2),
        .O(int_cnt12_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAABBAFAA)) 
    \int_cnt_reg[8]_i_2 
       (.I0(rst),
        .I1(FF4),
        .I2(FF2),
        .I3(FF1),
        .I4(FF3),
        .O(\int_cnt_reg[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \int_cnt_reg[8]_i_3 
       (.I0(\int_cnt_reg[8]_i_4_n_0 ),
        .I1(encoder_cnt[1]),
        .I2(encoder_cnt[0]),
        .I3(encoder_cnt[2]),
        .I4(\int_cnt_reg[8]_i_8_n_0 ),
        .O(\int_cnt_reg[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \int_cnt_reg[8]_i_4 
       (.I0(FF4),
        .I1(FF1),
        .I2(FF3),
        .O(\int_cnt_reg[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \int_cnt_reg[8]_i_5 
       (.I0(encoder_cnt[6]),
        .I1(\int_cnt_reg[7]_i_3_n_0 ),
        .I2(encoder_cnt[7]),
        .O(\int_cnt_reg[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70000)) 
    \int_cnt_reg[8]_i_6 
       (.I0(encoder_cnt[8]),
        .I1(encoder_cnt[5]),
        .I2(encoder_cnt[4]),
        .I3(\int_cnt_reg[8]_i_9_n_0 ),
        .I4(int_cnt12_out),
        .O(\int_cnt_reg[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \int_cnt_reg[8]_i_7 
       (.I0(\int_cnt_reg[4]_i_2_n_0 ),
        .I1(encoder_cnt[3]),
        .I2(encoder_cnt[4]),
        .I3(encoder_cnt[5]),
        .I4(encoder_cnt[6]),
        .I5(encoder_cnt[7]),
        .O(\int_cnt_reg[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \int_cnt_reg[8]_i_8 
       (.I0(encoder_cnt[5]),
        .I1(encoder_cnt[6]),
        .I2(encoder_cnt[3]),
        .I3(encoder_cnt[4]),
        .I4(encoder_cnt[8]),
        .I5(encoder_cnt[7]),
        .O(\int_cnt_reg[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \int_cnt_reg[8]_i_9 
       (.I0(encoder_cnt[7]),
        .I1(encoder_cnt[3]),
        .I2(encoder_cnt[6]),
        .I3(encoder_cnt[1]),
        .I4(encoder_cnt[0]),
        .I5(encoder_cnt[2]),
        .O(\int_cnt_reg[8]_i_9_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "buildup_Encoder_counter_0_1,Encoder_counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Encoder_counter,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    encoder_a,
    encoder_b,
    encoder_cnt);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN buildup_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input encoder_a;
  input encoder_b;
  output [8:0]encoder_cnt;

  wire clk;
  wire encoder_a;
  wire encoder_b;
  wire [8:0]encoder_cnt;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Encoder_counter U0
       (.clk(clk),
        .encoder_a(encoder_a),
        .encoder_b(encoder_b),
        .encoder_cnt(encoder_cnt),
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

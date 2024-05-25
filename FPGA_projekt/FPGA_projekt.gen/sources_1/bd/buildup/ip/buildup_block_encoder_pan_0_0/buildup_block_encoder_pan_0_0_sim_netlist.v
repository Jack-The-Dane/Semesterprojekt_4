// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri May 24 13:27:46 2024
// Host        : Cornelia running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top buildup_block_encoder_pan_0_0 -prefix
//               buildup_block_encoder_pan_0_0_ buildup_block_encoder_0_2_sim_netlist.v
// Design      : buildup_block_encoder_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module buildup_block_encoder_pan_0_0_Rising_edge_detector
   (E,
    encoder_b,
    clk,
    enable,
    \int_cnt_reg[0] ,
    encoder_a);
  output [0:0]E;
  input encoder_b;
  input clk;
  input enable;
  input \int_cnt_reg[0] ;
  input encoder_a;

  wire [0:0]E;
  wire FF1;
  wire FF2;
  wire clk;
  wire enable;
  wire encoder_a;
  wire encoder_b;
  wire \int_cnt_reg[0] ;

  FDRE #(
    .INIT(1'b0)) 
    FF1_reg
       (.C(clk),
        .CE(1'b1),
        .D(encoder_b),
        .Q(FF1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    FF2_reg
       (.C(clk),
        .CE(1'b1),
        .D(FF1),
        .Q(FF2),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h88888A88)) 
    \int_cnt[8]_i_1 
       (.I0(enable),
        .I1(\int_cnt_reg[0] ),
        .I2(encoder_a),
        .I3(FF1),
        .I4(FF2),
        .O(E));
endmodule

(* ORIG_REF_NAME = "Rising_edge_detector" *) 
module buildup_block_encoder_pan_0_0_Rising_edge_detector_0
   (FF1,
    FF2,
    FF2_reg_0,
    encoder_a,
    clk,
    encoder_b);
  output FF1;
  output FF2;
  output FF2_reg_0;
  input encoder_a;
  input clk;
  input encoder_b;

  wire FF1;
  wire FF2;
  wire FF2_reg_0;
  wire clk;
  wire encoder_a;
  wire encoder_b;

  FDRE #(
    .INIT(1'b0)) 
    FF1_reg
       (.C(clk),
        .CE(1'b1),
        .D(encoder_a),
        .Q(FF1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    FF2_reg
       (.C(clk),
        .CE(1'b1),
        .D(FF1),
        .Q(FF2),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \int_cnt[8]_i_3 
       (.I0(FF2),
        .I1(FF1),
        .I2(encoder_b),
        .O(FF2_reg_0));
endmodule

(* hw_handoff = "block_encoder.hwdef" *) 
module buildup_block_encoder_pan_0_0_block_encoder
   (clk,
    enable,
    encoder_a,
    encoder_b,
    pulse_cnt,
    rst);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input enable;
  input encoder_a;
  input encoder_b;
  output [8:0]pulse_cnt;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire Rising_edge_a_n_2;
  wire Rising_edge_b_n_0;
  wire \U0/FF1 ;
  wire \U0/FF2 ;
  wire clk;
  wire enable;
  wire encoder_a;
  wire encoder_b;
  wire [8:0]pulse_cnt;
  wire rst;

  (* x_core_info = "Rising_edge_detector,Vivado 2023.2" *) 
  buildup_block_encoder_pan_0_0_block_encoder_Rising_edge_detector_0_0 Rising_edge_a
       (.FF1(\U0/FF1 ),
        .FF2(\U0/FF2 ),
        .FF2_reg(Rising_edge_a_n_2),
        .clk(clk),
        .encoder_a(encoder_a),
        .encoder_b(encoder_b));
  (* x_core_info = "Rising_edge_detector,Vivado 2023.2" *) 
  buildup_block_encoder_pan_0_0_block_encoder_Rising_edge_a_0 Rising_edge_b
       (.E(Rising_edge_b_n_0),
        .clk(clk),
        .enable(enable),
        .encoder_a(encoder_a),
        .encoder_b(encoder_b),
        .\int_cnt_reg[0] (Rising_edge_a_n_2));
  (* x_core_info = "up_down_counter,Vivado 2023.2" *) 
  buildup_block_encoder_pan_0_0_block_encoder_up_down_counter_0_0 up_down_counter_0
       (.E(Rising_edge_b_n_0),
        .FF1(\U0/FF1 ),
        .FF2(\U0/FF2 ),
        .Q(pulse_cnt),
        .clk(clk),
        .encoder_b(encoder_b),
        .\int_cnt_reg[3] (Rising_edge_a_n_2),
        .rst(rst));
endmodule

module buildup_block_encoder_pan_0_0_block_encoder_Rising_edge_a_0
   (E,
    encoder_b,
    clk,
    enable,
    \int_cnt_reg[0] ,
    encoder_a);
  output [0:0]E;
  input encoder_b;
  input clk;
  input enable;
  input \int_cnt_reg[0] ;
  input encoder_a;

  wire [0:0]E;
  wire clk;
  wire enable;
  wire encoder_a;
  wire encoder_b;
  wire \int_cnt_reg[0] ;

  buildup_block_encoder_pan_0_0_Rising_edge_detector U0
       (.E(E),
        .clk(clk),
        .enable(enable),
        .encoder_a(encoder_a),
        .encoder_b(encoder_b),
        .\int_cnt_reg[0] (\int_cnt_reg[0] ));
endmodule

module buildup_block_encoder_pan_0_0_block_encoder_Rising_edge_detector_0_0
   (FF1,
    FF2,
    FF2_reg,
    encoder_a,
    clk,
    encoder_b);
  output FF1;
  output FF2;
  output FF2_reg;
  input encoder_a;
  input clk;
  input encoder_b;

  wire FF1;
  wire FF2;
  wire FF2_reg;
  wire clk;
  wire encoder_a;
  wire encoder_b;

  buildup_block_encoder_pan_0_0_Rising_edge_detector_0 U0
       (.FF1(FF1),
        .FF2(FF2),
        .FF2_reg_0(FF2_reg),
        .clk(clk),
        .encoder_a(encoder_a),
        .encoder_b(encoder_b));
endmodule

module buildup_block_encoder_pan_0_0_block_encoder_up_down_counter_0_0
   (Q,
    \int_cnt_reg[3] ,
    encoder_b,
    FF1,
    FF2,
    E,
    clk,
    rst);
  output [8:0]Q;
  input \int_cnt_reg[3] ;
  input encoder_b;
  input FF1;
  input FF2;
  input [0:0]E;
  input clk;
  input rst;

  wire [0:0]E;
  wire FF1;
  wire FF2;
  wire [8:0]Q;
  wire clk;
  wire encoder_b;
  wire \int_cnt_reg[3] ;
  wire rst;

  buildup_block_encoder_pan_0_0_up_down_counter U0
       (.E(E),
        .FF1(FF1),
        .FF2(FF2),
        .Q(Q),
        .clk(clk),
        .encoder_b(encoder_b),
        .\int_cnt_reg[3]_0 (\int_cnt_reg[3] ),
        .rst(rst));
endmodule

(* CHECK_LICENSE_TYPE = "buildup_block_encoder_0_2,block_encoder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "IPI" *) 
(* x_core_info = "block_encoder,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module buildup_block_encoder_pan_0_0
   (clk,
    enable,
    encoder_a,
    encoder_b,
    pulse_cnt,
    rst);
  input clk;
  input enable;
  input encoder_a;
  input encoder_b;
  output [8:0]pulse_cnt;
  input rst;

  wire clk;
  wire enable;
  wire encoder_a;
  wire encoder_b;
  wire [8:0]pulse_cnt;
  wire rst;

  (* hw_handoff = "block_encoder.hwdef" *) 
  buildup_block_encoder_pan_0_0_block_encoder U0
       (.clk(clk),
        .enable(enable),
        .encoder_a(encoder_a),
        .encoder_b(encoder_b),
        .pulse_cnt(pulse_cnt),
        .rst(rst));
endmodule

module buildup_block_encoder_pan_0_0_up_down_counter
   (Q,
    \int_cnt_reg[3]_0 ,
    encoder_b,
    FF1,
    FF2,
    E,
    clk,
    rst);
  output [8:0]Q;
  input \int_cnt_reg[3]_0 ;
  input encoder_b;
  input FF1;
  input FF2;
  input [0:0]E;
  input clk;
  input rst;

  wire [0:0]E;
  wire FF1;
  wire FF2;
  wire [8:0]Q;
  wire clk;
  wire encoder_b;
  wire \int_cnt[4]_i_2_n_0 ;
  wire \int_cnt[4]_i_3_n_0 ;
  wire \int_cnt[4]_i_4_n_0 ;
  wire \int_cnt[5]_i_2_n_0 ;
  wire \int_cnt[5]_i_3_n_0 ;
  wire \int_cnt[7]_i_2_n_0 ;
  wire \int_cnt[7]_i_3_n_0 ;
  wire \int_cnt[8]_i_4_n_0 ;
  wire \int_cnt[8]_i_5_n_0 ;
  wire \int_cnt[8]_i_6_n_0 ;
  wire \int_cnt[8]_i_7_n_0 ;
  wire \int_cnt[8]_i_8_n_0 ;
  wire \int_cnt_reg[3]_0 ;
  wire [8:0]p_0_in;
  wire rst;

  LUT6 #(
    .INIT(64'h00000000FFEF0020)) 
    \int_cnt[0]_i_1 
       (.I0(\int_cnt[8]_i_5_n_0 ),
        .I1(FF2),
        .I2(FF1),
        .I3(encoder_b),
        .I4(\int_cnt[4]_i_3_n_0 ),
        .I5(Q[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h9090909090669090)) 
    \int_cnt[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\int_cnt[4]_i_3_n_0 ),
        .I3(encoder_b),
        .I4(FF1),
        .I5(FF2),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h4EEAA004)) 
    \int_cnt[2]_i_1 
       (.I0(\int_cnt_reg[3]_0 ),
        .I1(\int_cnt[4]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h38B0B0B0B0B0B083)) 
    \int_cnt[3]_i_1 
       (.I0(\int_cnt[8]_i_5_n_0 ),
        .I1(\int_cnt_reg[3]_0 ),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hB8884474)) 
    \int_cnt[4]_i_1 
       (.I0(\int_cnt[4]_i_2_n_0 ),
        .I1(\int_cnt_reg[3]_0 ),
        .I2(\int_cnt[4]_i_3_n_0 ),
        .I3(\int_cnt[4]_i_4_n_0 ),
        .I4(Q[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \int_cnt[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\int_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \int_cnt[4]_i_3 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(\int_cnt[7]_i_3_n_0 ),
        .I3(Q[7]),
        .O(\int_cnt[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \int_cnt[4]_i_4 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\int_cnt[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8F20802F)) 
    \int_cnt[5]_i_1 
       (.I0(\int_cnt[8]_i_5_n_0 ),
        .I1(\int_cnt[5]_i_2_n_0 ),
        .I2(\int_cnt_reg[3]_0 ),
        .I3(Q[5]),
        .I4(\int_cnt[5]_i_3_n_0 ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \int_cnt[5]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\int_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \int_cnt[5]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(\int_cnt[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8F20802F)) 
    \int_cnt[6]_i_1 
       (.I0(\int_cnt[8]_i_5_n_0 ),
        .I1(\int_cnt[7]_i_2_n_0 ),
        .I2(\int_cnt_reg[3]_0 ),
        .I3(Q[6]),
        .I4(\int_cnt[7]_i_3_n_0 ),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hBBFFBBCC44004430)) 
    \int_cnt[7]_i_1 
       (.I0(\int_cnt[7]_i_2_n_0 ),
        .I1(\int_cnt_reg[3]_0 ),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(\int_cnt[7]_i_3_n_0 ),
        .I5(Q[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \int_cnt[7]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\int_cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \int_cnt[7]_i_3 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\int_cnt[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F804F80CF00C00F)) 
    \int_cnt[8]_i_2 
       (.I0(\int_cnt[8]_i_4_n_0 ),
        .I1(\int_cnt[8]_i_5_n_0 ),
        .I2(\int_cnt_reg[3]_0 ),
        .I3(Q[8]),
        .I4(\int_cnt[8]_i_6_n_0 ),
        .I5(Q[7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \int_cnt[8]_i_4 
       (.I0(Q[6]),
        .I1(\int_cnt[7]_i_2_n_0 ),
        .O(\int_cnt[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \int_cnt[8]_i_5 
       (.I0(\int_cnt[8]_i_7_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\int_cnt[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \int_cnt[8]_i_6 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\int_cnt[8]_i_8_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\int_cnt[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \int_cnt[8]_i_7 
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[6]),
        .O(\int_cnt[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \int_cnt[8]_i_8 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\int_cnt[8]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \int_cnt_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_0_in[8]),
        .Q(Q[8]));
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

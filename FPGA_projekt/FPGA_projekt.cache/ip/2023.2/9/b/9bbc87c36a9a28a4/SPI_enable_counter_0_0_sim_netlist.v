// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Apr  9 13:32:34 2024
// Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPI_enable_counter_0_0_sim_netlist.v
// Design      : SPI_enable_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SPI_enable_counter_0_0,enable_counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "enable_counter,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (en,
    rst,
    clk,
    cnt);
  input en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN SPI_SPI_clk, INSERT_VIP 0" *) input clk;
  output cnt;

  wire clk;
  wire cnt;
  wire en;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_enable_counter U0
       (.clk(clk),
        .cnt(cnt),
        .en(en),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_enable_counter
   (cnt,
    en,
    rst,
    clk);
  output cnt;
  input en;
  input rst;
  input clk;

  wire clk;
  wire cnt;
  wire [5:0]cnt_temp;
  wire \cnt_temp[0]_i_1_n_0 ;
  wire \cnt_temp[5]_i_2_n_0 ;
  wire [5:1]cnt_temp_0;
  wire en;
  wire out_temp_i_1_n_0;
  wire out_temp_i_2_n_0;
  wire rst;

  LUT6 #(
    .INIT(64'h00000000FFFEFFFF)) 
    \cnt_temp[0]_i_1 
       (.I0(cnt_temp[1]),
        .I1(cnt_temp[3]),
        .I2(cnt_temp[2]),
        .I3(cnt_temp[5]),
        .I4(cnt_temp[4]),
        .I5(cnt_temp[0]),
        .O(\cnt_temp[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_temp[1]_i_1 
       (.I0(cnt_temp[0]),
        .I1(cnt_temp[1]),
        .O(cnt_temp_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_temp[2]_i_1 
       (.I0(cnt_temp[0]),
        .I1(cnt_temp[1]),
        .I2(cnt_temp[2]),
        .O(cnt_temp_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h78F0)) 
    \cnt_temp[3]_i_1 
       (.I0(cnt_temp[0]),
        .I1(cnt_temp[1]),
        .I2(cnt_temp[3]),
        .I3(cnt_temp[2]),
        .O(cnt_temp_0[3]));
  LUT6 #(
    .INIT(64'h7FFF7FFE80008000)) 
    \cnt_temp[4]_i_1 
       (.I0(cnt_temp[0]),
        .I1(cnt_temp[1]),
        .I2(cnt_temp[3]),
        .I3(cnt_temp[2]),
        .I4(cnt_temp[5]),
        .I5(cnt_temp[4]),
        .O(cnt_temp_0[4]));
  LUT6 #(
    .INIT(64'h7FFF8000FFFF0000)) 
    \cnt_temp[5]_i_1 
       (.I0(cnt_temp[0]),
        .I1(cnt_temp[1]),
        .I2(cnt_temp[3]),
        .I3(cnt_temp[2]),
        .I4(cnt_temp[5]),
        .I5(cnt_temp[4]),
        .O(cnt_temp_0[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_temp[5]_i_2 
       (.I0(en),
        .I1(rst),
        .O(\cnt_temp[5]_i_2_n_0 ));
  FDCE \cnt_temp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_temp[5]_i_2_n_0 ),
        .D(\cnt_temp[0]_i_1_n_0 ),
        .Q(cnt_temp[0]));
  FDCE \cnt_temp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_temp[5]_i_2_n_0 ),
        .D(cnt_temp_0[1]),
        .Q(cnt_temp[1]));
  FDCE \cnt_temp_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_temp[5]_i_2_n_0 ),
        .D(cnt_temp_0[2]),
        .Q(cnt_temp[2]));
  FDCE \cnt_temp_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_temp[5]_i_2_n_0 ),
        .D(cnt_temp_0[3]),
        .Q(cnt_temp[3]));
  FDCE \cnt_temp_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_temp[5]_i_2_n_0 ),
        .D(cnt_temp_0[4]),
        .Q(cnt_temp[4]));
  FDCE \cnt_temp_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_temp[5]_i_2_n_0 ),
        .D(cnt_temp_0[5]),
        .Q(cnt_temp[5]));
  LUT3 #(
    .INIT(8'hCA)) 
    out_temp_i_1
       (.I0(cnt),
        .I1(out_temp_i_2_n_0),
        .I2(en),
        .O(out_temp_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    out_temp_i_2
       (.I0(cnt_temp[5]),
        .I1(cnt_temp[2]),
        .I2(cnt_temp[3]),
        .I3(cnt_temp[4]),
        .I4(cnt_temp[0]),
        .I5(cnt_temp[1]),
        .O(out_temp_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_temp_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_temp_i_1_n_0),
        .Q(cnt),
        .R(1'b0));
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Apr 12 13:05:38 2024
// Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ buildup_SPI_wrapper_0_3_sim_netlist.v
// Design      : buildup_SPI_wrapper_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* hw_handoff = "SPI.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI
   (SPI_chip_select,
    SPI_out,
    SPI_sample,
    encoder_in,
    fpga_clk,
    miso,
    mosi,
    rst);
  input SPI_chip_select;
  output [15:0]SPI_out;
  input SPI_sample;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.ENCODER_IN DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.ENCODER_IN, LAYERED_METADATA undef" *) input [15:0]encoder_in;
  input fpga_clk;
  output miso;
  input mosi;
  input rst;

  wire SPI_chip_select;
  wire [15:0]SPI_out;
  wire SPI_sample;
  wire enable_counter_0_cnt;
  wire [15:0]encoder_in;
  wire miso;
  wire mosi;
  wire rst;
  wire [15:0]shift_register_input_register_out;

  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "enable_counter,Vivado 2023.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_enable_counter_0_0 Prescaler
       (.cnt(enable_counter_0_cnt),
        .en(SPI_chip_select),
        .rst(rst),
        .sample(SPI_sample));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "latch,Vivado 2023.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_latch_0_0 latch_0
       (.D(shift_register_input_register_out),
        .Q(SPI_out),
        .cnt(enable_counter_0_cnt),
        .rst(rst));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "shift_register_generic,Vivado 2023.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_shift_register_input_1 shift_register_input
       (.carry_out(miso),
        .chip_select(SPI_chip_select),
        .data(mosi),
        .register_in(encoder_in),
        .register_out(shift_register_input_register_out),
        .rst(rst),
        .sample(SPI_sample));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_enable_counter_0_0
   (en,
    rst,
    sample,
    cnt);
  input en;
  input rst;
  input sample;
  output cnt;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_latch_0_0
   (rst,
    cnt,
    D,
    Q);
  input rst;
  input cnt;
  input [15:0]D;
  output [15:0]Q;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_shift_register_input_1
   (sample,
    chip_select,
    register_in,
    rst,
    data,
    register_out,
    carry_out);
  input sample;
  input chip_select;
  input [15:0]register_in;
  input rst;
  input data;
  output [15:0]register_out;
  output carry_out;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_wrapper
   (SPI_out,
    miso,
    SPI_chip_select,
    SPI_sample,
    encoder_in,
    mosi,
    rst);
  output [15:0]SPI_out;
  output miso;
  input SPI_chip_select;
  input SPI_sample;
  input [15:0]encoder_in;
  input mosi;
  input rst;

  wire SPI_chip_select;
  wire [15:0]SPI_out;
  wire SPI_sample;
  wire [15:0]encoder_in;
  wire miso;
  wire mosi;
  wire rst;

  (* hw_handoff = "SPI.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI SPI_i
       (.SPI_chip_select(SPI_chip_select),
        .SPI_out(SPI_out),
        .SPI_sample(SPI_sample),
        .encoder_in(encoder_in),
        .fpga_clk(1'b0),
        .miso(miso),
        .mosi(mosi),
        .rst(rst));
endmodule

(* CHECK_LICENSE_TYPE = "buildup_SPI_wrapper_0_3,SPI_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SPI_wrapper,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (SPI_chip_select,
    SPI_out,
    SPI_sample,
    encoder_in,
    fpga_clk,
    miso,
    mosi,
    rst);
  input SPI_chip_select;
  output [15:0]SPI_out;
  input SPI_sample;
  input [15:0]encoder_in;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 fpga_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME fpga_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN buildup_clk, INSERT_VIP 0" *) input fpga_clk;
  output miso;
  input mosi;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire SPI_chip_select;
  wire [15:0]SPI_out;
  wire SPI_sample;
  wire [15:0]encoder_in;
  wire miso;
  wire mosi;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_wrapper U0
       (.SPI_chip_select(SPI_chip_select),
        .SPI_out(SPI_out),
        .SPI_sample(SPI_sample),
        .encoder_in(encoder_in),
        .miso(miso),
        .mosi(mosi),
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue May 14 09:50:24 2024
// Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top buildup_pwm_gen_0_3 -prefix
//               buildup_pwm_gen_0_3_ buildup_pwm_gen_0_3_sim_netlist.v
// Design      : buildup_pwm_gen_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "buildup_pwm_gen_0_3,pwm_gen,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pwm_gen,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module buildup_pwm_gen_0_3
   (cnt,
    duty,
    pwm);
  input [7:0]cnt;
  input [7:0]duty;
  output pwm;

  wire [7:0]cnt;
  wire [7:0]duty;
  wire pwm;

  buildup_pwm_gen_0_3_pwm_gen U0
       (.cnt(cnt),
        .duty(duty),
        .pwm(pwm));
endmodule

module buildup_pwm_gen_0_3_pwm_gen
   (pwm,
    duty,
    cnt);
  output pwm;
  input [7:0]duty;
  input [7:0]cnt;

  wire [7:0]cnt;
  wire [7:0]duty;
  wire pwm;
  wire pwm_INST_0_i_1_n_0;
  wire pwm_INST_0_i_2_n_0;
  wire pwm_INST_0_i_3_n_0;
  wire pwm_INST_0_i_4_n_0;
  wire pwm_INST_0_i_5_n_0;
  wire pwm_INST_0_i_6_n_0;
  wire pwm_INST_0_i_7_n_0;
  wire pwm_INST_0_i_8_n_0;
  wire pwm_INST_0_n_1;
  wire pwm_INST_0_n_2;
  wire pwm_INST_0_n_3;
  wire [3:0]NLW_pwm_INST_0_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_INST_0
       (.CI(1'b0),
        .CO({pwm,pwm_INST_0_n_1,pwm_INST_0_n_2,pwm_INST_0_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_INST_0_i_1_n_0,pwm_INST_0_i_2_n_0,pwm_INST_0_i_3_n_0,pwm_INST_0_i_4_n_0}),
        .O(NLW_pwm_INST_0_O_UNCONNECTED[3:0]),
        .S({pwm_INST_0_i_5_n_0,pwm_INST_0_i_6_n_0,pwm_INST_0_i_7_n_0,pwm_INST_0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_INST_0_i_1
       (.I0(duty[6]),
        .I1(cnt[6]),
        .I2(cnt[7]),
        .I3(duty[7]),
        .O(pwm_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_INST_0_i_2
       (.I0(duty[4]),
        .I1(cnt[4]),
        .I2(cnt[5]),
        .I3(duty[5]),
        .O(pwm_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_INST_0_i_3
       (.I0(duty[2]),
        .I1(cnt[2]),
        .I2(cnt[3]),
        .I3(duty[3]),
        .O(pwm_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_INST_0_i_4
       (.I0(duty[0]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(duty[1]),
        .O(pwm_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_INST_0_i_5
       (.I0(duty[6]),
        .I1(cnt[6]),
        .I2(duty[7]),
        .I3(cnt[7]),
        .O(pwm_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_INST_0_i_6
       (.I0(duty[4]),
        .I1(cnt[4]),
        .I2(duty[5]),
        .I3(cnt[5]),
        .O(pwm_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_INST_0_i_7
       (.I0(duty[2]),
        .I1(cnt[2]),
        .I2(duty[3]),
        .I3(cnt[3]),
        .O(pwm_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_INST_0_i_8
       (.I0(duty[0]),
        .I1(cnt[0]),
        .I2(duty[1]),
        .I3(cnt[1]),
        .O(pwm_INST_0_i_8_n_0));
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
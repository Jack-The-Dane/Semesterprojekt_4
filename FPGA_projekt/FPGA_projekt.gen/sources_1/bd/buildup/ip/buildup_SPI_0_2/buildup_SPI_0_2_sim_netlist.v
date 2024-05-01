// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed May  1 10:45:18 2024
// Host        : Cornelia running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Corne/Documents/MEGA/4.
//               Semester/Semesterprojekt/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/buildup/ip/buildup_SPI_0_2/buildup_SPI_0_2_sim_netlist.v}
// Design      : buildup_SPI_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "buildup_SPI_0_2,SPI,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "IPI" *) 
(* x_core_info = "SPI,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module buildup_SPI_0_2
   (SPI_chip_select,
    SPI_in,
    SPI_out,
    SPI_sample,
    miso,
    mosi,
    rst);
  input SPI_chip_select;
  input [19:0]SPI_in;
  output [19:0]SPI_out;
  input SPI_sample;
  output miso;
  input mosi;
  input rst;

  wire SPI_chip_select;
  wire [19:0]SPI_in;
  wire [19:0]SPI_out;
  wire SPI_sample;
  wire miso;
  wire mosi;

  (* hw_handoff = "SPI.hwdef" *) 
  buildup_SPI_0_2_SPI U0
       (.SPI_chip_select(SPI_chip_select),
        .SPI_in(SPI_in),
        .SPI_out(SPI_out),
        .SPI_sample(SPI_sample),
        .miso(miso),
        .mosi(mosi),
        .rst(1'b0));
endmodule

(* ORIG_REF_NAME = "SPI" *) (* hw_handoff = "SPI.hwdef" *) 
module buildup_SPI_0_2_SPI
   (SPI_chip_select,
    SPI_in,
    SPI_out,
    SPI_sample,
    miso,
    mosi,
    rst);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input SPI_chip_select;
  input [19:0]SPI_in;
  output [19:0]SPI_out;
  input SPI_sample;
  output miso;
  input mosi;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire SPI_chip_select;
  wire [19:0]SPI_in;
  wire [19:0]SPI_out;
  wire SPI_sample;
  wire miso;
  wire mosi;
  wire out_temp;
  wire p_1_in;
  wire [19:1]p_2_in;

  (* x_core_info = "enable_counter,Vivado 2023.2" *) 
  buildup_SPI_0_2_SPI_enable_counter_0_0 Prescaler
       (.CLK(out_temp),
        .SPI_chip_select(SPI_chip_select),
        .SPI_sample(SPI_sample));
  (* x_core_info = "latch,Vivado 2023.2" *) 
  buildup_SPI_0_2_SPI_latch_0_0 latch_0
       (.CLK(out_temp),
        .D({p_1_in,p_2_in}),
        .SPI_out(SPI_out));
  (* x_core_info = "shift_register_generic,Vivado 2023.2" *) 
  buildup_SPI_0_2_SPI_shift_register_input_1 spi_in_RnM
       (.D({p_1_in,p_2_in}),
        .SPI_chip_select(SPI_chip_select),
        .SPI_in(SPI_in),
        .SPI_sample(SPI_sample),
        .miso(miso),
        .mosi(mosi));
endmodule

(* ORIG_REF_NAME = "SPI_enable_counter_0_0" *) 
module buildup_SPI_0_2_SPI_enable_counter_0_0
   (CLK,
    SPI_sample,
    SPI_chip_select);
  output CLK;
  input SPI_sample;
  input SPI_chip_select;

  wire CLK;
  wire SPI_chip_select;
  wire SPI_sample;

  buildup_SPI_0_2_enable_counter U0
       (.CLK(CLK),
        .SPI_chip_select(SPI_chip_select),
        .SPI_sample(SPI_sample));
endmodule

(* ORIG_REF_NAME = "SPI_latch_0_0" *) 
module buildup_SPI_0_2_SPI_latch_0_0
   (SPI_out,
    D,
    CLK);
  output [19:0]SPI_out;
  input [19:0]D;
  input CLK;

  wire CLK;
  wire [19:0]D;
  wire [19:0]SPI_out;

  buildup_SPI_0_2_latch U0
       (.CLK(CLK),
        .D(D),
        .SPI_out(SPI_out));
endmodule

(* ORIG_REF_NAME = "SPI_shift_register_input_1" *) 
module buildup_SPI_0_2_SPI_shift_register_input_1
   (miso,
    D,
    SPI_sample,
    mosi,
    SPI_chip_select,
    SPI_in);
  output miso;
  output [19:0]D;
  input SPI_sample;
  input mosi;
  input SPI_chip_select;
  input [19:0]SPI_in;

  wire [19:0]D;
  wire SPI_chip_select;
  wire [19:0]SPI_in;
  wire SPI_sample;
  wire miso;
  wire mosi;

  buildup_SPI_0_2_shift_register_generic U0
       (.D(D),
        .SPI_chip_select(SPI_chip_select),
        .SPI_in(SPI_in),
        .SPI_sample(SPI_sample),
        .miso(miso),
        .mosi(mosi));
endmodule

(* ORIG_REF_NAME = "enable_counter" *) 
module buildup_SPI_0_2_enable_counter
   (CLK,
    SPI_sample,
    SPI_chip_select);
  output CLK;
  input SPI_sample;
  input SPI_chip_select;

  wire CLK;
  wire SPI_chip_select;
  wire SPI_sample;
  wire [5:0]cnt_temp;
  wire \cnt_temp[0]_i_1_n_0 ;
  wire [5:1]cnt_temp_0;
  wire out_temp_n_0;
  wire p_0_in;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt_temp[0]_i_1 
       (.I0(cnt_temp[0]),
        .O(\cnt_temp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_temp[1]_i_1 
       (.I0(cnt_temp[0]),
        .I1(cnt_temp[1]),
        .O(cnt_temp_0[1]));
  LUT6 #(
    .INIT(64'h55A855AAFF00FF00)) 
    \cnt_temp[2]_i_1 
       (.I0(cnt_temp[0]),
        .I1(cnt_temp[5]),
        .I2(cnt_temp[3]),
        .I3(cnt_temp[2]),
        .I4(cnt_temp[4]),
        .I5(cnt_temp[1]),
        .O(cnt_temp_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \cnt_temp[3]_i_1 
       (.I0(cnt_temp[0]),
        .I1(cnt_temp[3]),
        .I2(cnt_temp[2]),
        .I3(cnt_temp[1]),
        .O(cnt_temp_0[3]));
  LUT6 #(
    .INIT(64'h5FFDA000FFFF0000)) 
    \cnt_temp[4]_i_1 
       (.I0(cnt_temp[0]),
        .I1(cnt_temp[5]),
        .I2(cnt_temp[3]),
        .I3(cnt_temp[2]),
        .I4(cnt_temp[4]),
        .I5(cnt_temp[1]),
        .O(cnt_temp_0[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_temp[5]_i_1 
       (.I0(SPI_chip_select),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCCC)) 
    \cnt_temp[5]_i_2 
       (.I0(cnt_temp[0]),
        .I1(cnt_temp[5]),
        .I2(cnt_temp[3]),
        .I3(cnt_temp[2]),
        .I4(cnt_temp[4]),
        .I5(cnt_temp[1]),
        .O(cnt_temp_0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_temp_reg[0] 
       (.C(SPI_sample),
        .CE(p_0_in),
        .CLR(SPI_chip_select),
        .D(\cnt_temp[0]_i_1_n_0 ),
        .Q(cnt_temp[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_temp_reg[1] 
       (.C(SPI_sample),
        .CE(p_0_in),
        .CLR(SPI_chip_select),
        .D(cnt_temp_0[1]),
        .Q(cnt_temp[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_temp_reg[2] 
       (.C(SPI_sample),
        .CE(p_0_in),
        .CLR(SPI_chip_select),
        .D(cnt_temp_0[2]),
        .Q(cnt_temp[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_temp_reg[3] 
       (.C(SPI_sample),
        .CE(p_0_in),
        .CLR(SPI_chip_select),
        .D(cnt_temp_0[3]),
        .Q(cnt_temp[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_temp_reg[4] 
       (.C(SPI_sample),
        .CE(p_0_in),
        .CLR(SPI_chip_select),
        .D(cnt_temp_0[4]),
        .Q(cnt_temp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_temp_reg[5] 
       (.C(SPI_sample),
        .CE(p_0_in),
        .CLR(SPI_chip_select),
        .D(cnt_temp_0[5]),
        .Q(cnt_temp[5]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    out_temp
       (.I0(cnt_temp[5]),
        .I1(cnt_temp[2]),
        .I2(cnt_temp[3]),
        .I3(cnt_temp[4]),
        .I4(cnt_temp[0]),
        .I5(cnt_temp[1]),
        .O(out_temp_n_0));
  FDCE #(
    .INIT(1'b0)) 
    out_temp_reg
       (.C(SPI_sample),
        .CE(p_0_in),
        .CLR(SPI_chip_select),
        .D(out_temp_n_0),
        .Q(CLK));
endmodule

(* ORIG_REF_NAME = "latch" *) 
module buildup_SPI_0_2_latch
   (SPI_out,
    D,
    CLK);
  output [19:0]SPI_out;
  input [19:0]D;
  input CLK;

  wire CLK;
  wire [19:0]D;
  wire [19:0]SPI_out;

  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(SPI_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(SPI_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[11]),
        .Q(SPI_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[12]),
        .Q(SPI_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[13]),
        .Q(SPI_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[14]),
        .Q(SPI_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[15]),
        .Q(SPI_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[16]),
        .Q(SPI_out[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[17]),
        .Q(SPI_out[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[18]),
        .Q(SPI_out[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[19]),
        .Q(SPI_out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(SPI_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(SPI_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(SPI_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(SPI_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(SPI_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(SPI_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(SPI_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(SPI_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(SPI_out[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "shift_register_generic" *) 
module buildup_SPI_0_2_shift_register_generic
   (miso,
    D,
    SPI_sample,
    mosi,
    SPI_chip_select,
    SPI_in);
  output miso;
  output [19:0]D;
  input SPI_sample;
  input mosi;
  input SPI_chip_select;
  input [19:0]SPI_in;

  wire [19:0]D;
  wire SPI_chip_select;
  wire [19:0]SPI_in;
  wire SPI_sample;
  wire carry_out_i_1_n_0;
  wire miso;
  wire mosi;
  wire \register_data_reg[0]_C_n_0 ;
  wire \register_data_reg[0]_LDC_i_1_n_0 ;
  wire \register_data_reg[0]_LDC_i_2_n_0 ;
  wire \register_data_reg[0]_LDC_n_0 ;
  wire \register_data_reg[0]_P_n_0 ;
  wire \register_data_reg[10]_C_n_0 ;
  wire \register_data_reg[10]_LDC_i_1_n_0 ;
  wire \register_data_reg[10]_LDC_i_2_n_0 ;
  wire \register_data_reg[10]_LDC_n_0 ;
  wire \register_data_reg[10]_P_n_0 ;
  wire \register_data_reg[11]_C_n_0 ;
  wire \register_data_reg[11]_LDC_i_1_n_0 ;
  wire \register_data_reg[11]_LDC_i_2_n_0 ;
  wire \register_data_reg[11]_LDC_n_0 ;
  wire \register_data_reg[11]_P_n_0 ;
  wire \register_data_reg[12]_C_n_0 ;
  wire \register_data_reg[12]_LDC_i_1_n_0 ;
  wire \register_data_reg[12]_LDC_i_2_n_0 ;
  wire \register_data_reg[12]_LDC_n_0 ;
  wire \register_data_reg[12]_P_n_0 ;
  wire \register_data_reg[13]_C_n_0 ;
  wire \register_data_reg[13]_LDC_i_1_n_0 ;
  wire \register_data_reg[13]_LDC_i_2_n_0 ;
  wire \register_data_reg[13]_LDC_n_0 ;
  wire \register_data_reg[13]_P_n_0 ;
  wire \register_data_reg[14]_C_n_0 ;
  wire \register_data_reg[14]_LDC_i_1_n_0 ;
  wire \register_data_reg[14]_LDC_i_2_n_0 ;
  wire \register_data_reg[14]_LDC_n_0 ;
  wire \register_data_reg[14]_P_n_0 ;
  wire \register_data_reg[15]_C_n_0 ;
  wire \register_data_reg[15]_LDC_i_1_n_0 ;
  wire \register_data_reg[15]_LDC_i_2_n_0 ;
  wire \register_data_reg[15]_LDC_n_0 ;
  wire \register_data_reg[15]_P_n_0 ;
  wire \register_data_reg[16]_C_n_0 ;
  wire \register_data_reg[16]_LDC_i_1_n_0 ;
  wire \register_data_reg[16]_LDC_i_2_n_0 ;
  wire \register_data_reg[16]_LDC_n_0 ;
  wire \register_data_reg[16]_P_n_0 ;
  wire \register_data_reg[17]_C_n_0 ;
  wire \register_data_reg[17]_LDC_i_1_n_0 ;
  wire \register_data_reg[17]_LDC_i_2_n_0 ;
  wire \register_data_reg[17]_LDC_n_0 ;
  wire \register_data_reg[17]_P_n_0 ;
  wire \register_data_reg[18]_C_n_0 ;
  wire \register_data_reg[18]_LDC_i_1_n_0 ;
  wire \register_data_reg[18]_LDC_i_2_n_0 ;
  wire \register_data_reg[18]_LDC_n_0 ;
  wire \register_data_reg[18]_P_n_0 ;
  wire \register_data_reg[19]_C_n_0 ;
  wire \register_data_reg[19]_LDC_i_1_n_0 ;
  wire \register_data_reg[19]_LDC_i_2_n_0 ;
  wire \register_data_reg[19]_LDC_n_0 ;
  wire \register_data_reg[19]_P_n_0 ;
  wire \register_data_reg[1]_C_n_0 ;
  wire \register_data_reg[1]_LDC_i_1_n_0 ;
  wire \register_data_reg[1]_LDC_i_2_n_0 ;
  wire \register_data_reg[1]_LDC_n_0 ;
  wire \register_data_reg[1]_P_n_0 ;
  wire \register_data_reg[2]_C_n_0 ;
  wire \register_data_reg[2]_LDC_i_1_n_0 ;
  wire \register_data_reg[2]_LDC_i_2_n_0 ;
  wire \register_data_reg[2]_LDC_n_0 ;
  wire \register_data_reg[2]_P_n_0 ;
  wire \register_data_reg[3]_C_n_0 ;
  wire \register_data_reg[3]_LDC_i_1_n_0 ;
  wire \register_data_reg[3]_LDC_i_2_n_0 ;
  wire \register_data_reg[3]_LDC_n_0 ;
  wire \register_data_reg[3]_P_n_0 ;
  wire \register_data_reg[4]_C_n_0 ;
  wire \register_data_reg[4]_LDC_i_1_n_0 ;
  wire \register_data_reg[4]_LDC_i_2_n_0 ;
  wire \register_data_reg[4]_LDC_n_0 ;
  wire \register_data_reg[4]_P_n_0 ;
  wire \register_data_reg[5]_C_n_0 ;
  wire \register_data_reg[5]_LDC_i_1_n_0 ;
  wire \register_data_reg[5]_LDC_i_2_n_0 ;
  wire \register_data_reg[5]_LDC_n_0 ;
  wire \register_data_reg[5]_P_n_0 ;
  wire \register_data_reg[6]_C_n_0 ;
  wire \register_data_reg[6]_LDC_i_1_n_0 ;
  wire \register_data_reg[6]_LDC_i_2_n_0 ;
  wire \register_data_reg[6]_LDC_n_0 ;
  wire \register_data_reg[6]_P_n_0 ;
  wire \register_data_reg[7]_C_n_0 ;
  wire \register_data_reg[7]_LDC_i_1_n_0 ;
  wire \register_data_reg[7]_LDC_i_2_n_0 ;
  wire \register_data_reg[7]_LDC_n_0 ;
  wire \register_data_reg[7]_P_n_0 ;
  wire \register_data_reg[8]_C_n_0 ;
  wire \register_data_reg[8]_LDC_i_1_n_0 ;
  wire \register_data_reg[8]_LDC_i_2_n_0 ;
  wire \register_data_reg[8]_LDC_n_0 ;
  wire \register_data_reg[8]_P_n_0 ;
  wire \register_data_reg[9]_C_n_0 ;
  wire \register_data_reg[9]_LDC_i_1_n_0 ;
  wire \register_data_reg[9]_LDC_i_2_n_0 ;
  wire \register_data_reg[9]_LDC_n_0 ;
  wire \register_data_reg[9]_P_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    carry_out_i_1
       (.I0(\register_data_reg[19]_P_n_0 ),
        .I1(\register_data_reg[19]_LDC_n_0 ),
        .I2(\register_data_reg[19]_C_n_0 ),
        .I3(SPI_chip_select),
        .I4(miso),
        .O(carry_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    carry_out_reg
       (.C(SPI_sample),
        .CE(1'b1),
        .D(carry_out_i_1_n_0),
        .Q(miso),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[0]_i_1 
       (.I0(\register_data_reg[0]_P_n_0 ),
        .I1(\register_data_reg[0]_LDC_n_0 ),
        .I2(\register_data_reg[0]_C_n_0 ),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[10]_i_1 
       (.I0(\register_data_reg[10]_P_n_0 ),
        .I1(\register_data_reg[10]_LDC_n_0 ),
        .I2(\register_data_reg[10]_C_n_0 ),
        .O(D[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[11]_i_1 
       (.I0(\register_data_reg[11]_P_n_0 ),
        .I1(\register_data_reg[11]_LDC_n_0 ),
        .I2(\register_data_reg[11]_C_n_0 ),
        .O(D[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[12]_i_1 
       (.I0(\register_data_reg[12]_P_n_0 ),
        .I1(\register_data_reg[12]_LDC_n_0 ),
        .I2(\register_data_reg[12]_C_n_0 ),
        .O(D[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[13]_i_1 
       (.I0(\register_data_reg[13]_P_n_0 ),
        .I1(\register_data_reg[13]_LDC_n_0 ),
        .I2(\register_data_reg[13]_C_n_0 ),
        .O(D[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[14]_i_1 
       (.I0(\register_data_reg[14]_P_n_0 ),
        .I1(\register_data_reg[14]_LDC_n_0 ),
        .I2(\register_data_reg[14]_C_n_0 ),
        .O(D[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[15]_i_1 
       (.I0(\register_data_reg[15]_P_n_0 ),
        .I1(\register_data_reg[15]_LDC_n_0 ),
        .I2(\register_data_reg[15]_C_n_0 ),
        .O(D[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[16]_i_1 
       (.I0(\register_data_reg[16]_P_n_0 ),
        .I1(\register_data_reg[16]_LDC_n_0 ),
        .I2(\register_data_reg[16]_C_n_0 ),
        .O(D[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[17]_i_1 
       (.I0(\register_data_reg[17]_P_n_0 ),
        .I1(\register_data_reg[17]_LDC_n_0 ),
        .I2(\register_data_reg[17]_C_n_0 ),
        .O(D[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[18]_i_1 
       (.I0(\register_data_reg[18]_P_n_0 ),
        .I1(\register_data_reg[18]_LDC_n_0 ),
        .I2(\register_data_reg[18]_C_n_0 ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[19]_i_1 
       (.I0(\register_data_reg[19]_P_n_0 ),
        .I1(\register_data_reg[19]_LDC_n_0 ),
        .I2(\register_data_reg[19]_C_n_0 ),
        .O(D[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[1]_i_1 
       (.I0(\register_data_reg[1]_P_n_0 ),
        .I1(\register_data_reg[1]_LDC_n_0 ),
        .I2(\register_data_reg[1]_C_n_0 ),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[2]_i_1 
       (.I0(\register_data_reg[2]_P_n_0 ),
        .I1(\register_data_reg[2]_LDC_n_0 ),
        .I2(\register_data_reg[2]_C_n_0 ),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[3]_i_1 
       (.I0(\register_data_reg[3]_P_n_0 ),
        .I1(\register_data_reg[3]_LDC_n_0 ),
        .I2(\register_data_reg[3]_C_n_0 ),
        .O(D[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[4]_i_1 
       (.I0(\register_data_reg[4]_P_n_0 ),
        .I1(\register_data_reg[4]_LDC_n_0 ),
        .I2(\register_data_reg[4]_C_n_0 ),
        .O(D[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[5]_i_1 
       (.I0(\register_data_reg[5]_P_n_0 ),
        .I1(\register_data_reg[5]_LDC_n_0 ),
        .I2(\register_data_reg[5]_C_n_0 ),
        .O(D[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[6]_i_1 
       (.I0(\register_data_reg[6]_P_n_0 ),
        .I1(\register_data_reg[6]_LDC_n_0 ),
        .I2(\register_data_reg[6]_C_n_0 ),
        .O(D[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[7]_i_1 
       (.I0(\register_data_reg[7]_P_n_0 ),
        .I1(\register_data_reg[7]_LDC_n_0 ),
        .I2(\register_data_reg[7]_C_n_0 ),
        .O(D[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[8]_i_1 
       (.I0(\register_data_reg[8]_P_n_0 ),
        .I1(\register_data_reg[8]_LDC_n_0 ),
        .I2(\register_data_reg[8]_C_n_0 ),
        .O(D[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[9]_i_1 
       (.I0(\register_data_reg[9]_P_n_0 ),
        .I1(\register_data_reg[9]_LDC_n_0 ),
        .I2(\register_data_reg[9]_C_n_0 ),
        .O(D[9]));
  FDCE \register_data_reg[0]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[0]_LDC_i_2_n_0 ),
        .D(mosi),
        .Q(\register_data_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[0]_LDC 
       (.CLR(\register_data_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[0]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[0]_LDC_i_1 
       (.I0(SPI_in[0]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[0]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[0]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[0]),
        .O(\register_data_reg[0]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[0]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(mosi),
        .PRE(\register_data_reg[0]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[0]_P_n_0 ));
  FDCE \register_data_reg[10]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[10]_LDC_i_2_n_0 ),
        .D(D[9]),
        .Q(\register_data_reg[10]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[10]_LDC 
       (.CLR(\register_data_reg[10]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[10]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[10]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[10]_LDC_i_1 
       (.I0(SPI_in[10]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[10]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[10]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[10]),
        .O(\register_data_reg[10]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[10]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[9]),
        .PRE(\register_data_reg[10]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[10]_P_n_0 ));
  FDCE \register_data_reg[11]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[11]_LDC_i_2_n_0 ),
        .D(D[10]),
        .Q(\register_data_reg[11]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[11]_LDC 
       (.CLR(\register_data_reg[11]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[11]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[11]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[11]_LDC_i_1 
       (.I0(SPI_in[11]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[11]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[11]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[11]),
        .O(\register_data_reg[11]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[11]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[10]),
        .PRE(\register_data_reg[11]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[11]_P_n_0 ));
  FDCE \register_data_reg[12]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[12]_LDC_i_2_n_0 ),
        .D(D[11]),
        .Q(\register_data_reg[12]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[12]_LDC 
       (.CLR(\register_data_reg[12]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[12]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[12]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[12]_LDC_i_1 
       (.I0(SPI_in[12]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[12]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[12]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[12]),
        .O(\register_data_reg[12]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[12]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[11]),
        .PRE(\register_data_reg[12]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[12]_P_n_0 ));
  FDCE \register_data_reg[13]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[13]_LDC_i_2_n_0 ),
        .D(D[12]),
        .Q(\register_data_reg[13]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[13]_LDC 
       (.CLR(\register_data_reg[13]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[13]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[13]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[13]_LDC_i_1 
       (.I0(SPI_in[13]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[13]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[13]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[13]),
        .O(\register_data_reg[13]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[13]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[12]),
        .PRE(\register_data_reg[13]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[13]_P_n_0 ));
  FDCE \register_data_reg[14]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[14]_LDC_i_2_n_0 ),
        .D(D[13]),
        .Q(\register_data_reg[14]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[14]_LDC 
       (.CLR(\register_data_reg[14]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[14]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[14]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[14]_LDC_i_1 
       (.I0(SPI_in[14]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[14]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[14]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[14]),
        .O(\register_data_reg[14]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[14]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[13]),
        .PRE(\register_data_reg[14]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[14]_P_n_0 ));
  FDCE \register_data_reg[15]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[15]_LDC_i_2_n_0 ),
        .D(D[14]),
        .Q(\register_data_reg[15]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[15]_LDC 
       (.CLR(\register_data_reg[15]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[15]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[15]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[15]_LDC_i_1 
       (.I0(SPI_in[15]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[15]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[15]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[15]),
        .O(\register_data_reg[15]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[15]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[14]),
        .PRE(\register_data_reg[15]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[15]_P_n_0 ));
  FDCE \register_data_reg[16]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[16]_LDC_i_2_n_0 ),
        .D(D[15]),
        .Q(\register_data_reg[16]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[16]_LDC 
       (.CLR(\register_data_reg[16]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[16]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[16]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[16]_LDC_i_1 
       (.I0(SPI_in[16]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[16]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[16]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[16]),
        .O(\register_data_reg[16]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[16]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[15]),
        .PRE(\register_data_reg[16]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[16]_P_n_0 ));
  FDCE \register_data_reg[17]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[17]_LDC_i_2_n_0 ),
        .D(D[16]),
        .Q(\register_data_reg[17]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[17]_LDC 
       (.CLR(\register_data_reg[17]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[17]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[17]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[17]_LDC_i_1 
       (.I0(SPI_in[17]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[17]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[17]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[17]),
        .O(\register_data_reg[17]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[17]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[16]),
        .PRE(\register_data_reg[17]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[17]_P_n_0 ));
  FDCE \register_data_reg[18]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[18]_LDC_i_2_n_0 ),
        .D(D[17]),
        .Q(\register_data_reg[18]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[18]_LDC 
       (.CLR(\register_data_reg[18]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[18]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[18]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[18]_LDC_i_1 
       (.I0(SPI_in[18]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[18]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[18]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[18]),
        .O(\register_data_reg[18]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[18]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[17]),
        .PRE(\register_data_reg[18]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[18]_P_n_0 ));
  FDCE \register_data_reg[19]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[19]_LDC_i_2_n_0 ),
        .D(D[18]),
        .Q(\register_data_reg[19]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[19]_LDC 
       (.CLR(\register_data_reg[19]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[19]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[19]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[19]_LDC_i_1 
       (.I0(SPI_in[19]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[19]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[19]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[19]),
        .O(\register_data_reg[19]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[19]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[18]),
        .PRE(\register_data_reg[19]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[19]_P_n_0 ));
  FDCE \register_data_reg[1]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[1]_LDC_i_2_n_0 ),
        .D(D[0]),
        .Q(\register_data_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[1]_LDC 
       (.CLR(\register_data_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[1]_LDC_i_1 
       (.I0(SPI_in[1]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[1]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[1]),
        .O(\register_data_reg[1]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[1]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[0]),
        .PRE(\register_data_reg[1]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[1]_P_n_0 ));
  FDCE \register_data_reg[2]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[2]_LDC_i_2_n_0 ),
        .D(D[1]),
        .Q(\register_data_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[2]_LDC 
       (.CLR(\register_data_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[2]_LDC_i_1 
       (.I0(SPI_in[2]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[2]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[2]),
        .O(\register_data_reg[2]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[2]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[1]),
        .PRE(\register_data_reg[2]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[2]_P_n_0 ));
  FDCE \register_data_reg[3]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[3]_LDC_i_2_n_0 ),
        .D(D[2]),
        .Q(\register_data_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[3]_LDC 
       (.CLR(\register_data_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[3]_LDC_i_1 
       (.I0(SPI_in[3]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[3]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[3]),
        .O(\register_data_reg[3]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[3]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[2]),
        .PRE(\register_data_reg[3]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[3]_P_n_0 ));
  FDCE \register_data_reg[4]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[4]_LDC_i_2_n_0 ),
        .D(D[3]),
        .Q(\register_data_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[4]_LDC 
       (.CLR(\register_data_reg[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[4]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[4]_LDC_i_1 
       (.I0(SPI_in[4]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[4]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[4]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[4]),
        .O(\register_data_reg[4]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[4]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[3]),
        .PRE(\register_data_reg[4]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[4]_P_n_0 ));
  FDCE \register_data_reg[5]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[5]_LDC_i_2_n_0 ),
        .D(D[4]),
        .Q(\register_data_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[5]_LDC 
       (.CLR(\register_data_reg[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[5]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[5]_LDC_i_1 
       (.I0(SPI_in[5]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[5]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[5]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[5]),
        .O(\register_data_reg[5]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[5]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[4]),
        .PRE(\register_data_reg[5]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[5]_P_n_0 ));
  FDCE \register_data_reg[6]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[6]_LDC_i_2_n_0 ),
        .D(D[5]),
        .Q(\register_data_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[6]_LDC 
       (.CLR(\register_data_reg[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[6]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[6]_LDC_i_1 
       (.I0(SPI_in[6]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[6]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[6]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[6]),
        .O(\register_data_reg[6]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[6]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[5]),
        .PRE(\register_data_reg[6]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[6]_P_n_0 ));
  FDCE \register_data_reg[7]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[7]_LDC_i_2_n_0 ),
        .D(D[6]),
        .Q(\register_data_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[7]_LDC 
       (.CLR(\register_data_reg[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[7]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[7]_LDC_i_1 
       (.I0(SPI_in[7]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[7]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[7]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[7]),
        .O(\register_data_reg[7]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[7]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[6]),
        .PRE(\register_data_reg[7]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[7]_P_n_0 ));
  FDCE \register_data_reg[8]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[8]_LDC_i_2_n_0 ),
        .D(D[7]),
        .Q(\register_data_reg[8]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[8]_LDC 
       (.CLR(\register_data_reg[8]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[8]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[8]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[8]_LDC_i_1 
       (.I0(SPI_in[8]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[8]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[8]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[8]),
        .O(\register_data_reg[8]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[8]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[7]),
        .PRE(\register_data_reg[8]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[8]_P_n_0 ));
  FDCE \register_data_reg[9]_C 
       (.C(SPI_sample),
        .CE(1'b1),
        .CLR(\register_data_reg[9]_LDC_i_2_n_0 ),
        .D(D[8]),
        .Q(\register_data_reg[9]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \register_data_reg[9]_LDC 
       (.CLR(\register_data_reg[9]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\register_data_reg[9]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\register_data_reg[9]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \register_data_reg[9]_LDC_i_1 
       (.I0(SPI_in[9]),
        .I1(SPI_chip_select),
        .O(\register_data_reg[9]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_data_reg[9]_LDC_i_2 
       (.I0(SPI_chip_select),
        .I1(SPI_in[9]),
        .O(\register_data_reg[9]_LDC_i_2_n_0 ));
  FDPE \register_data_reg[9]_P 
       (.C(SPI_sample),
        .CE(1'b1),
        .D(D[8]),
        .PRE(\register_data_reg[9]_LDC_i_1_n_0 ),
        .Q(\register_data_reg[9]_P_n_0 ));
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

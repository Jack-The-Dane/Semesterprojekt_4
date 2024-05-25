// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri May 24 13:13:20 2024
// Host        : Cornelia running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Corne/Documents/MEGA/4.
//               Semester/Semesterprojekt/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/buildup/ip/buildup_spi_sub_0_0/buildup_spi_sub_0_0_sim_netlist.v}
// Design      : buildup_spi_sub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "buildup_spi_sub_0_0,spi_sub,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "spi_sub,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module buildup_spi_sub_0_0
   (clk,
    rst,
    SCLK_rising,
    SCLK_falling,
    MOSI,
    CS,
    data_in,
    MISO,
    data_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN buildup_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input SCLK_rising;
  input SCLK_falling;
  input MOSI;
  input CS;
  input [19:0]data_in;
  output MISO;
  output [19:0]data_out;

  wire CS;
  wire MISO;
  wire MOSI;
  wire SCLK_falling;
  wire SCLK_rising;
  wire clk;
  wire [19:0]data_in;
  wire [19:0]data_out;
  wire rst;

  buildup_spi_sub_0_0_spi_sub U0
       (.CS(CS),
        .MISO(MISO),
        .MOSI(MOSI),
        .SCLK_falling(SCLK_falling),
        .SCLK_rising(SCLK_rising),
        .clk(clk),
        .data_in(data_in),
        .data_out(data_out),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "spi_sub" *) 
module buildup_spi_sub_0_0_spi_sub
   (MISO,
    data_out,
    rst,
    clk,
    SCLK_falling,
    CS,
    SCLK_rising,
    data_in,
    MOSI);
  output MISO;
  output [19:0]data_out;
  input rst;
  input clk;
  input SCLK_falling;
  input CS;
  input SCLK_rising;
  input [19:0]data_in;
  input MOSI;

  wire CS;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_current_state_reg_n_0_[3] ;
  wire \FSM_onehot_current_state_reg_n_0_[4] ;
  wire \FSM_onehot_next_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[0]_i_2_n_0 ;
  wire \FSM_onehot_next_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg_n_0_[3] ;
  wire \FSM_onehot_next_state_reg_n_0_[4] ;
  wire MISO;
  wire MISO_reg_i_1_n_0;
  wire MISO_reg_i_2_n_0;
  wire MOSI;
  wire SCLK_falling;
  wire SCLK_rising;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[19]_i_1_n_0 ;
  wire \bit_counter[19]_i_2_n_0 ;
  wire clk;
  wire [19:0]data_in;
  wire [19:0]data_out;
  wire [19:1]in7;
  wire next_state;
  wire one_shot;
  wire one_shot_i_1_n_0;
  wire one_shot_reg_n_0;
  wire p_0_in;
  wire rst;
  wire \shift_reg[0]_i_1_n_0 ;
  wire \shift_reg[10]_i_1_n_0 ;
  wire \shift_reg[11]_i_1_n_0 ;
  wire \shift_reg[12]_i_1_n_0 ;
  wire \shift_reg[13]_i_1_n_0 ;
  wire \shift_reg[14]_i_1_n_0 ;
  wire \shift_reg[15]_i_1_n_0 ;
  wire \shift_reg[16]_i_1_n_0 ;
  wire \shift_reg[17]_i_1_n_0 ;
  wire \shift_reg[18]_i_1_n_0 ;
  wire \shift_reg[19]_i_1_n_0 ;
  wire \shift_reg[19]_i_2_n_0 ;
  wire \shift_reg[1]_i_1_n_0 ;
  wire \shift_reg[2]_i_1_n_0 ;
  wire \shift_reg[3]_i_1_n_0 ;
  wire \shift_reg[4]_i_1_n_0 ;
  wire \shift_reg[5]_i_1_n_0 ;
  wire \shift_reg[6]_i_1_n_0 ;
  wire \shift_reg[7]_i_1_n_0 ;
  wire \shift_reg[8]_i_1_n_0 ;
  wire \shift_reg[9]_i_1_n_0 ;
  wire \shift_reg_reg_n_0_[0] ;
  wire \shift_reg_reg_n_0_[10] ;
  wire \shift_reg_reg_n_0_[11] ;
  wire \shift_reg_reg_n_0_[12] ;
  wire \shift_reg_reg_n_0_[13] ;
  wire \shift_reg_reg_n_0_[14] ;
  wire \shift_reg_reg_n_0_[15] ;
  wire \shift_reg_reg_n_0_[16] ;
  wire \shift_reg_reg_n_0_[17] ;
  wire \shift_reg_reg_n_0_[18] ;
  wire \shift_reg_reg_n_0_[19] ;
  wire \shift_reg_reg_n_0_[1] ;
  wire \shift_reg_reg_n_0_[2] ;
  wire \shift_reg_reg_n_0_[3] ;
  wire \shift_reg_reg_n_0_[4] ;
  wire \shift_reg_reg_n_0_[5] ;
  wire \shift_reg_reg_n_0_[6] ;
  wire \shift_reg_reg_n_0_[7] ;
  wire \shift_reg_reg_n_0_[8] ;
  wire \shift_reg_reg_n_0_[9] ;

  (* FSM_ENCODED_STATES = "s_delay:10000,s_transmit:00010,s_receive:00100,s_idle:00001,s_latch:01000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .PRE(rst),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "s_delay:10000,s_transmit:00010,s_receive:00100,s_idle:00001,s_latch:01000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(one_shot));
  (* FSM_ENCODED_STATES = "s_delay:10000,s_transmit:00010,s_receive:00100,s_idle:00001,s_latch:01000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "s_delay:10000,s_transmit:00010,s_receive:00100,s_idle:00001,s_latch:01000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_next_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "s_delay:10000,s_transmit:00010,s_receive:00100,s_idle:00001,s_latch:01000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_next_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[0]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEAEAFAEA)) 
    \FSM_onehot_next_state_reg[0]_i_1 
       (.I0(\FSM_onehot_next_state_reg[0]_i_2_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(CS),
        .I3(one_shot),
        .I4(SCLK_rising),
        .O(\FSM_onehot_next_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \FSM_onehot_next_state_reg[0]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(p_0_in),
        .I2(CS),
        .I3(SCLK_falling),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_next_state_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[1]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hFFFF00F400F400F4)) 
    \FSM_onehot_next_state_reg[1]_i_1 
       (.I0(SCLK_rising),
        .I1(one_shot),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(CS),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(SCLK_falling),
        .O(\FSM_onehot_next_state_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[2]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'h888F8888)) 
    \FSM_onehot_next_state_reg[2]_i_1 
       (.I0(SCLK_rising),
        .I1(one_shot),
        .I2(SCLK_falling),
        .I3(CS),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_next_state_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[3]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \FSM_onehot_next_state_reg[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(SCLK_falling),
        .I2(CS),
        .I3(p_0_in),
        .O(\FSM_onehot_next_state_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_current_state_reg_n_0_[3] ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[4] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_next_state_reg[4]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(one_shot),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(next_state));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    MISO_reg
       (.CLR(1'b0),
        .D(MISO_reg_i_1_n_0),
        .G(MISO_reg_i_2_n_0),
        .GE(1'b1),
        .Q(MISO));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    MISO_reg_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\shift_reg_reg_n_0_[19] ),
        .O(MISO_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    MISO_reg_i_2
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(one_shot),
        .O(MISO_reg_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFAF00A8)) 
    \bit_counter[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(one_shot_reg_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(rst),
        .I4(in7[1]),
        .O(\bit_counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \bit_counter[19]_i_1 
       (.I0(rst),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\bit_counter[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00F8)) 
    \bit_counter[19]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(one_shot_reg_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(rst),
        .O(\bit_counter[19]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(in7[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[10] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[10]),
        .Q(in7[11]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[11] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[11]),
        .Q(in7[12]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[12] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[12]),
        .Q(in7[13]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[13] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[13]),
        .Q(in7[14]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[14] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[14]),
        .Q(in7[15]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[15] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[15]),
        .Q(in7[16]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[16] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[16]),
        .Q(in7[17]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[17] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[17]),
        .Q(in7[18]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[18] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[18]),
        .Q(in7[19]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[19] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[19]),
        .Q(p_0_in),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[1]),
        .Q(in7[2]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[2]),
        .Q(in7[3]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[3] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[3]),
        .Q(in7[4]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[4] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[4]),
        .Q(in7[5]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[5] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[5]),
        .Q(in7[6]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[6] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[6]),
        .Q(in7[7]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[7] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[7]),
        .Q(in7[8]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[8] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[8]),
        .Q(in7[9]),
        .R(\bit_counter[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[9] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(in7[9]),
        .Q(in7[10]),
        .R(\bit_counter[19]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[0] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[10] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[11] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[12] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[13] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[14] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[15] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[16] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[16] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[17] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[17] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[18] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[18] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[19] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[19] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[1] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[2] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[3] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[4] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[5] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[6] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[7] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[8] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.CLR(1'b0),
        .D(\shift_reg_reg_n_0_[9] ),
        .G(\FSM_onehot_current_state_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(data_out[9]));
  LUT4 #(
    .INIT(16'hCCF4)) 
    one_shot_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(one_shot_reg_n_0),
        .I2(one_shot),
        .I3(rst),
        .O(one_shot_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    one_shot_reg
       (.C(clk),
        .CE(1'b1),
        .D(one_shot_i_1_n_0),
        .Q(one_shot_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[0]_i_1 
       (.I0(data_in[0]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(MOSI),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[10]_i_1 
       (.I0(data_in[10]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[9] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[11]_i_1 
       (.I0(data_in[11]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[10] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[12]_i_1 
       (.I0(data_in[12]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[11] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[13]_i_1 
       (.I0(data_in[13]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[12] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[14]_i_1 
       (.I0(data_in[14]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[13] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[15]_i_1 
       (.I0(data_in[15]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[14] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[16]_i_1 
       (.I0(data_in[16]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[15] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[17]_i_1 
       (.I0(data_in[17]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[16] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[18]_i_1 
       (.I0(data_in[18]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[17] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22202020)) 
    \shift_reg[19]_i_1 
       (.I0(one_shot),
        .I1(rst),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(one_shot_reg_n_0),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[19]_i_2 
       (.I0(data_in[19]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[18] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[1]_i_1 
       (.I0(data_in[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[2]_i_1 
       (.I0(data_in[2]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[1] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[3]_i_1 
       (.I0(data_in[3]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[4]_i_1 
       (.I0(data_in[4]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[3] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[5]_i_1 
       (.I0(data_in[5]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[4] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[6]_i_1 
       (.I0(data_in[6]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[5] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[7]_i_1 
       (.I0(data_in[7]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[6] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[8]_i_1 
       (.I0(data_in[8]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[7] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \shift_reg[9]_i_1 
       (.I0(data_in[9]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\shift_reg_reg_n_0_[8] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\shift_reg[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[0]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[0] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[10] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[10]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[10] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[11] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[11]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[11] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[12] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[12]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[12] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[13] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[13]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[13] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[14] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[14]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[14] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[15] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[15]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[15] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[16] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[16]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[16] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[17] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[17]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[17] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[18] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[18]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[18] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[19] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[19]_i_2_n_0 ),
        .Q(\shift_reg_reg_n_0_[19] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[1]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[1] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[2]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[2] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[3]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[3] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[4]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[4] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[5] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[5]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[5] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[6] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[6]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[6] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[7] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[7]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[7] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[8] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[8]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[8] ),
        .S(\shift_reg[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_reg_reg[9] 
       (.C(clk),
        .CE(\bit_counter[19]_i_2_n_0 ),
        .D(\shift_reg[9]_i_1_n_0 ),
        .Q(\shift_reg_reg_n_0_[9] ),
        .S(\shift_reg[19]_i_1_n_0 ));
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

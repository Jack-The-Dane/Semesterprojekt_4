// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Apr 29 09:55:32 2024
// Host        : Cornelia running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/Corne/Documents/MEGA/4.
//               Semester/Semesterprojekt/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/block_encoder/ip/block_encoder_up_down_counter_0_0/block_encoder_up_down_counter_0_0_stub.v}
// Design      : block_encoder_up_down_counter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "up_down_counter,Vivado 2023.2" *)
module block_encoder_up_down_counter_0_0(clk, up, down, rst, en, cnt)
/* synthesis syn_black_box black_box_pad_pin="up,down,rst,en,cnt[8:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input up;
  input down;
  input rst;
  input en;
  output [8:0]cnt;
endmodule

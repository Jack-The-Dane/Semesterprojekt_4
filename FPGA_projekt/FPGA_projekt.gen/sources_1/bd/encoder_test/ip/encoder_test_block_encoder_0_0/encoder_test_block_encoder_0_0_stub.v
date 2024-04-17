// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Apr  5 23:05:24 2024
// Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/jacob/Documents/Semester4/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/encoder_test/ip/encoder_test_block_encoder_0_0/encoder_test_block_encoder_0_0_stub.v
// Design      : encoder_test_block_encoder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "block_encoder,Vivado 2023.2" *)
module encoder_test_block_encoder_0_0(clk, enable, encoder_a, encoder_b, pulse_cnt, rst)
/* synthesis syn_black_box black_box_pad_pin="enable,encoder_a,encoder_b,pulse_cnt[8:0],rst" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input enable;
  input encoder_a;
  input encoder_b;
  output [8:0]pulse_cnt;
  input rst;
endmodule

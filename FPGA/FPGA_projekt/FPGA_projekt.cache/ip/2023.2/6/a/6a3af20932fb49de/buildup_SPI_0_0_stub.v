// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Apr 15 09:57:20 2024
// Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ buildup_SPI_0_0_stub.v
// Design      : buildup_SPI_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SPI,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(SPI_chip_select, SPI_out, SPI_sample, 
  encoder_in, miso, mosi, rst)
/* synthesis syn_black_box black_box_pad_pin="SPI_chip_select,SPI_out[15:0],encoder_in[15:0],miso,mosi,rst" */
/* synthesis syn_force_seq_prim="SPI_sample" */;
  input SPI_chip_select;
  output [15:0]SPI_out;
  input SPI_sample /* synthesis syn_isclock = 1 */;
  input [15:0]encoder_in;
  output miso;
  input mosi;
  input rst;
endmodule

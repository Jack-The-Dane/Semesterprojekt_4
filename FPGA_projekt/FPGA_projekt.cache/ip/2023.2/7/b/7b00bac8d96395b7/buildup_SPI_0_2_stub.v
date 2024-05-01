// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed May  1 10:26:07 2024
// Host        : Cornelia running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ buildup_SPI_0_2_stub.v
// Design      : buildup_SPI_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SPI,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(SPI_chip_select, SPI_in, SPI_out, SPI_sample, 
  miso, mosi, rst)
/* synthesis syn_black_box black_box_pad_pin="SPI_chip_select,SPI_in[19:0],SPI_out[19:0],miso,mosi,rst" */
/* synthesis syn_force_seq_prim="SPI_sample" */;
  input SPI_chip_select;
  input [19:0]SPI_in;
  output [19:0]SPI_out;
  input SPI_sample /* synthesis syn_isclock = 1 */;
  output miso;
  input mosi;
  input rst;
endmodule

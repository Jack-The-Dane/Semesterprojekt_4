// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue May 14 10:03:40 2024
// Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top buildup_spi_sub_0_0 -prefix
//               buildup_spi_sub_0_0_ buildup_spi_sub_0_0_stub.v
// Design      : buildup_spi_sub_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "spi_sub,Vivado 2023.2" *)
module buildup_spi_sub_0_0(clk, rst, SCLK_rising, SCLK_falling, MOSI, CS, 
  data_in, MISO, data_out)
/* synthesis syn_black_box black_box_pad_pin="rst,SCLK_rising,SCLK_falling,MOSI,CS,data_in[19:0],MISO,data_out[19:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  input SCLK_rising;
  input SCLK_falling;
  input MOSI;
  input CS;
  input [19:0]data_in;
  output MISO;
  output [19:0]data_out;
endmodule

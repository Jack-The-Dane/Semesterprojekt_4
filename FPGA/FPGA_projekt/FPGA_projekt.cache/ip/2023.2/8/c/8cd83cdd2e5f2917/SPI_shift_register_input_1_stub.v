// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Apr  9 15:11:08 2024
// Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPI_shift_register_input_1_stub.v
// Design      : SPI_shift_register_input_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "shift_register_generic,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(sample, chip_select, register_in, rst, data, 
  register_out, carry_out)
/* synthesis syn_black_box black_box_pad_pin="chip_select,register_in[15:0],rst,data,register_out[15:0],carry_out" */
/* synthesis syn_force_seq_prim="sample" */;
  input sample /* synthesis syn_isclock = 1 */;
  input chip_select;
  input [15:0]register_in;
  input rst;
  input data;
  output [15:0]register_out;
  output carry_out;
endmodule

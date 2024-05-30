// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue May 14 09:50:22 2024
// Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top buildup_AND_gate_0_1 -prefix
//               buildup_AND_gate_0_1_ buildup_AND_gate_0_2_stub.v
// Design      : buildup_AND_gate_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AND_gate,Vivado 2023.2" *)
module buildup_AND_gate_0_1(A, B, C)
/* synthesis syn_black_box black_box_pad_pin="A,B,C" */;
  input A;
  input B;
  output C;
endmodule

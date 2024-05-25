// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Apr 29 09:55:27 2024
// Host        : Cornelia running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top buildup_AND_gate_0_3 -prefix
//               buildup_AND_gate_0_3_ block_encoder_AND_gate_1_0_stub.v
// Design      : block_encoder_AND_gate_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AND_gate,Vivado 2023.2" *)
module buildup_AND_gate_0_3(A, B, C)
/* synthesis syn_black_box black_box_pad_pin="A,B,C" */;
  input A;
  input B;
  output C;
endmodule

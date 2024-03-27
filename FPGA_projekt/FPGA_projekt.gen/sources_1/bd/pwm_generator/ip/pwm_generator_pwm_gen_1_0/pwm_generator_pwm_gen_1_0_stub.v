// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 27 09:52:17 2024
// Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/jacob/Documents/Semester4/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/pwm_generator/ip/pwm_generator_pwm_gen_1_0/pwm_generator_pwm_gen_1_0_stub.v
// Design      : pwm_generator_pwm_gen_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pwm_gen,Vivado 2023.2" *)
module pwm_generator_pwm_gen_1_0(cnt, duty, pwm)
/* synthesis syn_black_box black_box_pad_pin="cnt[26:0],duty[26:0],pwm" */;
  input [26:0]cnt;
  input [26:0]duty;
  output pwm;
endmodule

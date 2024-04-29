-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Apr 29 09:55:27 2024
-- Host        : Cornelia running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/Corne/Documents/MEGA/4.
--               Semester/Semesterprojekt/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/block_encoder/ip/block_encoder_edge_detector_0_1/block_encoder_edge_detector_0_1_stub.vhdl}
-- Design      : block_encoder_edge_detector_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity block_encoder_edge_detector_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    d : in STD_LOGIC;
    result : out STD_LOGIC
  );

end block_encoder_edge_detector_0_1;

architecture stub of block_encoder_edge_detector_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,d,result";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "edge_detector,Vivado 2023.2";
begin
end;

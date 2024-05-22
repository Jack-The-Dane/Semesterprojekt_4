-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue May 14 10:03:41 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top block_encoder_Rising_edge_detector_0_0 -prefix
--               block_encoder_Rising_edge_detector_0_0_ buildup_Rising_edge_detector_0_0_stub.vhdl
-- Design      : buildup_Rising_edge_detector_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity block_encoder_Rising_edge_detector_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );

end block_encoder_Rising_edge_detector_0_0;

architecture stub of block_encoder_Rising_edge_detector_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,D,Q";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Rising_edge_detector,Vivado 2023.2";
begin
end;

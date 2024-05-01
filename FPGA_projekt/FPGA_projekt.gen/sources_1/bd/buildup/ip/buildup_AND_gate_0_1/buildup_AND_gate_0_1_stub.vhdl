-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Apr 29 09:55:27 2024
-- Host        : Cornelia running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top buildup_AND_gate_0_1 -prefix
--               buildup_AND_gate_0_1_ block_encoder_AND_gate_1_0_stub.vhdl
-- Design      : block_encoder_AND_gate_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity buildup_AND_gate_0_1 is
  Port ( 
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : out STD_LOGIC
  );

end buildup_AND_gate_0_1;

architecture stub of buildup_AND_gate_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,B,C";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AND_gate,Vivado 2023.2";
begin
end;

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue May 14 10:02:57 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top buildup_NOT_gate_0_1 -prefix
--               buildup_NOT_gate_0_1_ buildup_NOT_gate_0_1_stub.vhdl
-- Design      : buildup_NOT_gate_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity buildup_NOT_gate_0_1 is
  Port ( 
    A : in STD_LOGIC;
    B : out STD_LOGIC
  );

end buildup_NOT_gate_0_1;

architecture stub of buildup_NOT_gate_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,B";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "NOT_gate,Vivado 2023.2";
begin
end;

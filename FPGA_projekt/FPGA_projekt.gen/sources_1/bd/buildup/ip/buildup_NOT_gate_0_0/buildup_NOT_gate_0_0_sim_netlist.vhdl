-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue May 14 10:02:57 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top buildup_NOT_gate_0_0 -prefix
--               buildup_NOT_gate_0_0_ buildup_NOT_gate_0_1_sim_netlist.vhdl
-- Design      : buildup_NOT_gate_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_NOT_gate_0_0 is
  port (
    A : in STD_LOGIC;
    B : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of buildup_NOT_gate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of buildup_NOT_gate_0_0 : entity is "buildup_NOT_gate_0_1,NOT_gate,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of buildup_NOT_gate_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of buildup_NOT_gate_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of buildup_NOT_gate_0_0 : entity is "NOT_gate,Vivado 2023.2";
end buildup_NOT_gate_0_0;

architecture STRUCTURE of buildup_NOT_gate_0_0 is
begin
B_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A,
      O => B
    );
end STRUCTURE;

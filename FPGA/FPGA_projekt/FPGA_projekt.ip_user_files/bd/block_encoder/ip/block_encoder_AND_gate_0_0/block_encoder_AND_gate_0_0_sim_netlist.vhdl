-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Apr 29 09:55:27 2024
-- Host        : Cornelia running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/Corne/Documents/MEGA/4.
--               Semester/Semesterprojekt/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/block_encoder/ip/block_encoder_AND_gate_0_0/block_encoder_AND_gate_0_0_sim_netlist.vhdl}
-- Design      : block_encoder_AND_gate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_encoder_AND_gate_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of block_encoder_AND_gate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of block_encoder_AND_gate_0_0 : entity is "block_encoder_AND_gate_0_0,AND_gate,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of block_encoder_AND_gate_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of block_encoder_AND_gate_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of block_encoder_AND_gate_0_0 : entity is "AND_gate,Vivado 2023.2";
end block_encoder_AND_gate_0_0;

architecture STRUCTURE of block_encoder_AND_gate_0_0 is
begin
C_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A,
      I1 => B,
      O => C
    );
end STRUCTURE;

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Apr 29 09:55:27 2024
-- Host        : Cornelia running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/Corne/Documents/MEGA/4.
--               Semester/Semesterprojekt/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/block_encoder/ip/block_encoder_edge_detector_0_0/block_encoder_edge_detector_0_0_sim_netlist.vhdl}
-- Design      : block_encoder_edge_detector_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_encoder_edge_detector_0_0_edge_detector is
  port (
    result : out STD_LOGIC;
    d : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of block_encoder_edge_detector_0_0_edge_detector : entity is "edge_detector";
end block_encoder_edge_detector_0_0_edge_detector;

architecture STRUCTURE of block_encoder_edge_detector_0_0_edge_detector is
  signal latch_1 : STD_LOGIC;
  signal latch_2 : STD_LOGIC;
begin
latch_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d,
      Q => latch_1,
      R => '0'
    );
latch_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latch_1,
      Q => latch_2,
      R => '0'
    );
result_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => latch_1,
      I1 => latch_2,
      O => result
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_encoder_edge_detector_0_0 is
  port (
    clk : in STD_LOGIC;
    d : in STD_LOGIC;
    result : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of block_encoder_edge_detector_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of block_encoder_edge_detector_0_0 : entity is "block_encoder_edge_detector_0_0,edge_detector,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of block_encoder_edge_detector_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of block_encoder_edge_detector_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of block_encoder_edge_detector_0_0 : entity is "edge_detector,Vivado 2023.2";
end block_encoder_edge_detector_0_0;

architecture STRUCTURE of block_encoder_edge_detector_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
U0: entity work.block_encoder_edge_detector_0_0_edge_detector
     port map (
      clk => clk,
      d => d,
      result => result
    );
end STRUCTURE;

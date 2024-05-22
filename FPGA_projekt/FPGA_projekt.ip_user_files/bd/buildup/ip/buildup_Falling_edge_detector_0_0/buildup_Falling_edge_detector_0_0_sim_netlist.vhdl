-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue May 14 10:02:58 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jacob/Documents/Semester4/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/buildup/ip/buildup_Falling_edge_detector_0_0/buildup_Falling_edge_detector_0_0_sim_netlist.vhdl
-- Design      : buildup_Falling_edge_detector_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_Falling_edge_detector_0_0_Falling_edge_detector is
  port (
    Q : out STD_LOGIC;
    D : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buildup_Falling_edge_detector_0_0_Falling_edge_detector : entity is "Falling_edge_detector";
end buildup_Falling_edge_detector_0_0_Falling_edge_detector;

architecture STRUCTURE of buildup_Falling_edge_detector_0_0_Falling_edge_detector is
  signal FF1 : STD_LOGIC;
  signal FF2 : STD_LOGIC;
begin
FF1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => D,
      Q => FF1,
      R => '0'
    );
FF2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => FF1,
      Q => FF2,
      R => '0'
    );
Q_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => FF2,
      I1 => FF1,
      O => Q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_Falling_edge_detector_0_0 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of buildup_Falling_edge_detector_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of buildup_Falling_edge_detector_0_0 : entity is "buildup_Falling_edge_detector_0_0,Falling_edge_detector,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of buildup_Falling_edge_detector_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of buildup_Falling_edge_detector_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of buildup_Falling_edge_detector_0_0 : entity is "Falling_edge_detector,Vivado 2023.2";
end buildup_Falling_edge_detector_0_0;

architecture STRUCTURE of buildup_Falling_edge_detector_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN buildup_clk, INSERT_VIP 0";
begin
U0: entity work.buildup_Falling_edge_detector_0_0_Falling_edge_detector
     port map (
      D => D,
      Q => Q,
      clk => clk
    );
end STRUCTURE;

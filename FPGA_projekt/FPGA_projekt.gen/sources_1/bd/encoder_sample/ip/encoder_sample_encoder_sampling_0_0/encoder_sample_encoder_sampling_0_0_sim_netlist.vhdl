-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Apr  5 15:12:08 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jacob/Documents/Semester4/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/encoder_sample/ip/encoder_sample_encoder_sampling_0_0/encoder_sample_encoder_sampling_0_0_sim_netlist.vhdl
-- Design      : encoder_sample_encoder_sampling_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity encoder_sample_encoder_sampling_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    enc_a : in STD_LOGIC;
    enc_b : in STD_LOGIC;
    pulse_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of encoder_sample_encoder_sampling_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of encoder_sample_encoder_sampling_0_0 : entity is "encoder_sample_encoder_sampling_0_0,encoder_sampling,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of encoder_sample_encoder_sampling_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of encoder_sample_encoder_sampling_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of encoder_sample_encoder_sampling_0_0 : entity is "encoder_sampling,Vivado 2023.2";
end encoder_sample_encoder_sampling_0_0;

architecture STRUCTURE of encoder_sample_encoder_sampling_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  pulse_cnt(8) <= \<const0>\;
  pulse_cnt(7) <= \<const0>\;
  pulse_cnt(6) <= \<const0>\;
  pulse_cnt(5) <= \<const0>\;
  pulse_cnt(4) <= \<const0>\;
  pulse_cnt(3) <= \<const0>\;
  pulse_cnt(2) <= \<const0>\;
  pulse_cnt(1) <= \<const0>\;
  pulse_cnt(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;

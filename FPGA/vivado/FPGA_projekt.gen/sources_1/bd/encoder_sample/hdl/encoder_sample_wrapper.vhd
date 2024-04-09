--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Fri Apr  5 23:13:03 2024
--Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target encoder_sample_wrapper.bd
--Design      : encoder_sample_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity encoder_sample_wrapper is
  port (
    clk : in STD_LOGIC;
    ja_0 : in STD_LOGIC;
    ja_1 : in STD_LOGIC;
    ja_2 : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end encoder_sample_wrapper;

architecture STRUCTURE of encoder_sample_wrapper is
  component encoder_sample is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    ja_0 : in STD_LOGIC;
    ja_1 : in STD_LOGIC;
    ja_2 : in STD_LOGIC
  );
  end component encoder_sample;
begin
encoder_sample_i: component encoder_sample
     port map (
      clk => clk,
      ja_0 => ja_0,
      ja_1 => ja_1,
      ja_2 => ja_2,
      led(3 downto 0) => led(3 downto 0)
    );
end STRUCTURE;

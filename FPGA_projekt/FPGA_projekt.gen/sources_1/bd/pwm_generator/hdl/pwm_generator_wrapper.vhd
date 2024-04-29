--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Mon Apr 29 11:15:10 2024
--Host        : Cornelia running 64-bit major release  (build 9200)
--Command     : generate_target pwm_generator_wrapper.bd
--Design      : pwm_generator_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_generator_wrapper is
  port (
    clk : in STD_LOGIC;
    ja0 : out STD_LOGIC;
    led : out STD_LOGIC
  );
end pwm_generator_wrapper;

architecture STRUCTURE of pwm_generator_wrapper is
  component pwm_generator is
  port (
    ja0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC
  );
  end component pwm_generator;
begin
pwm_generator_i: component pwm_generator
     port map (
      clk => clk,
      ja0 => ja0,
      led => led
    );
end STRUCTURE;

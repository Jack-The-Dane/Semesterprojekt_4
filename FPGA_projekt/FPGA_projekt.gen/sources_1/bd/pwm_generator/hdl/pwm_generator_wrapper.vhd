--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Tue Mar 19 12:16:49 2024
--Host        : Rikkes_pc running 64-bit major release  (build 9200)
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
    clk_0 : in STD_LOGIC;
    duty_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en_0 : in STD_LOGIC;
    pwm_0 : out STD_LOGIC;
    rst_0 : in STD_LOGIC
  );
end pwm_generator_wrapper;

architecture STRUCTURE of pwm_generator_wrapper is
  component pwm_generator is
  port (
    duty_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm_0 : out STD_LOGIC;
    clk_0 : in STD_LOGIC;
    en_0 : in STD_LOGIC;
    rst_0 : in STD_LOGIC
  );
  end component pwm_generator;
begin
pwm_generator_i: component pwm_generator
     port map (
      clk_0 => clk_0,
      duty_0(15 downto 0) => duty_0(15 downto 0),
      en_0 => en_0,
      pwm_0 => pwm_0,
      rst_0 => rst_0
    );
end STRUCTURE;

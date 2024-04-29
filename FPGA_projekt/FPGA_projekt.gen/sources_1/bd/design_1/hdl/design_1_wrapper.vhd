--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Mon Apr 29 17:45:16 2024
--Host        : Cornelia running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    Din_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_0 : in STD_LOGIC;
    en_0 : in STD_LOGIC;
    pwm_0 : out STD_LOGIC;
    pwm_1 : out STD_LOGIC;
    rst_0 : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    pwm_0 : out STD_LOGIC;
    clk_0 : in STD_LOGIC;
    en_0 : in STD_LOGIC;
    rst_0 : in STD_LOGIC;
    pwm_1 : out STD_LOGIC;
    Din_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      Din_0(15 downto 0) => Din_0(15 downto 0),
      clk_0 => clk_0,
      en_0 => en_0,
      pwm_0 => pwm_0,
      pwm_1 => pwm_1,
      rst_0 => rst_0
    );
end STRUCTURE;

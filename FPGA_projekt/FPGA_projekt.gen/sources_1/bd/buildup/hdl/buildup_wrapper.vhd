--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Mon Apr 15 11:18:13 2024
--Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target buildup_wrapper.bd
--Design      : buildup_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_wrapper is
  port (
    CS : in STD_LOGIC;
    clk : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    pwm : out STD_LOGIC;
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC
  );
end buildup_wrapper;

architecture STRUCTURE of buildup_wrapper is
  component buildup is
  port (
    CS : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    mosi : in STD_LOGIC;
    pwm : out STD_LOGIC;
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    sclk : in STD_LOGIC;
    miso : out STD_LOGIC
  );
  end component buildup;
begin
buildup_i: component buildup
     port map (
      CS => CS,
      clk => clk,
      encoder_a => encoder_a,
      encoder_b => encoder_b,
      miso => miso,
      mosi => mosi,
      pwm => pwm,
      rst => rst,
      sclk => sclk
    );
end STRUCTURE;

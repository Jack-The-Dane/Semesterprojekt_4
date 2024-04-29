--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Wed Apr 17 17:09:33 2024
--Host        : Cornelia running 64-bit major release  (build 9200)
--Command     : generate_target block_encoder_wrapper.bd
--Design      : block_encoder_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_encoder_wrapper is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    pulse_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rst : in STD_LOGIC
  );
end block_encoder_wrapper;

architecture STRUCTURE of block_encoder_wrapper is
  component block_encoder is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    pulse_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    enable : in STD_LOGIC
  );
  end component block_encoder;
begin
block_encoder_i: component block_encoder
     port map (
      clk => clk,
      enable => enable,
      encoder_a => encoder_a,
      encoder_b => encoder_b,
      pulse_cnt(8 downto 0) => pulse_cnt(8 downto 0),
      rst => rst
    );
end STRUCTURE;

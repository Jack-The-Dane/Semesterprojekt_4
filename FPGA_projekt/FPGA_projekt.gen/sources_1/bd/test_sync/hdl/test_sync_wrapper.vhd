--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Tue May  7 15:30:02 2024
--Host        : Cornelia running 64-bit major release  (build 9200)
--Command     : generate_target test_sync_wrapper.bd
--Design      : test_sync_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_sync_wrapper is
  port (
    clk : in STD_LOGIC;
    pwm_tilt_cw : out STD_LOGIC;
    sclk : in STD_LOGIC
  );
end test_sync_wrapper;

architecture STRUCTURE of test_sync_wrapper is
  component test_sync is
  port (
    sclk : in STD_LOGIC;
    pwm_tilt_cw : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  end component test_sync;
begin
test_sync_i: component test_sync
     port map (
      clk => clk,
      pwm_tilt_cw => pwm_tilt_cw,
      sclk => sclk
    );
end STRUCTURE;

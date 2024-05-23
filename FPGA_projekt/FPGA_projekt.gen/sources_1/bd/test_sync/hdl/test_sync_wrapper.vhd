--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Tue May 14 09:34:59 2024
--Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
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

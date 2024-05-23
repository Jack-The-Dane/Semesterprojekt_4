--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Fri May 17 13:19:52 2024
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
    Hall_effect_sensor_0 : in STD_LOGIC;
    Hall_effect_sensor_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    encoder_a_pan : in STD_LOGIC;
    encoder_a_tilt : in STD_LOGIC;
    encoder_b_pan : in STD_LOGIC;
    encoder_b_tilt : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    pwm_pan_ccw : out STD_LOGIC;
    pwm_pan_cw : out STD_LOGIC;
    pwm_tilt_ccw : out STD_LOGIC;
    pwm_tilt_cw : out STD_LOGIC;
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
    pwm_pan_cw : out STD_LOGIC;
    encoder_a_tilt : in STD_LOGIC;
    encoder_b_tilt : in STD_LOGIC;
    sclk : in STD_LOGIC;
    miso : out STD_LOGIC;
    encoder_a_pan : in STD_LOGIC;
    encoder_b_pan : in STD_LOGIC;
    Hall_effect_sensor_0 : in STD_LOGIC;
    Hall_effect_sensor_1 : in STD_LOGIC;
    pwm_tilt_cw : out STD_LOGIC;
    pwm_pan_ccw : out STD_LOGIC;
    pwm_tilt_ccw : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component buildup;
begin
buildup_i: component buildup
     port map (
      CS => CS,
      Hall_effect_sensor_0 => Hall_effect_sensor_0,
      Hall_effect_sensor_1 => Hall_effect_sensor_1,
      clk => clk,
      encoder_a_pan => encoder_a_pan,
      encoder_a_tilt => encoder_a_tilt,
      encoder_b_pan => encoder_b_pan,
      encoder_b_tilt => encoder_b_tilt,
      led(3 downto 0) => led(3 downto 0),
      miso => miso,
      mosi => mosi,
      pwm_pan_ccw => pwm_pan_ccw,
      pwm_pan_cw => pwm_pan_cw,
      pwm_tilt_ccw => pwm_tilt_ccw,
      pwm_tilt_cw => pwm_tilt_cw,
      rst => rst,
      sclk => sclk
    );
end STRUCTURE;

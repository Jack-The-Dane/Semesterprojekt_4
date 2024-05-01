--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Tue Apr 30 15:58:45 2024
--Host        : Cornelia running 64-bit major release  (build 9200)
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
    led_0 : out STD_LOGIC;
    led_1 : out STD_LOGIC;
    led_2 : out STD_LOGIC;
    led_3 : out STD_LOGIC;
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
    led_0 : out STD_LOGIC;
    encoder_a_pan : in STD_LOGIC;
    encoder_b_pan : in STD_LOGIC;
    Hall_effect_sensor_0 : in STD_LOGIC;
    Hall_effect_sensor_1 : in STD_LOGIC;
    pwm_tilt_cw : out STD_LOGIC;
    led_1 : out STD_LOGIC;
    led_2 : out STD_LOGIC;
    led_3 : out STD_LOGIC;
    pwm_pan_ccw : out STD_LOGIC;
    pwm_tilt_ccw : out STD_LOGIC
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
      led_0 => led_0,
      led_1 => led_1,
      led_2 => led_2,
      led_3 => led_3,
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

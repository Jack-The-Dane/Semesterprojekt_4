-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Apr  2 12:44:51 2024
-- Host        : Cornelia running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/Corne/Documents/MEGA/4.
--               Semester/Semesterprojekt/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/pwm_generator/ip/pwm_generator_counter_1_0/pwm_generator_counter_1_0_stub.vhdl}
-- Design      : pwm_generator_counter_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pwm_generator_counter_1_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 26 downto 0 )
  );

end pwm_generator_counter_1_0;

architecture stub of pwm_generator_counter_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,en,cnt[26:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "counter,Vivado 2023.2";
begin
end;

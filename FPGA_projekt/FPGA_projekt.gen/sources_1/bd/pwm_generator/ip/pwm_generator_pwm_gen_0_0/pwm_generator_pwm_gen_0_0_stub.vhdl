-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Mar 27 09:37:48 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jacob/Documents/Semester4/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/pwm_generator/ip/pwm_generator_pwm_gen_0_0/pwm_generator_pwm_gen_0_0_stub.vhdl
-- Design      : pwm_generator_pwm_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pwm_generator_pwm_gen_0_0 is
  Port ( 
    cnt : in STD_LOGIC_VECTOR ( 20 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 20 downto 0 );
    pwm : out STD_LOGIC
  );

end pwm_generator_pwm_gen_0_0;

architecture stub of pwm_generator_pwm_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "cnt[20:0],duty[20:0],pwm";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "pwm_gen,Vivado 2023.2";
begin
end;

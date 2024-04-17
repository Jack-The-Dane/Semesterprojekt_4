-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Apr 17 09:45:52 2024
-- Host        : Cornelia running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/Corne/Documents/MEGA/4.
--               Semester/Semesterprojekt/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/buildup/ip/buildup_pwm_gen_0_0/buildup_pwm_gen_0_0_stub.vhdl}
-- Design      : buildup_pwm_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity buildup_pwm_gen_0_0 is
  Port ( 
    cnt : in STD_LOGIC_VECTOR ( 15 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm : out STD_LOGIC
  );

end buildup_pwm_gen_0_0;

architecture stub of buildup_pwm_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "cnt[15:0],duty[15:0],pwm";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "pwm_gen,Vivado 2023.2";
begin
end;

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Apr 29 18:04:58 2024
-- Host        : Cornelia running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top buildup_pwm_gen_0_1 -prefix
--               buildup_pwm_gen_0_1_ design_1_pwm_gen_1_0_stub.vhdl
-- Design      : design_1_pwm_gen_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity buildup_pwm_gen_0_1 is
  Port ( 
    cnt : in STD_LOGIC_VECTOR ( 7 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm : out STD_LOGIC
  );

end buildup_pwm_gen_0_1;

architecture stub of buildup_pwm_gen_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "cnt[7:0],duty[7:0],pwm";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "pwm_gen,Vivado 2023.2";
begin
end;

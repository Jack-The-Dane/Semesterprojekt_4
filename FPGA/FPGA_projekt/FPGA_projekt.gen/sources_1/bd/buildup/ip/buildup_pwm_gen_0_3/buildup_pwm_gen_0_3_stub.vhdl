-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue May 14 09:50:23 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top buildup_pwm_gen_0_3 -prefix
--               buildup_pwm_gen_0_3_ buildup_pwm_gen_0_3_stub.vhdl
-- Design      : buildup_pwm_gen_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity buildup_pwm_gen_0_3 is
  Port ( 
    cnt : in STD_LOGIC_VECTOR ( 7 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm : out STD_LOGIC
  );

end buildup_pwm_gen_0_3;

architecture stub of buildup_pwm_gen_0_3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "cnt[7:0],duty[7:0],pwm";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "pwm_gen,Vivado 2023.2";
begin
end;
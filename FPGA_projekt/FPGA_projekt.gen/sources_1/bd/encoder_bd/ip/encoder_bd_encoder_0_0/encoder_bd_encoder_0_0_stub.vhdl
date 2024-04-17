-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Apr  5 14:03:25 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jacob/Documents/Semester4/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/encoder_bd/ip/encoder_bd_encoder_0_0/encoder_bd_encoder_0_0_stub.vhdl
-- Design      : encoder_bd_encoder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder_bd_encoder_0_0 is
  Port ( 
    enc_a : in STD_LOGIC;
    enc_b : in STD_LOGIC;
    rst : in STD_LOGIC;
    pulses : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );

end encoder_bd_encoder_0_0;

architecture stub of encoder_bd_encoder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "enc_a,enc_b,rst,pulses[8:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "encoder,Vivado 2023.2";
begin
end;

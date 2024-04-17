-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon Apr 15 10:46:17 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jacob/Documents/Semester4/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/buildup/ip/buildup_SPI_0_0/buildup_SPI_0_0_stub.vhdl
-- Design      : buildup_SPI_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity buildup_SPI_0_0 is
  Port ( 
    SPI_chip_select : in STD_LOGIC;
    SPI_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SPI_sample : in STD_LOGIC;
    encoder_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC
  );

end buildup_SPI_0_0;

architecture stub of buildup_SPI_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SPI_chip_select,SPI_out[15:0],SPI_sample,encoder_in[15:0],miso,mosi,rst";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SPI,Vivado 2023.2";
begin
end;

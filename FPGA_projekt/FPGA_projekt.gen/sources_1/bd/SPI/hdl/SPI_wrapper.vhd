--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Tue Apr  9 15:10:24 2024
--Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target SPI_wrapper.bd
--Design      : SPI_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_wrapper is
  port (
    Motor : out STD_LOGIC;
    SPI_chip_select : in STD_LOGIC;
    SPI_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SPI_sample : in STD_LOGIC;
    encoder_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpga_clk : in STD_LOGIC;
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end SPI_wrapper;

architecture STRUCTURE of SPI_wrapper is
  component SPI is
  port (
    mosi : in STD_LOGIC;
    Motor : out STD_LOGIC;
    SPI_chip_select : in STD_LOGIC;
    rst : in STD_LOGIC;
    encoder_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    miso : out STD_LOGIC;
    fpga_clk : in STD_LOGIC;
    SPI_sample : in STD_LOGIC;
    SPI_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component SPI;
begin
SPI_i: component SPI
     port map (
      Motor => Motor,
      SPI_chip_select => SPI_chip_select,
      SPI_out(15 downto 0) => SPI_out(15 downto 0),
      SPI_sample => SPI_sample,
      encoder_in(15 downto 0) => encoder_in(15 downto 0),
      fpga_clk => fpga_clk,
      miso => miso,
      mosi => mosi,
      rst => rst
    );
end STRUCTURE;

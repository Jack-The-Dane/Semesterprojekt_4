--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Tue Apr 30 15:47:42 2024
--Host        : Cornelia running 64-bit major release  (build 9200)
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
    SPI_chip_select : in STD_LOGIC;
    SPI_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    SPI_out : out STD_LOGIC_VECTOR ( 19 downto 0 );
    SPI_sample : in STD_LOGIC;
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end SPI_wrapper;

architecture STRUCTURE of SPI_wrapper is
  component SPI is
  port (
    mosi : in STD_LOGIC;
    SPI_chip_select : in STD_LOGIC;
    rst : in STD_LOGIC;
    miso : out STD_LOGIC;
    SPI_sample : in STD_LOGIC;
    SPI_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    SPI_out : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component SPI;
begin
SPI_i: component SPI
     port map (
      SPI_chip_select => SPI_chip_select,
      SPI_in(19 downto 0) => SPI_in(19 downto 0),
      SPI_out(19 downto 0) => SPI_out(19 downto 0),
      SPI_sample => SPI_sample,
      miso => miso,
      mosi => mosi,
      rst => rst
    );
end STRUCTURE;

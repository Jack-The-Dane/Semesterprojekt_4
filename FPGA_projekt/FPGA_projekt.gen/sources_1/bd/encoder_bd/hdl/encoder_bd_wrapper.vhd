--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Fri Apr  5 13:04:28 2024
--Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target encoder_bd_wrapper.bd
--Design      : encoder_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity encoder_bd_wrapper is
  port (
    btn_0 : in STD_LOGIC;
    btn_1 : in STD_LOGIC;
    btn_2 : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end encoder_bd_wrapper;

architecture STRUCTURE of encoder_bd_wrapper is
  component encoder_bd is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    btn_0 : in STD_LOGIC;
    btn_1 : in STD_LOGIC;
    btn_2 : in STD_LOGIC
  );
  end component encoder_bd;
begin
encoder_bd_i: component encoder_bd
     port map (
      btn_0 => btn_0,
      btn_1 => btn_1,
      btn_2 => btn_2,
      led(3 downto 0) => led(3 downto 0)
    );
end STRUCTURE;

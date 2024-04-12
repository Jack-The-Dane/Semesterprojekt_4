--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Tue Apr  9 15:18:38 2024
--Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target buildup_wrapper.bd
--Design      : buildup_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_wrapper is
  port (
    btn_0 : in STD_LOGIC;
    btn_1 : in STD_LOGIC;
    btn_2 : in STD_LOGIC;
    clk : in STD_LOGIC;
    ja_0 : out STD_LOGIC;
    ja_1 : in STD_LOGIC;
    ja_2 : in STD_LOGIC;
    ja_3 : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end buildup_wrapper;

architecture STRUCTURE of buildup_wrapper is
  component buildup is
  port (
    btn_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    btn_2 : in STD_LOGIC;
    btn_1 : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ja_0 : out STD_LOGIC;
    ja_1 : in STD_LOGIC;
    ja_2 : in STD_LOGIC;
    ja_3 : in STD_LOGIC
  );
  end component buildup;
begin
buildup_i: component buildup
     port map (
      btn_0 => btn_0,
      btn_1 => btn_1,
      btn_2 => btn_2,
      clk => clk,
      ja_0 => ja_0,
      ja_1 => ja_1,
      ja_2 => ja_2,
      ja_3 => ja_3,
      led(1 downto 0) => led(1 downto 0)
    );
end STRUCTURE;

--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Mon Apr  8 09:07:32 2024
--Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target encoder_test.bd
--Design      : encoder_test
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity encoder_test is
  port (
    btn_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    ja_0 : in STD_LOGIC;
    ja_1 : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of encoder_test : entity is "encoder_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=encoder_test,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=1,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of encoder_test : entity is "encoder_test.hwdef";
end encoder_test;

architecture STRUCTURE of encoder_test is
  component encoder_test_block_encoder_0_0 is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    pulse_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rst : in STD_LOGIC
  );
  end component encoder_test_block_encoder_0_0;
  component encoder_test_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component encoder_test_xlconstant_0_0;
  component encoder_test_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component encoder_test_xlslice_0_0;
  signal block_encoder_0_pulse_cnt : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal encoder_a_0_1 : STD_LOGIC;
  signal encoder_b_0_1 : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  clk_0_1 <= clk;
  encoder_a_0_1 <= ja_0;
  encoder_b_0_1 <= ja_1;
  led(3 downto 0) <= xlslice_0_Dout(3 downto 0);
  rst_0_1 <= btn_0;
block_encoder_0: component encoder_test_block_encoder_0_0
     port map (
      clk => clk_0_1,
      enable => xlconstant_0_dout(0),
      encoder_a => encoder_a_0_1,
      encoder_b => encoder_b_0_1,
      pulse_cnt(8 downto 0) => block_encoder_0_pulse_cnt(8 downto 0),
      rst => rst_0_1
    );
xlconstant_0: component encoder_test_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlslice_0: component encoder_test_xlslice_0_0
     port map (
      Din(8 downto 0) => block_encoder_0_pulse_cnt(8 downto 0),
      Dout(3 downto 0) => xlslice_0_Dout(3 downto 0)
    );
end STRUCTURE;

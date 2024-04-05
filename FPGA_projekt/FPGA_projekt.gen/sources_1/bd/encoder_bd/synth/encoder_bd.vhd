--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Fri Apr  5 13:04:28 2024
--Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target encoder_bd.bd
--Design      : encoder_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity encoder_bd is
  port (
    btn_0 : in STD_LOGIC;
    btn_1 : in STD_LOGIC;
    btn_2 : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of encoder_bd : entity is "encoder_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=encoder_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of encoder_bd : entity is "encoder_bd.hwdef";
end encoder_bd;

architecture STRUCTURE of encoder_bd is
  component encoder_bd_encoder_0_0 is
  port (
    enc_a : in STD_LOGIC;
    enc_b : in STD_LOGIC;
    rst : in STD_LOGIC;
    pulses : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component encoder_bd_encoder_0_0;
  component encoder_bd_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component encoder_bd_xlslice_0_0;
  signal enc_a_0_1 : STD_LOGIC;
  signal enc_b_0_1 : STD_LOGIC;
  signal encoder_0_pulses : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rst_0_1 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of btn_2 : signal is "xilinx.com:signal:reset:1.0 RST.BTN_2 RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of btn_2 : signal is "XIL_INTERFACENAME RST.BTN_2, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  enc_a_0_1 <= btn_0;
  enc_b_0_1 <= btn_1;
  led(3 downto 0) <= xlslice_0_Dout(3 downto 0);
  rst_0_1 <= btn_2;
encoder_0: component encoder_bd_encoder_0_0
     port map (
      enc_a => enc_a_0_1,
      enc_b => enc_b_0_1,
      pulses(8 downto 0) => encoder_0_pulses(8 downto 0),
      rst => rst_0_1
    );
xlslice_0: component encoder_bd_xlslice_0_0
     port map (
      Din(8 downto 0) => encoder_0_pulses(8 downto 0),
      Dout(3 downto 0) => xlslice_0_Dout(3 downto 0)
    );
end STRUCTURE;

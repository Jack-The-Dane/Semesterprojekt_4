--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Fri Apr  5 15:11:31 2024
--Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target encoder_sample.bd
--Design      : encoder_sample
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity encoder_sample is
  port (
    btn_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    ja_0 : in STD_LOGIC;
    ja_1 : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of encoder_sample : entity is "encoder_sample,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=encoder_sample,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of encoder_sample : entity is "encoder_sample.hwdef";
end encoder_sample;

architecture STRUCTURE of encoder_sample is
  component encoder_sample_encoder_sampling_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    enc_a : in STD_LOGIC;
    enc_b : in STD_LOGIC;
    pulse_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component encoder_sample_encoder_sampling_0_0;
  component encoder_sample_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component encoder_sample_xlslice_0_0;
  component encoder_sample_clock_divider_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  end component encoder_sample_clock_divider_0_0;
  signal btn_0_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal clock_divider_0_clk_div : STD_LOGIC;
  signal encoder_sampling_0_pulse_cnt : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ja_0_1 : STD_LOGIC;
  signal ja_1_1 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of btn_0 : signal is "xilinx.com:signal:reset:1.0 RST.BTN_0 RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of btn_0 : signal is "XIL_INTERFACENAME RST.BTN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET btn_0, CLK_DOMAIN encoder_sample_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  btn_0_1 <= btn_0;
  clk_1 <= clk;
  ja_0_1 <= ja_0;
  ja_1_1 <= ja_1;
  led(3 downto 0) <= xlslice_0_Dout(3 downto 0);
clock_divider_0: component encoder_sample_clock_divider_0_0
     port map (
      clk => clk_1,
      clk_div => clock_divider_0_clk_div,
      rst => btn_0_1
    );
encoder_sampling_0: component encoder_sample_encoder_sampling_0_0
     port map (
      clk => clock_divider_0_clk_div,
      enc_a => ja_0_1,
      enc_b => ja_1_1,
      pulse_cnt(8 downto 0) => encoder_sampling_0_pulse_cnt(8 downto 0),
      rst => btn_0_1
    );
xlslice_0: component encoder_sample_xlslice_0_0
     port map (
      Din(8 downto 0) => encoder_sampling_0_pulse_cnt(8 downto 0),
      Dout(3 downto 0) => xlslice_0_Dout(3 downto 0)
    );
end STRUCTURE;

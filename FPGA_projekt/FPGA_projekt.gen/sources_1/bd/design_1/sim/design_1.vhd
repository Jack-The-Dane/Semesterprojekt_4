--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Mon Apr 29 17:45:16 2024
--Host        : Cornelia running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    Din_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_0 : in STD_LOGIC;
    en_0 : in STD_LOGIC;
    pwm_0 : out STD_LOGIC;
    pwm_1 : out STD_LOGIC;
    rst_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_counter_0_0;
  component design_1_pwm_gen_0_1 is
  port (
    cnt : in STD_LOGIC_VECTOR ( 7 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm : out STD_LOGIC
  );
  end component design_1_pwm_gen_0_1;
  component design_1_pwm_gen_1_0 is
  port (
    cnt : in STD_LOGIC_VECTOR ( 7 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm : out STD_LOGIC
  );
  end component design_1_pwm_gen_1_0;
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_xlslice_0_0;
  component design_1_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_xlslice_0_1;
  signal Din_0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal counter_0_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal en_0_1 : STD_LOGIC;
  signal pwm_gen_0_pwm : STD_LOGIC;
  signal pwm_gen_1_pwm : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rst_0 : signal is "xilinx.com:signal:reset:1.0 RST.RST_0 RST";
  attribute X_INTERFACE_PARAMETER of rst_0 : signal is "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  Din_0_1(15 downto 0) <= Din_0(15 downto 0);
  clk_0_1 <= clk_0;
  en_0_1 <= en_0;
  pwm_0 <= pwm_gen_0_pwm;
  pwm_1 <= pwm_gen_1_pwm;
  rst_0_1 <= rst_0;
counter_0: component design_1_counter_0_0
     port map (
      clk => clk_0_1,
      cnt(7 downto 0) => counter_0_cnt(7 downto 0),
      en => en_0_1,
      rst => rst_0_1
    );
pwm_gen_0: component design_1_pwm_gen_0_1
     port map (
      cnt(7 downto 0) => counter_0_cnt(7 downto 0),
      duty(7 downto 0) => xlslice_0_Dout(7 downto 0),
      pwm => pwm_gen_0_pwm
    );
pwm_gen_1: component design_1_pwm_gen_1_0
     port map (
      cnt(7 downto 0) => counter_0_cnt(7 downto 0),
      duty(7 downto 0) => xlslice_1_Dout(7 downto 0),
      pwm => pwm_gen_1_pwm
    );
xlslice_0: component design_1_xlslice_0_0
     port map (
      Din(15 downto 0) => Din_0_1(15 downto 0),
      Dout(7 downto 0) => xlslice_0_Dout(7 downto 0)
    );
xlslice_1: component design_1_xlslice_0_1
     port map (
      Din(15 downto 0) => Din_0_1(15 downto 0),
      Dout(7 downto 0) => xlslice_1_Dout(7 downto 0)
    );
end STRUCTURE;

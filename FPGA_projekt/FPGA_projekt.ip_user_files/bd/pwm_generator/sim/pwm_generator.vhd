--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Tue Mar 19 12:16:26 2024
--Host        : Rikkes_pc running 64-bit major release  (build 9200)
--Command     : generate_target pwm_generator.bd
--Design      : pwm_generator
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_generator is
  port (
    clk_0 : in STD_LOGIC;
    duty_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en_0 : in STD_LOGIC;
    pwm_0 : out STD_LOGIC;
    rst_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of pwm_generator : entity is "pwm_generator,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=pwm_generator,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of pwm_generator : entity is "pwm_generator.hwdef";
end pwm_generator;

architecture STRUCTURE of pwm_generator is
  component pwm_generator_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component pwm_generator_counter_0_0;
  component pwm_generator_pwm_gen_0_0 is
  port (
    cnt : in STD_LOGIC_VECTOR ( 15 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm : out STD_LOGIC
  );
  end component pwm_generator_pwm_gen_0_0;
  signal clk_0_1 : STD_LOGIC;
  signal counter_0_cnt : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal duty_0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal en_0_1 : STD_LOGIC;
  signal pwm_gen_0_pwm : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN pwm_generator_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rst_0 : signal is "xilinx.com:signal:reset:1.0 RST.RST_0 RST";
  attribute X_INTERFACE_PARAMETER of rst_0 : signal is "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  clk_0_1 <= clk_0;
  duty_0_1(15 downto 0) <= duty_0(15 downto 0);
  en_0_1 <= en_0;
  pwm_0 <= pwm_gen_0_pwm;
  rst_0_1 <= rst_0;
counter_0: component pwm_generator_counter_0_0
     port map (
      clk => clk_0_1,
      cnt(15 downto 0) => counter_0_cnt(15 downto 0),
      en => en_0_1,
      rst => rst_0_1
    );
pwm_gen_0: component pwm_generator_pwm_gen_0_0
     port map (
      cnt(15 downto 0) => counter_0_cnt(15 downto 0),
      duty(15 downto 0) => duty_0_1(15 downto 0),
      pwm => pwm_gen_0_pwm
    );
end STRUCTURE;

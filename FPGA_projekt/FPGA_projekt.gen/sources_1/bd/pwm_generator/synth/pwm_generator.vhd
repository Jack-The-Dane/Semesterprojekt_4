--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Fri Apr  5 12:49:16 2024
--Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
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
    clk : in STD_LOGIC;
    ja0 : out STD_LOGIC;
    led : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of pwm_generator : entity is "pwm_generator,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=pwm_generator,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of pwm_generator : entity is "pwm_generator.hwdef";
end pwm_generator;

architecture STRUCTURE of pwm_generator is
  component pwm_generator_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 20 downto 0 )
  );
  end component pwm_generator_counter_0_0;
  component pwm_generator_pwm_gen_0_0 is
  port (
    cnt : in STD_LOGIC_VECTOR ( 20 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 20 downto 0 );
    pwm : out STD_LOGIC
  );
  end component pwm_generator_pwm_gen_0_0;
  component pwm_generator_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 20 downto 0 )
  );
  end component pwm_generator_xlconstant_0_0;
  component pwm_generator_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pwm_generator_xlconstant_1_0;
  component pwm_generator_xlconstant_2_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pwm_generator_xlconstant_2_0;
  component pwm_generator_counter_1_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  end component pwm_generator_counter_1_0;
  component pwm_generator_pwm_gen_1_0 is
  port (
    cnt : in STD_LOGIC_VECTOR ( 26 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 26 downto 0 );
    pwm : out STD_LOGIC
  );
  end component pwm_generator_pwm_gen_1_0;
  component pwm_generator_xlconstant_3_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  end component pwm_generator_xlconstant_3_0;
  signal counter_0_cnt : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal counter_1_cnt : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal pwm_gen_0_pwm : STD_LOGIC;
  signal pwm_gen_1_pwm : STD_LOGIC;
  signal sysclk_1 : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_3_dout : STD_LOGIC_VECTOR ( 26 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN pwm_generator_clk_0, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  ja0 <= pwm_gen_0_pwm;
  led <= pwm_gen_1_pwm;
  sysclk_1 <= clk;
counter_0: component pwm_generator_counter_0_0
     port map (
      clk => sysclk_1,
      cnt(20 downto 0) => counter_0_cnt(20 downto 0),
      en => xlconstant_1_dout(0),
      rst => xlconstant_2_dout(0)
    );
counter_1: component pwm_generator_counter_1_0
     port map (
      clk => sysclk_1,
      cnt(26 downto 0) => counter_1_cnt(26 downto 0),
      en => xlconstant_1_dout(0),
      rst => xlconstant_2_dout(0)
    );
pwm_gen_0: component pwm_generator_pwm_gen_0_0
     port map (
      cnt(20 downto 0) => counter_0_cnt(20 downto 0),
      duty(20 downto 0) => xlconstant_0_dout(20 downto 0),
      pwm => pwm_gen_0_pwm
    );
pwm_gen_1: component pwm_generator_pwm_gen_1_0
     port map (
      cnt(26 downto 0) => counter_1_cnt(26 downto 0),
      duty(26 downto 0) => xlconstant_3_dout(26 downto 0),
      pwm => pwm_gen_1_pwm
    );
xlconstant_0: component pwm_generator_xlconstant_0_0
     port map (
      dout(20 downto 0) => xlconstant_0_dout(20 downto 0)
    );
xlconstant_1: component pwm_generator_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
xlconstant_2: component pwm_generator_xlconstant_2_0
     port map (
      dout(0) => xlconstant_2_dout(0)
    );
xlconstant_3: component pwm_generator_xlconstant_3_0
     port map (
      dout(26 downto 0) => xlconstant_3_dout(26 downto 0)
    );
end STRUCTURE;

--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Tue Apr 30 15:58:45 2024
--Host        : Cornelia running 64-bit major release  (build 9200)
--Command     : generate_target buildup.bd
--Design      : buildup
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup is
  port (
    CS : in STD_LOGIC;
    Hall_effect_sensor_0 : in STD_LOGIC;
    Hall_effect_sensor_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    encoder_a_pan : in STD_LOGIC;
    encoder_a_tilt : in STD_LOGIC;
    encoder_b_pan : in STD_LOGIC;
    encoder_b_tilt : in STD_LOGIC;
    led_0 : out STD_LOGIC;
    led_1 : out STD_LOGIC;
    led_2 : out STD_LOGIC;
    led_3 : out STD_LOGIC;
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    pwm_pan_ccw : out STD_LOGIC;
    pwm_pan_cw : out STD_LOGIC;
    pwm_tilt_ccw : out STD_LOGIC;
    pwm_tilt_cw : out STD_LOGIC;
    rst : in STD_LOGIC;
    sclk : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of buildup : entity is "buildup,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=buildup,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=22,numReposBlks=22,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=13,numPkgbdBlks=3,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of buildup : entity is "buildup.hwdef";
end buildup;

architecture STRUCTURE of buildup is
  component buildup_block_encoder_0_0 is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    pulse_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rst : in STD_LOGIC
  );
  end component buildup_block_encoder_0_0;
  component buildup_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component buildup_xlconstant_1_0;
  component buildup_clock_divider_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  end component buildup_clock_divider_0_0;
  component buildup_synchronizer_0_0 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component buildup_synchronizer_0_0;
  component buildup_SPI_0_2 is
  port (
    SPI_chip_select : in STD_LOGIC;
    SPI_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    SPI_out : out STD_LOGIC_VECTOR ( 19 downto 0 );
    SPI_sample : in STD_LOGIC;
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component buildup_SPI_0_2;
  component buildup_block_encoder_1_0 is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    pulse_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rst : in STD_LOGIC
  );
  end component buildup_block_encoder_1_0;
  component buildup_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    In3 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component buildup_xlconcat_0_0;
  component buildup_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 19 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component buildup_xlslice_0_0;
  component buildup_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 19 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component buildup_xlslice_1_0;
  component buildup_counter_1_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component buildup_counter_1_0;
  component buildup_pwm_gen_0_1 is
  port (
    cnt : in STD_LOGIC_VECTOR ( 7 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm : out STD_LOGIC
  );
  end component buildup_pwm_gen_0_1;
  component buildup_pwm_gen_1_0 is
  port (
    cnt : in STD_LOGIC_VECTOR ( 7 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm : out STD_LOGIC
  );
  end component buildup_pwm_gen_1_0;
  component buildup_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 19 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component buildup_xlslice_2_0;
  component buildup_xlslice_2_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 19 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component buildup_xlslice_2_1;
  component buildup_pwm_gen_0_2 is
  port (
    cnt : in STD_LOGIC_VECTOR ( 7 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm : out STD_LOGIC
  );
  end component buildup_pwm_gen_0_2;
  component buildup_pwm_gen_0_3 is
  port (
    cnt : in STD_LOGIC_VECTOR ( 7 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm : out STD_LOGIC
  );
  end component buildup_pwm_gen_0_3;
  component buildup_AND_gate_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : out STD_LOGIC
  );
  end component buildup_AND_gate_0_0;
  component buildup_AND_gate_0_1 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : out STD_LOGIC
  );
  end component buildup_AND_gate_0_1;
  component buildup_AND_gate_0_2 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : out STD_LOGIC
  );
  end component buildup_AND_gate_0_2;
  component buildup_AND_gate_0_3 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : out STD_LOGIC
  );
  end component buildup_AND_gate_0_3;
  component buildup_NOT_gate_0_0 is
  port (
    A : in STD_LOGIC;
    B : out STD_LOGIC
  );
  end component buildup_NOT_gate_0_0;
  component buildup_NOT_gate_0_1 is
  port (
    A : in STD_LOGIC;
    B : out STD_LOGIC
  );
  end component buildup_NOT_gate_0_1;
  signal AND_gate_0_C : STD_LOGIC;
  signal AND_gate_1_C : STD_LOGIC;
  signal AND_gate_2_C : STD_LOGIC;
  signal AND_gate_3_C : STD_LOGIC;
  signal Hall_effect_sensor_0_1 : STD_LOGIC;
  signal Hall_effect_sensor_1_1 : STD_LOGIC;
  signal NOT_gate_0_B : STD_LOGIC;
  signal NOT_gate_1_B : STD_LOGIC;
  signal SPI_0_SPI_out : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal SPI_0_miso : STD_LOGIC;
  signal block_encoder_0_pulse_cnt : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal block_encoder_1_pulse_cnt : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal btn_0_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal clock_divider_0_clk_div : STD_LOGIC;
  signal counter_1_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encoder_a_0_1 : STD_LOGIC;
  signal encoder_a_0_2 : STD_LOGIC;
  signal encoder_b_0_1 : STD_LOGIC;
  signal encoder_b_0_2 : STD_LOGIC;
  signal ja_3_1 : STD_LOGIC;
  signal mosi_1 : STD_LOGIC;
  signal pwm_pan_ccw_pwm : STD_LOGIC;
  signal pwm_pan_cw_pwm : STD_LOGIC;
  signal pwm_tilt_ccw_pwm : STD_LOGIC;
  signal pwm_tilt_cw_pwm : STD_LOGIC;
  signal \^rst\ : STD_LOGIC;
  signal synchronizer_0_Q : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN buildup_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of mosi : signal is "xilinx.com:signal:reset:1.0 RST.MOSI RST";
  attribute X_INTERFACE_PARAMETER of mosi : signal is "XIL_INTERFACENAME RST.MOSI, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sclk : signal is "xilinx.com:signal:clock:1.0 CLK.SCLK CLK";
  attribute X_INTERFACE_PARAMETER of sclk : signal is "XIL_INTERFACENAME CLK.SCLK, CLK_DOMAIN buildup_sclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  Hall_effect_sensor_0_1 <= Hall_effect_sensor_0;
  Hall_effect_sensor_1_1 <= Hall_effect_sensor_1;
  \^rst\ <= rst;
  btn_0_1 <= CS;
  clk_1 <= clk;
  encoder_a_0_1 <= encoder_a_tilt;
  encoder_a_0_2 <= encoder_a_pan;
  encoder_b_0_1 <= encoder_b_tilt;
  encoder_b_0_2 <= encoder_b_pan;
  ja_3_1 <= sclk;
  led_0 <= btn_0_1;
  led_1 <= ja_3_1;
  led_2 <= \^rst\;
  led_3 <= mosi_1;
  miso <= SPI_0_miso;
  mosi_1 <= mosi;
  pwm_pan_ccw <= AND_gate_1_C;
  pwm_pan_cw <= AND_gate_0_C;
  pwm_tilt_ccw <= AND_gate_3_C;
  pwm_tilt_cw <= AND_gate_2_C;
AND_gate_0: component buildup_AND_gate_0_0
     port map (
      A => pwm_pan_cw_pwm,
      B => xlslice_3_Dout(0),
      C => AND_gate_0_C
    );
AND_gate_1: component buildup_AND_gate_0_1
     port map (
      A => pwm_pan_ccw_pwm,
      B => NOT_gate_0_B,
      C => AND_gate_1_C
    );
AND_gate_2: component buildup_AND_gate_0_2
     port map (
      A => pwm_tilt_cw_pwm,
      B => xlslice_2_Dout(0),
      C => AND_gate_2_C
    );
AND_gate_3: component buildup_AND_gate_0_3
     port map (
      A => pwm_tilt_ccw_pwm,
      B => NOT_gate_1_B,
      C => AND_gate_3_C
    );
NOT_gate_0: component buildup_NOT_gate_0_0
     port map (
      A => xlslice_3_Dout(0),
      B => NOT_gate_0_B
    );
NOT_gate_1: component buildup_NOT_gate_0_1
     port map (
      A => xlslice_2_Dout(0),
      B => NOT_gate_1_B
    );
SPI_0: component buildup_SPI_0_2
     port map (
      SPI_chip_select => btn_0_1,
      SPI_in(19 downto 0) => xlconcat_0_dout(19 downto 0),
      SPI_out(19 downto 0) => SPI_0_SPI_out(19 downto 0),
      SPI_sample => synchronizer_0_Q,
      miso => SPI_0_miso,
      mosi => mosi_1,
      rst => \^rst\
    );
block_encoder_0: component buildup_block_encoder_0_0
     port map (
      clk => clk_1,
      enable => xlconstant_1_dout(0),
      encoder_a => encoder_a_0_1,
      encoder_b => encoder_b_0_1,
      pulse_cnt(8 downto 0) => block_encoder_0_pulse_cnt(8 downto 0),
      rst => \^rst\
    );
block_encoder_1: component buildup_block_encoder_1_0
     port map (
      clk => clk_1,
      enable => xlconstant_1_dout(0),
      encoder_a => encoder_a_0_2,
      encoder_b => encoder_b_0_2,
      pulse_cnt(8 downto 0) => block_encoder_1_pulse_cnt(8 downto 0),
      rst => \^rst\
    );
clock_divider_0: component buildup_clock_divider_0_0
     port map (
      clk => clk_1,
      clk_div => clock_divider_0_clk_div,
      rst => \^rst\
    );
counter_1: component buildup_counter_1_0
     port map (
      clk => clock_divider_0_clk_div,
      cnt(7 downto 0) => counter_1_cnt(7 downto 0),
      en => xlconstant_1_dout(0),
      rst => \^rst\
    );
pwm_pan_ccw_RnM: component buildup_pwm_gen_0_2
     port map (
      cnt(7 downto 0) => counter_1_cnt(7 downto 0),
      duty(7 downto 0) => xlslice_1_Dout(7 downto 0),
      pwm => pwm_pan_ccw_pwm
    );
pwm_pan_cw_RnM: component buildup_pwm_gen_0_1
     port map (
      cnt(7 downto 0) => counter_1_cnt(7 downto 0),
      duty(7 downto 0) => xlslice_1_Dout(7 downto 0),
      pwm => pwm_pan_cw_pwm
    );
pwm_tilt_ccw_RnM: component buildup_pwm_gen_0_3
     port map (
      cnt(7 downto 0) => counter_1_cnt(7 downto 0),
      duty(7 downto 0) => xlslice_0_Dout(7 downto 0),
      pwm => pwm_tilt_ccw_pwm
    );
pwm_tilt_cw_RnM: component buildup_pwm_gen_1_0
     port map (
      cnt(7 downto 0) => counter_1_cnt(7 downto 0),
      duty(7 downto 0) => xlslice_0_Dout(7 downto 0),
      pwm => pwm_tilt_cw_pwm
    );
synchronizer_0: component buildup_synchronizer_0_0
     port map (
      D => ja_3_1,
      Q => synchronizer_0_Q,
      clk => clk_1
    );
xlconcat_0: component buildup_xlconcat_0_0
     port map (
      In0(0) => Hall_effect_sensor_0_1,
      In1(0) => Hall_effect_sensor_1_1,
      In2(8 downto 0) => block_encoder_0_pulse_cnt(8 downto 0),
      In3(8 downto 0) => block_encoder_1_pulse_cnt(8 downto 0),
      dout(19 downto 0) => xlconcat_0_dout(19 downto 0)
    );
xlconstant_1: component buildup_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
xlslice_0: component buildup_xlslice_0_0
     port map (
      Din(19 downto 0) => SPI_0_SPI_out(19 downto 0),
      Dout(7 downto 0) => xlslice_0_Dout(7 downto 0)
    );
xlslice_1: component buildup_xlslice_1_0
     port map (
      Din(19 downto 0) => SPI_0_SPI_out(19 downto 0),
      Dout(7 downto 0) => xlslice_1_Dout(7 downto 0)
    );
xlslice_2: component buildup_xlslice_2_0
     port map (
      Din(19 downto 0) => SPI_0_SPI_out(19 downto 0),
      Dout(0) => xlslice_2_Dout(0)
    );
xlslice_3: component buildup_xlslice_2_1
     port map (
      Din(19 downto 0) => SPI_0_SPI_out(19 downto 0),
      Dout(0) => xlslice_3_Dout(0)
    );
end STRUCTURE;

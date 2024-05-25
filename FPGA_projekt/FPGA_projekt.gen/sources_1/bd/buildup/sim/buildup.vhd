--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Fri May 24 13:27:11 2024
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
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
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
  attribute CORE_GENERATION_INFO of buildup : entity is "buildup,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=buildup,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=32,numReposBlks=32,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=23,numPkgbdBlks=2,bdsource=USER,da_clkrst_cnt=8,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of buildup : entity is "buildup.hwdef";
end buildup;

architecture STRUCTURE of buildup is
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
  component buildup_spi_sub_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    SCLK_rising : in STD_LOGIC;
    SCLK_falling : in STD_LOGIC;
    MOSI : in STD_LOGIC;
    CS : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    MISO : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component buildup_spi_sub_0_0;
  component buildup_synchronizer_0_2 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component buildup_synchronizer_0_2;
  component buildup_synchronizer_0_3 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component buildup_synchronizer_0_3;
  component buildup_synchronizer_0_4 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component buildup_synchronizer_0_4;
  component buildup_synchronizer_0_5 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component buildup_synchronizer_0_5;
  component buildup_synchronizer_0_6 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component buildup_synchronizer_0_6;
  component buildup_synchronizer_0_7 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component buildup_synchronizer_0_7;
  component buildup_synchronizer_0_8 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component buildup_synchronizer_0_8;
  component buildup_synchronizer_0_9 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component buildup_synchronizer_0_9;
  component buildup_synchronizer_0_10 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component buildup_synchronizer_0_10;
  component buildup_synchronizer_0_11 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component buildup_synchronizer_0_11;
  component buildup_Rising_edge_detector_0_0 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component buildup_Rising_edge_detector_0_0;
  component buildup_Falling_edge_detector_0_0 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component buildup_Falling_edge_detector_0_0;
  component buildup_xlslice_5_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component buildup_xlslice_5_0;
  component buildup_block_encoder_0_2 is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    pulse_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rst : in STD_LOGIC
  );
  end component buildup_block_encoder_0_2;
  component buildup_block_encoder_pan_0_0 is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    pulse_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rst : in STD_LOGIC
  );
  end component buildup_block_encoder_pan_0_0;
  signal AND_gate_0_C : STD_LOGIC;
  signal AND_gate_1_C : STD_LOGIC;
  signal AND_gate_2_C : STD_LOGIC;
  signal AND_gate_3_C : STD_LOGIC;
  signal CS_1 : STD_LOGIC;
  signal Falling_edge_detector_0_Q : STD_LOGIC;
  signal Hall_effect_sensor_0_1 : STD_LOGIC;
  signal Hall_effect_sensor_1_1 : STD_LOGIC;
  signal NOT_gate_0_B : STD_LOGIC;
  signal NOT_gate_1_B : STD_LOGIC;
  signal Rising_edge_detector_0_Q : STD_LOGIC;
  signal SPI_0_SPI_out : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal block_encoder_pan_0_pulse_cnt : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal block_encoder_tilt_pulse_cnt : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal clock_divider_0_clk_div : STD_LOGIC;
  signal counter_1_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal encoder_a_pan_1 : STD_LOGIC;
  signal encoder_a_tilt_1 : STD_LOGIC;
  signal encoder_b_pan_1 : STD_LOGIC;
  signal encoder_b_tilt_1 : STD_LOGIC;
  signal mosi_1 : STD_LOGIC;
  signal pwm_pan_pwm : STD_LOGIC;
  signal pwm_tilt_ccw_pwm : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal sclk_1 : STD_LOGIC;
  signal spi_sub_0_MISO : STD_LOGIC;
  signal synchronizer_0_Q : STD_LOGIC;
  signal synchronizer_1_Q : STD_LOGIC;
  signal synchronizer_2_Q : STD_LOGIC;
  signal synchronizer_3_Q : STD_LOGIC;
  signal synchronizer_4_Q : STD_LOGIC;
  signal synchronizer_5_Q : STD_LOGIC;
  signal synchronizer_6_Q : STD_LOGIC;
  signal synchronizer_7_Q : STD_LOGIC;
  signal synchronizer_8_Q : STD_LOGIC;
  signal synchronizer_9_Q : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_5_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN buildup_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of mosi : signal is "xilinx.com:signal:reset:1.0 RST.MOSI RST";
  attribute X_INTERFACE_PARAMETER of mosi : signal is "XIL_INTERFACENAME RST.MOSI, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sclk : signal is "xilinx.com:signal:clock:1.0 CLK.SCLK CLK";
  attribute X_INTERFACE_PARAMETER of sclk : signal is "XIL_INTERFACENAME CLK.SCLK, CLK_DOMAIN buildup_sclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  CS_1 <= CS;
  Hall_effect_sensor_0_1 <= Hall_effect_sensor_0;
  Hall_effect_sensor_1_1 <= Hall_effect_sensor_1;
  clk_1 <= clk;
  encoder_a_pan_1 <= encoder_a_pan;
  encoder_a_tilt_1 <= encoder_a_tilt;
  encoder_b_pan_1 <= encoder_b_pan;
  encoder_b_tilt_1 <= encoder_b_tilt;
  led(3 downto 0) <= xlslice_5_Dout(3 downto 0);
  miso <= spi_sub_0_MISO;
  mosi_1 <= mosi;
  pwm_pan_ccw <= AND_gate_1_C;
  pwm_pan_cw <= AND_gate_0_C;
  pwm_tilt_ccw <= AND_gate_3_C;
  pwm_tilt_cw <= AND_gate_2_C;
  rst_1 <= rst;
  sclk_1 <= sclk;
AND_gate_0: component buildup_AND_gate_0_0
     port map (
      A => pwm_pan_pwm,
      B => xlslice_3_Dout(0),
      C => AND_gate_0_C
    );
AND_gate_1: component buildup_AND_gate_0_1
     port map (
      A => pwm_pan_pwm,
      B => NOT_gate_0_B,
      C => AND_gate_1_C
    );
AND_gate_2: component buildup_AND_gate_0_2
     port map (
      A => pwm_tilt_ccw_pwm,
      B => xlslice_2_Dout(0),
      C => AND_gate_2_C
    );
AND_gate_3: component buildup_AND_gate_0_3
     port map (
      A => pwm_tilt_ccw_pwm,
      B => NOT_gate_1_B,
      C => AND_gate_3_C
    );
Always_true: component buildup_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
Falling_edge_detector_0: component buildup_Falling_edge_detector_0_0
     port map (
      D => synchronizer_8_Q,
      Q => Falling_edge_detector_0_Q,
      clk => clk_1
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
Rising_edge_detector_0: component buildup_Rising_edge_detector_0_0
     port map (
      D => synchronizer_8_Q,
      Q => Rising_edge_detector_0_Q,
      clk => clk_1
    );
block_encoder_pan_0: component buildup_block_encoder_0_2
     port map (
      clk => clk_1,
      enable => xlconstant_1_dout(0),
      encoder_a => synchronizer_3_Q,
      encoder_b => synchronizer_2_Q,
      pulse_cnt(8 downto 0) => block_encoder_pan_0_pulse_cnt(8 downto 0),
      rst => synchronizer_9_Q
    );
block_encoder_tilt_0: component buildup_block_encoder_pan_0_0
     port map (
      clk => clk_1,
      enable => xlconstant_1_dout(0),
      encoder_a => synchronizer_6_Q,
      encoder_b => synchronizer_7_Q,
      pulse_cnt(8 downto 0) => block_encoder_tilt_pulse_cnt(8 downto 0),
      rst => synchronizer_9_Q
    );
clock_divider_0: component buildup_clock_divider_0_0
     port map (
      clk => clk_1,
      clk_div => clock_divider_0_clk_div,
      rst => '0'
    );
counter_1: component buildup_counter_1_0
     port map (
      clk => clock_divider_0_clk_div,
      cnt(7 downto 0) => counter_1_cnt(7 downto 0),
      en => xlconstant_1_dout(0),
      rst => synchronizer_9_Q
    );
pwm_pan: component buildup_pwm_gen_0_2
     port map (
      cnt(7 downto 0) => counter_1_cnt(7 downto 0),
      duty(7 downto 0) => xlslice_1_Dout(7 downto 0),
      pwm => pwm_pan_pwm
    );
pwm_tilt: component buildup_pwm_gen_0_3
     port map (
      cnt(7 downto 0) => counter_1_cnt(7 downto 0),
      duty(7 downto 0) => xlslice_0_Dout(7 downto 0),
      pwm => pwm_tilt_ccw_pwm
    );
spi_sub_0: component buildup_spi_sub_0_0
     port map (
      CS => synchronizer_5_Q,
      MISO => spi_sub_0_MISO,
      MOSI => synchronizer_4_Q,
      SCLK_falling => Falling_edge_detector_0_Q,
      SCLK_rising => Rising_edge_detector_0_Q,
      clk => clk_1,
      data_in(19 downto 0) => xlconcat_0_dout(19 downto 0),
      data_out(19 downto 0) => SPI_0_SPI_out(19 downto 0),
      rst => synchronizer_9_Q
    );
synchronizer_0: component buildup_synchronizer_0_2
     port map (
      D => Hall_effect_sensor_0_1,
      Q => synchronizer_0_Q,
      clk => clk_1
    );
synchronizer_1: component buildup_synchronizer_0_3
     port map (
      D => Hall_effect_sensor_1_1,
      Q => synchronizer_1_Q,
      clk => clk_1
    );
synchronizer_2: component buildup_synchronizer_0_4
     port map (
      D => encoder_b_pan_1,
      Q => synchronizer_2_Q,
      clk => clk_1
    );
synchronizer_3: component buildup_synchronizer_0_5
     port map (
      D => encoder_a_pan_1,
      Q => synchronizer_3_Q,
      clk => clk_1
    );
synchronizer_4: component buildup_synchronizer_0_6
     port map (
      D => mosi_1,
      Q => synchronizer_4_Q,
      clk => clk_1
    );
synchronizer_5: component buildup_synchronizer_0_7
     port map (
      D => CS_1,
      Q => synchronizer_5_Q,
      clk => clk_1
    );
synchronizer_6: component buildup_synchronizer_0_8
     port map (
      D => encoder_b_tilt_1,
      Q => synchronizer_6_Q,
      clk => clk_1
    );
synchronizer_7: component buildup_synchronizer_0_9
     port map (
      D => encoder_a_tilt_1,
      Q => synchronizer_7_Q,
      clk => clk_1
    );
synchronizer_8: component buildup_synchronizer_0_10
     port map (
      D => sclk_1,
      Q => synchronizer_8_Q,
      clk => clk_1
    );
synchronizer_9: component buildup_synchronizer_0_11
     port map (
      D => rst_1,
      Q => synchronizer_9_Q,
      clk => clk_1
    );
xlconcat_0: component buildup_xlconcat_0_0
     port map (
      In0(0) => synchronizer_0_Q,
      In1(0) => synchronizer_1_Q,
      In2(8 downto 0) => block_encoder_pan_0_pulse_cnt(8 downto 0),
      In3(8 downto 0) => block_encoder_tilt_pulse_cnt(8 downto 0),
      dout(19 downto 0) => xlconcat_0_dout(19 downto 0)
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
xlslice_5: component buildup_xlslice_5_0
     port map (
      Din(8 downto 0) => block_encoder_tilt_pulse_cnt(8 downto 0),
      Dout(3 downto 0) => xlslice_5_Dout(3 downto 0)
    );
end STRUCTURE;

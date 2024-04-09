--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Fri Apr  5 15:02:21 2024
--Host        : Cornelia running 64-bit major release  (build 9200)
--Command     : generate_target SPI.bd
--Design      : SPI
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI is
  port (
    Motor : out STD_LOGIC;
    SPI_chip_select : in STD_LOGIC;
    SPI_clk : in STD_LOGIC;
    SPI_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    encoder_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpga_clk : in STD_LOGIC;
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of SPI : entity is "SPI,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SPI,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of SPI : entity is "SPI.hwdef";
end SPI;

architecture STRUCTURE of SPI is
  component SPI_shift_register_gener_1_0 is
  port (
    clk : in STD_LOGIC;
    chip_select : in STD_LOGIC;
    register_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC;
    data : in STD_LOGIC;
    register_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    carry_out : out STD_LOGIC
  );
  end component SPI_shift_register_gener_1_0;
  component SPI_pwm_gen_0_0 is
  port (
    cnt : in STD_LOGIC_VECTOR ( 15 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm : out STD_LOGIC
  );
  end component SPI_pwm_gen_0_0;
  component SPI_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component SPI_counter_0_0;
  component SPI_latch_0_0 is
  port (
    rst : in STD_LOGIC;
    cnt : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component SPI_latch_0_0;
  component SPI_enable_counter_0_0 is
  port (
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    cnt : out STD_LOGIC
  );
  end component SPI_enable_counter_0_0;
  component SPI_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component SPI_xlconstant_0_0;
  signal MC_data_1 : STD_LOGIC;
  signal always_true_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal chip_select_1 : STD_LOGIC;
  signal clock_1 : STD_LOGIC;
  signal counter_0_cnt : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal enable_counter_0_cnt : STD_LOGIC;
  signal encoder_in_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fpga_clk_1 : STD_LOGIC;
  signal latch_0_Q : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pwm_gen_0_pwm : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal shift_register_input_carry_out : STD_LOGIC;
  signal shift_register_input_register_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of encoder_in : signal is "xilinx.com:signal:data:1.0 DATA.ENCODER_IN DATA";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of encoder_in : signal is "XIL_INTERFACENAME DATA.ENCODER_IN, LAYERED_METADATA undef";
begin
  MC_data_1 <= mosi;
  Motor <= pwm_gen_0_pwm;
  SPI_out(15 downto 0) <= shift_register_input_register_out(15 downto 0);
  chip_select_1 <= SPI_chip_select;
  clock_1 <= SPI_clk;
  encoder_in_1(15 downto 0) <= encoder_in(15 downto 0);
  fpga_clk_1 <= fpga_clk;
  miso <= shift_register_input_carry_out;
  rst_1 <= rst;
always_true: component SPI_xlconstant_0_0
     port map (
      dout(0) => always_true_dout(0)
    );
counter_0: component SPI_counter_0_0
     port map (
      clk => fpga_clk_1,
      cnt(15 downto 0) => counter_0_cnt(15 downto 0),
      en => always_true_dout(0),
      rst => rst_1
    );
enable_counter_0: component SPI_enable_counter_0_0
     port map (
      clk => clock_1,
      cnt => enable_counter_0_cnt,
      en => chip_select_1,
      rst => rst_1
    );
latch_0: component SPI_latch_0_0
     port map (
      D(15 downto 0) => shift_register_input_register_out(15 downto 0),
      Q(15 downto 0) => latch_0_Q(15 downto 0),
      cnt => enable_counter_0_cnt,
      rst => rst_1
    );
pwm_gen_0: component SPI_pwm_gen_0_0
     port map (
      cnt(15 downto 0) => counter_0_cnt(15 downto 0),
      duty(15 downto 0) => latch_0_Q(15 downto 0),
      pwm => pwm_gen_0_pwm
    );
shift_register_input: component SPI_shift_register_gener_1_0
     port map (
      carry_out => shift_register_input_carry_out,
      chip_select => chip_select_1,
      clk => clock_1,
      data => MC_data_1,
      register_in(15 downto 0) => encoder_in_1(15 downto 0),
      register_out(15 downto 0) => shift_register_input_register_out(15 downto 0),
      rst => rst_1
    );
end STRUCTURE;

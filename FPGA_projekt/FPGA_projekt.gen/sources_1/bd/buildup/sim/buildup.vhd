--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Tue Apr  9 15:18:38 2024
--Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of buildup : entity is "buildup,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=buildup,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=1,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of buildup : entity is "buildup.hwdef";
end buildup;

architecture STRUCTURE of buildup is
  component buildup_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component buildup_xlslice_0_0;
  component buildup_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component buildup_xlconcat_0_0;
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
  component buildup_SPI_wrapper_0_1 is
  port (
    Motor : out STD_LOGIC;
    SPI_chip_select : in STD_LOGIC;
    SPI_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SPI_sample : in STD_LOGIC;
    encoder_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpga_clk : in STD_LOGIC;
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component buildup_SPI_wrapper_0_1;
  component buildup_edge_detector_0_0 is
  port (
    clk : in STD_LOGIC;
    d : in STD_LOGIC;
    result : out STD_LOGIC
  );
  end component buildup_edge_detector_0_0;
  signal SPI_wrapper_0_Motor : STD_LOGIC;
  signal SPI_wrapper_0_SPI_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SPI_wrapper_0_miso : STD_LOGIC;
  signal block_encoder_0_pulse_cnt : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal btn_0_1 : STD_LOGIC;
  signal btn_1_1 : STD_LOGIC;
  signal btn_2_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal edge_detector_0_result : STD_LOGIC;
  signal encoder_a_0_1 : STD_LOGIC;
  signal encoder_b_0_1 : STD_LOGIC;
  signal ja_3_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of btn_1 : signal is "xilinx.com:signal:reset:1.0 RST.BTN_1 RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of btn_1 : signal is "XIL_INTERFACENAME RST.BTN_1, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET btn_2, CLK_DOMAIN buildup_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ja_3 : signal is "xilinx.com:signal:clock:1.0 CLK.JA_3 CLK";
  attribute X_INTERFACE_PARAMETER of ja_3 : signal is "XIL_INTERFACENAME CLK.JA_3, CLK_DOMAIN buildup_ja_3, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  btn_0_1 <= btn_0;
  btn_1_1 <= btn_1;
  btn_2_1 <= btn_2;
  clk_1 <= clk;
  encoder_a_0_1 <= ja_1;
  encoder_b_0_1 <= ja_2;
  ja_0 <= SPI_wrapper_0_Motor;
  ja_3_1 <= ja_3;
  led(1 downto 0) <= xlconcat_0_dout(1 downto 0);
SPI_wrapper_0: component buildup_SPI_wrapper_0_1
     port map (
      Motor => SPI_wrapper_0_Motor,
      SPI_chip_select => btn_0_1,
      SPI_out(15 downto 0) => SPI_wrapper_0_SPI_out(15 downto 0),
      SPI_sample => edge_detector_0_result,
      encoder_in(15 downto 9) => B"0000000",
      encoder_in(8 downto 0) => block_encoder_0_pulse_cnt(8 downto 0),
      fpga_clk => clk_1,
      miso => SPI_wrapper_0_miso,
      mosi => btn_1_1,
      rst => btn_2_1
    );
block_encoder_0: component buildup_block_encoder_0_0
     port map (
      clk => clk_1,
      enable => xlconstant_1_dout(0),
      encoder_a => encoder_a_0_1,
      encoder_b => encoder_b_0_1,
      pulse_cnt(8 downto 0) => block_encoder_0_pulse_cnt(8 downto 0),
      rst => btn_2_1
    );
edge_detector_0: component buildup_edge_detector_0_0
     port map (
      clk => clk_1,
      d => ja_3_1,
      result => edge_detector_0_result
    );
xlconcat_0: component buildup_xlconcat_0_0
     port map (
      In0(0) => xlslice_0_Dout(0),
      In1(0) => SPI_wrapper_0_miso,
      dout(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
xlconstant_1: component buildup_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
xlslice_0: component buildup_xlslice_0_0
     port map (
      Din(15 downto 0) => SPI_wrapper_0_SPI_out(15 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;

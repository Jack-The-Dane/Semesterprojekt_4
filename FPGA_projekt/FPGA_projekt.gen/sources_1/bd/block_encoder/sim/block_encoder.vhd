--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Wed Apr 17 17:09:33 2024
--Host        : Cornelia running 64-bit major release  (build 9200)
--Command     : generate_target block_encoder.bd
--Design      : block_encoder
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_encoder is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    pulse_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rst : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of block_encoder : entity is "block_encoder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=block_encoder,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of block_encoder : entity is "block_encoder.hwdef";
end block_encoder;

architecture STRUCTURE of block_encoder is
  component block_encoder_edge_detector_0_0 is
  port (
    clk : in STD_LOGIC;
    d : in STD_LOGIC;
    result : out STD_LOGIC
  );
  end component block_encoder_edge_detector_0_0;
  component block_encoder_up_down_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    up : in STD_LOGIC;
    down : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component block_encoder_up_down_counter_0_0;
  component block_encoder_edge_detector_0_1 is
  port (
    clk : in STD_LOGIC;
    d : in STD_LOGIC;
    result : out STD_LOGIC
  );
  end component block_encoder_edge_detector_0_1;
  component block_encoder_NOT_gate_0_0 is
  port (
    A : in STD_LOGIC;
    B : out STD_LOGIC
  );
  end component block_encoder_NOT_gate_0_0;
  component block_encoder_AND_gate_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : out STD_LOGIC
  );
  end component block_encoder_AND_gate_0_0;
  component block_encoder_NOT_gate_0_1 is
  port (
    A : in STD_LOGIC;
    B : out STD_LOGIC
  );
  end component block_encoder_NOT_gate_0_1;
  component block_encoder_AND_gate_1_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : out STD_LOGIC
  );
  end component block_encoder_AND_gate_1_0;
  signal AND_gate_0_C : STD_LOGIC;
  signal AND_gate_1_C : STD_LOGIC;
  signal NOT_gate_0_B : STD_LOGIC;
  signal NOT_gate_b_B : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal edge_detector_a_edge : STD_LOGIC;
  signal edge_detector_b_edge : STD_LOGIC;
  signal enable_1 : STD_LOGIC;
  signal encoder_a_1 : STD_LOGIC;
  signal encoder_b_1 : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal up_down_counter_0_cnt : STD_LOGIC_VECTOR ( 8 downto 0 );
begin
  clk_1 <= clk;
  enable_1 <= enable;
  encoder_a_1 <= encoder_a;
  encoder_b_1 <= encoder_b;
  pulse_cnt(8 downto 0) <= up_down_counter_0_cnt(8 downto 0);
  rst_1 <= rst;
NOT_gate_a: component block_encoder_NOT_gate_0_1
     port map (
      A => encoder_a_1,
      B => NOT_gate_0_B
    );
NOT_gate_b: component block_encoder_NOT_gate_0_0
     port map (
      A => encoder_b_1,
      B => NOT_gate_b_B
    );
down_signal: component block_encoder_AND_gate_1_0
     port map (
      A => edge_detector_b_edge,
      B => NOT_gate_0_B,
      C => AND_gate_1_C
    );
edge_detector_a: component block_encoder_edge_detector_0_0
     port map (
      clk => clk_1,
      d => encoder_a_1,
      result => edge_detector_a_edge
    );
edge_detector_b: component block_encoder_edge_detector_0_1
     port map (
      clk => clk_1,
      d => encoder_b_1,
      result => edge_detector_b_edge
    );
up_down_counter_0: component block_encoder_up_down_counter_0_0
     port map (
      clk => clk_1,
      cnt(8 downto 0) => up_down_counter_0_cnt(8 downto 0),
      down => AND_gate_1_C,
      en => enable_1,
      rst => rst_1,
      up => AND_gate_0_C
    );
up_signal: component block_encoder_AND_gate_0_0
     port map (
      A => edge_detector_a_edge,
      B => NOT_gate_b_B,
      C => AND_gate_0_C
    );
end STRUCTURE;

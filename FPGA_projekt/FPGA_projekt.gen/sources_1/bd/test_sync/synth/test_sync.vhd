--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Tue May  7 15:30:02 2024
--Host        : Cornelia running 64-bit major release  (build 9200)
--Command     : generate_target test_sync.bd
--Design      : test_sync
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_sync is
  port (
    clk : in STD_LOGIC;
    pwm_tilt_cw : out STD_LOGIC;
    sclk : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of test_sync : entity is "test_sync,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=test_sync,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of test_sync : entity is "test_sync.hwdef";
end test_sync;

architecture STRUCTURE of test_sync is
  component test_sync_flipflipflopflop_0_0 is
  port (
    D : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component test_sync_flipflipflopflop_0_0;
  component test_sync_flipflipflopflop_0_1 is
  port (
    D : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component test_sync_flipflipflopflop_0_1;
  signal clk_1 : STD_LOGIC;
  signal flipflipflopflop_0_Q : STD_LOGIC;
  signal flipflipflopflop_1_Q : STD_LOGIC;
  signal sclk_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN test_sync_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  clk_1 <= clk;
  pwm_tilt_cw <= flipflipflopflop_1_Q;
  sclk_1 <= sclk;
flipflipflopflop_0: component test_sync_flipflipflopflop_0_0
     port map (
      D => sclk_1,
      Q => flipflipflopflop_0_Q,
      clk => clk_1
    );
flipflipflopflop_1: component test_sync_flipflipflopflop_0_1
     port map (
      D => flipflipflopflop_0_Q,
      Q => flipflipflopflop_1_Q,
      clk => clk_1
    );
end STRUCTURE;

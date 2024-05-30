-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Apr 12 13:05:39 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ buildup_SPI_wrapper_0_3_sim_netlist.vhdl
-- Design      : buildup_SPI_wrapper_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI is
  port (
    SPI_chip_select : in STD_LOGIC;
    SPI_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SPI_sample : in STD_LOGIC;
    encoder_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpga_clk : in STD_LOGIC;
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute hw_handoff : string;
  attribute hw_handoff of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI : entity is "SPI.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_enable_counter_0_0 is
  port (
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    sample : in STD_LOGIC;
    cnt : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_enable_counter_0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_latch_0_0 is
  port (
    rst : in STD_LOGIC;
    cnt : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_latch_0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_shift_register_input_1 is
  port (
    sample : in STD_LOGIC;
    chip_select : in STD_LOGIC;
    register_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC;
    data : in STD_LOGIC;
    register_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    carry_out : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_shift_register_input_1;
  signal enable_counter_0_cnt : STD_LOGIC;
  signal shift_register_input_register_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute syn_black_box : string;
  attribute syn_black_box of Prescaler : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of Prescaler : label is "enable_counter,Vivado 2023.2";
  attribute syn_black_box of latch_0 : label is "TRUE";
  attribute x_core_info of latch_0 : label is "latch,Vivado 2023.2";
  attribute syn_black_box of shift_register_input : label is "TRUE";
  attribute x_core_info of shift_register_input : label is "shift_register_generic,Vivado 2023.2";
  attribute x_interface_info : string;
  attribute x_interface_info of encoder_in : signal is "xilinx.com:signal:data:1.0 DATA.ENCODER_IN DATA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of encoder_in : signal is "XIL_INTERFACENAME DATA.ENCODER_IN, LAYERED_METADATA undef";
begin
Prescaler: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_enable_counter_0_0
     port map (
      cnt => enable_counter_0_cnt,
      en => SPI_chip_select,
      rst => rst,
      sample => SPI_sample
    );
latch_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_latch_0_0
     port map (
      D(15 downto 0) => shift_register_input_register_out(15 downto 0),
      Q(15 downto 0) => SPI_out(15 downto 0),
      cnt => enable_counter_0_cnt,
      rst => rst
    );
shift_register_input: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_shift_register_input_1
     port map (
      carry_out => miso,
      chip_select => SPI_chip_select,
      data => mosi,
      register_in(15 downto 0) => encoder_in(15 downto 0),
      register_out(15 downto 0) => shift_register_input_register_out(15 downto 0),
      rst => rst,
      sample => SPI_sample
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_wrapper is
  port (
    SPI_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    miso : out STD_LOGIC;
    SPI_chip_select : in STD_LOGIC;
    SPI_sample : in STD_LOGIC;
    encoder_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_wrapper is
  attribute hw_handoff : string;
  attribute hw_handoff of SPI_i : label is "SPI.hwdef";
begin
SPI_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI
     port map (
      SPI_chip_select => SPI_chip_select,
      SPI_out(15 downto 0) => SPI_out(15 downto 0),
      SPI_sample => SPI_sample,
      encoder_in(15 downto 0) => encoder_in(15 downto 0),
      fpga_clk => '0',
      miso => miso,
      mosi => mosi,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    SPI_chip_select : in STD_LOGIC;
    SPI_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SPI_sample : in STD_LOGIC;
    encoder_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpga_clk : in STD_LOGIC;
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "buildup_SPI_wrapper_0_3,SPI_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SPI_wrapper,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of fpga_clk : signal is "xilinx.com:signal:clock:1.0 fpga_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of fpga_clk : signal is "XIL_INTERFACENAME fpga_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN buildup_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_wrapper
     port map (
      SPI_chip_select => SPI_chip_select,
      SPI_out(15 downto 0) => SPI_out(15 downto 0),
      SPI_sample => SPI_sample,
      encoder_in(15 downto 0) => encoder_in(15 downto 0),
      miso => miso,
      mosi => mosi,
      rst => rst
    );
end STRUCTURE;

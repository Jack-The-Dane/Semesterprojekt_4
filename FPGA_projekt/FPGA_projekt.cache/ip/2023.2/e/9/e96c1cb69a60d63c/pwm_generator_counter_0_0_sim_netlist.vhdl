-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Mar 27 09:37:47 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pwm_generator_counter_0_0_sim_netlist.vhdl
-- Design      : pwm_generator_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter is
  port (
    cnt : out STD_LOGIC_VECTOR ( 20 downto 0 );
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter is
  signal \^cnt\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \cnt_int[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_int_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_int_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_int_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_int_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_int_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_int_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_int_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_int_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_int_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_int_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_int_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_int_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_int_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_int_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_int_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_int_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_int_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_int_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_int_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_int_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_int_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_int_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_int_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_int_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_int_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_int_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_int_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_int_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_int_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_int_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_int_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_int_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_int_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_int_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_int_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_int_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_int_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_int_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_int_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_int_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_int_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_cnt_int_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_int_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_int_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_int_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_int_reg[19]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_int_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_int_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_int_reg[7]_i_1\ : label is 11;
begin
  cnt(20 downto 0) <= \^cnt\(20 downto 0);
\cnt_int[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cnt\(0),
      O => \cnt_int[3]_i_2_n_0\
    );
\cnt_int_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[3]_i_1_n_7\,
      Q => \^cnt\(0)
    );
\cnt_int_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[11]_i_1_n_5\,
      Q => \^cnt\(10)
    );
\cnt_int_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[11]_i_1_n_4\,
      Q => \^cnt\(11)
    );
\cnt_int_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_int_reg[7]_i_1_n_0\,
      CO(3) => \cnt_int_reg[11]_i_1_n_0\,
      CO(2) => \cnt_int_reg[11]_i_1_n_1\,
      CO(1) => \cnt_int_reg[11]_i_1_n_2\,
      CO(0) => \cnt_int_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_int_reg[11]_i_1_n_4\,
      O(2) => \cnt_int_reg[11]_i_1_n_5\,
      O(1) => \cnt_int_reg[11]_i_1_n_6\,
      O(0) => \cnt_int_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^cnt\(11 downto 8)
    );
\cnt_int_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[15]_i_1_n_7\,
      Q => \^cnt\(12)
    );
\cnt_int_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[15]_i_1_n_6\,
      Q => \^cnt\(13)
    );
\cnt_int_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[15]_i_1_n_5\,
      Q => \^cnt\(14)
    );
\cnt_int_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[15]_i_1_n_4\,
      Q => \^cnt\(15)
    );
\cnt_int_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_int_reg[11]_i_1_n_0\,
      CO(3) => \cnt_int_reg[15]_i_1_n_0\,
      CO(2) => \cnt_int_reg[15]_i_1_n_1\,
      CO(1) => \cnt_int_reg[15]_i_1_n_2\,
      CO(0) => \cnt_int_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_int_reg[15]_i_1_n_4\,
      O(2) => \cnt_int_reg[15]_i_1_n_5\,
      O(1) => \cnt_int_reg[15]_i_1_n_6\,
      O(0) => \cnt_int_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^cnt\(15 downto 12)
    );
\cnt_int_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[19]_i_1_n_7\,
      Q => \^cnt\(16)
    );
\cnt_int_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[19]_i_1_n_6\,
      Q => \^cnt\(17)
    );
\cnt_int_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[19]_i_1_n_5\,
      Q => \^cnt\(18)
    );
\cnt_int_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[19]_i_1_n_4\,
      Q => \^cnt\(19)
    );
\cnt_int_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_int_reg[15]_i_1_n_0\,
      CO(3) => \cnt_int_reg[19]_i_1_n_0\,
      CO(2) => \cnt_int_reg[19]_i_1_n_1\,
      CO(1) => \cnt_int_reg[19]_i_1_n_2\,
      CO(0) => \cnt_int_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_int_reg[19]_i_1_n_4\,
      O(2) => \cnt_int_reg[19]_i_1_n_5\,
      O(1) => \cnt_int_reg[19]_i_1_n_6\,
      O(0) => \cnt_int_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^cnt\(19 downto 16)
    );
\cnt_int_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[3]_i_1_n_6\,
      Q => \^cnt\(1)
    );
\cnt_int_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[20]_i_1_n_7\,
      Q => \^cnt\(20)
    );
\cnt_int_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_int_reg[19]_i_1_n_0\,
      CO(3 downto 0) => \NLW_cnt_int_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_cnt_int_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \cnt_int_reg[20]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \^cnt\(20)
    );
\cnt_int_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[3]_i_1_n_5\,
      Q => \^cnt\(2)
    );
\cnt_int_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[3]_i_1_n_4\,
      Q => \^cnt\(3)
    );
\cnt_int_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_int_reg[3]_i_1_n_0\,
      CO(2) => \cnt_int_reg[3]_i_1_n_1\,
      CO(1) => \cnt_int_reg[3]_i_1_n_2\,
      CO(0) => \cnt_int_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_int_reg[3]_i_1_n_4\,
      O(2) => \cnt_int_reg[3]_i_1_n_5\,
      O(1) => \cnt_int_reg[3]_i_1_n_6\,
      O(0) => \cnt_int_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^cnt\(3 downto 1),
      S(0) => \cnt_int[3]_i_2_n_0\
    );
\cnt_int_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[7]_i_1_n_7\,
      Q => \^cnt\(4)
    );
\cnt_int_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[7]_i_1_n_6\,
      Q => \^cnt\(5)
    );
\cnt_int_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[7]_i_1_n_5\,
      Q => \^cnt\(6)
    );
\cnt_int_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[7]_i_1_n_4\,
      Q => \^cnt\(7)
    );
\cnt_int_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_int_reg[3]_i_1_n_0\,
      CO(3) => \cnt_int_reg[7]_i_1_n_0\,
      CO(2) => \cnt_int_reg[7]_i_1_n_1\,
      CO(1) => \cnt_int_reg[7]_i_1_n_2\,
      CO(0) => \cnt_int_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_int_reg[7]_i_1_n_4\,
      O(2) => \cnt_int_reg[7]_i_1_n_5\,
      O(1) => \cnt_int_reg[7]_i_1_n_6\,
      O(0) => \cnt_int_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^cnt\(7 downto 4)
    );
\cnt_int_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[11]_i_1_n_7\,
      Q => \^cnt\(8)
    );
\cnt_int_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \cnt_int_reg[11]_i_1_n_6\,
      Q => \^cnt\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 20 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pwm_generator_counter_0_0,counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "counter,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN pwm_generator_clk_0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
     port map (
      clk => clk,
      cnt(20 downto 0) => cnt(20 downto 0),
      en => en,
      rst => rst
    );
end STRUCTURE;

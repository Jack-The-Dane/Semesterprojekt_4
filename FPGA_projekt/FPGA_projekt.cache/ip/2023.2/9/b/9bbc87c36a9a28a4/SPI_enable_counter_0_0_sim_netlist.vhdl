-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue Apr  9 13:32:34 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPI_enable_counter_0_0_sim_netlist.vhdl
-- Design      : SPI_enable_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_enable_counter is
  port (
    cnt : out STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_enable_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_enable_counter is
  signal \^cnt\ : STD_LOGIC;
  signal cnt_temp : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \cnt_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_temp[5]_i_2_n_0\ : STD_LOGIC;
  signal cnt_temp_0 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal out_temp_i_1_n_0 : STD_LOGIC;
  signal out_temp_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_temp[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_temp[3]_i_1\ : label is "soft_lutpair0";
begin
  cnt <= \^cnt\;
\cnt_temp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEFFFF"
    )
        port map (
      I0 => cnt_temp(1),
      I1 => cnt_temp(3),
      I2 => cnt_temp(2),
      I3 => cnt_temp(5),
      I4 => cnt_temp(4),
      I5 => cnt_temp(0),
      O => \cnt_temp[0]_i_1_n_0\
    );
\cnt_temp[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_temp(0),
      I1 => cnt_temp(1),
      O => cnt_temp_0(1)
    );
\cnt_temp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_temp(0),
      I1 => cnt_temp(1),
      I2 => cnt_temp(2),
      O => cnt_temp_0(2)
    );
\cnt_temp[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78F0"
    )
        port map (
      I0 => cnt_temp(0),
      I1 => cnt_temp(1),
      I2 => cnt_temp(3),
      I3 => cnt_temp(2),
      O => cnt_temp_0(3)
    );
\cnt_temp[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFE80008000"
    )
        port map (
      I0 => cnt_temp(0),
      I1 => cnt_temp(1),
      I2 => cnt_temp(3),
      I3 => cnt_temp(2),
      I4 => cnt_temp(5),
      I5 => cnt_temp(4),
      O => cnt_temp_0(4)
    );
\cnt_temp[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFF0000"
    )
        port map (
      I0 => cnt_temp(0),
      I1 => cnt_temp(1),
      I2 => cnt_temp(3),
      I3 => cnt_temp(2),
      I4 => cnt_temp(5),
      I5 => cnt_temp(4),
      O => cnt_temp_0(5)
    );
\cnt_temp[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en,
      I1 => rst,
      O => \cnt_temp[5]_i_2_n_0\
    );
\cnt_temp_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_temp[5]_i_2_n_0\,
      D => \cnt_temp[0]_i_1_n_0\,
      Q => cnt_temp(0)
    );
\cnt_temp_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_temp[5]_i_2_n_0\,
      D => cnt_temp_0(1),
      Q => cnt_temp(1)
    );
\cnt_temp_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_temp[5]_i_2_n_0\,
      D => cnt_temp_0(2),
      Q => cnt_temp(2)
    );
\cnt_temp_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_temp[5]_i_2_n_0\,
      D => cnt_temp_0(3),
      Q => cnt_temp(3)
    );
\cnt_temp_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_temp[5]_i_2_n_0\,
      D => cnt_temp_0(4),
      Q => cnt_temp(4)
    );
\cnt_temp_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \cnt_temp[5]_i_2_n_0\,
      D => cnt_temp_0(5),
      Q => cnt_temp(5)
    );
out_temp_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \^cnt\,
      I1 => out_temp_i_2_n_0,
      I2 => en,
      O => out_temp_i_1_n_0
    );
out_temp_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => cnt_temp(5),
      I1 => cnt_temp(2),
      I2 => cnt_temp(3),
      I3 => cnt_temp(4),
      I4 => cnt_temp(0),
      I5 => cnt_temp(1),
      O => out_temp_i_2_n_0
    );
out_temp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => out_temp_i_1_n_0,
      Q => \^cnt\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    cnt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SPI_enable_counter_0_0,enable_counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "enable_counter,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN SPI_SPI_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_enable_counter
     port map (
      clk => clk,
      cnt => cnt,
      en => en,
      rst => rst
    );
end STRUCTURE;

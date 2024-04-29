-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Apr 29 09:55:31 2024
-- Host        : Cornelia running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ block_encoder_up_down_counter_0_0_sim_netlist.vhdl
-- Design      : block_encoder_up_down_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_down_counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    up : in STD_LOGIC;
    down : in STD_LOGIC;
    en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_down_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_down_counter is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \int_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \int_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \int_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \int_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \int_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \int_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \int_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \int_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \int_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \int_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \int_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \int_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \int_cnt[8]_i_6_n_0\ : STD_LOGIC;
  signal \int_cnt[8]_i_7_n_0\ : STD_LOGIC;
  signal \int_cnt[8]_i_8_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \int_cnt[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_cnt[4]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_cnt[5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \int_cnt[5]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \int_cnt[8]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_cnt[8]_i_6\ : label is "soft_lutpair2";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\int_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFAB"
    )
        port map (
      I0 => \int_cnt[8]_i_5_n_0\,
      I1 => up,
      I2 => \^q\(0),
      I3 => \int_cnt[0]_i_2_n_0\,
      O => p_0_in(0)
    );
\int_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \int_cnt[8]_i_7_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(8),
      I3 => \^q\(6),
      I4 => \^q\(5),
      O => \int_cnt[0]_i_2_n_0\
    );
\int_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CEECFEEF"
    )
        port map (
      I0 => \int_cnt[8]_i_3_n_0\,
      I1 => \int_cnt[8]_i_5_n_0\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => up,
      O => p_0_in(1)
    );
\int_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEECECECFEFCFCEF"
    )
        port map (
      I0 => \int_cnt[8]_i_3_n_0\,
      I1 => \int_cnt[8]_i_5_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => up,
      O => p_0_in(2)
    );
\int_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BCCCCCCE88888882"
    )
        port map (
      I0 => \int_cnt[7]_i_2_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \int_cnt[8]_i_3_n_0\,
      O => p_0_in(3)
    );
\int_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CE82B382"
    )
        port map (
      I0 => \int_cnt[7]_i_2_n_0\,
      I1 => \^q\(4),
      I2 => \int_cnt[4]_i_2_n_0\,
      I3 => \int_cnt[8]_i_3_n_0\,
      I4 => \int_cnt[4]_i_3_n_0\,
      O => p_0_in(4)
    );
\int_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \int_cnt[4]_i_2_n_0\
    );
\int_cnt[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \int_cnt[4]_i_3_n_0\
    );
\int_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F8F2F8FFF8F2FF"
    )
        port map (
      I0 => \int_cnt[8]_i_3_n_0\,
      I1 => \int_cnt[5]_i_2_n_0\,
      I2 => \int_cnt[8]_i_5_n_0\,
      I3 => \^q\(5),
      I4 => \int_cnt[5]_i_3_n_0\,
      I5 => up,
      O => p_0_in(5)
    );
\int_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      O => \int_cnt[5]_i_2_n_0\
    );
\int_cnt[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \int_cnt[5]_i_3_n_0\
    );
\int_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF2F2F8F8F2FF"
    )
        port map (
      I0 => \int_cnt[8]_i_3_n_0\,
      I1 => \int_cnt[7]_i_4_n_0\,
      I2 => \int_cnt[8]_i_5_n_0\,
      I3 => up,
      I4 => \^q\(6),
      I5 => \int_cnt[7]_i_3_n_0\,
      O => p_0_in(6)
    );
\int_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCE8882BBCE8882"
    )
        port map (
      I0 => \int_cnt[7]_i_2_n_0\,
      I1 => \^q\(7),
      I2 => \int_cnt[7]_i_3_n_0\,
      I3 => \^q\(6),
      I4 => \int_cnt[8]_i_3_n_0\,
      I5 => \int_cnt[7]_i_4_n_0\,
      O => p_0_in(7)
    );
\int_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \int_cnt[8]_i_8_n_0\,
      I5 => up,
      O => \int_cnt[7]_i_2_n_0\
    );
\int_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \int_cnt[7]_i_3_n_0\
    );
\int_cnt[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \int_cnt[7]_i_4_n_0\
    );
\int_cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => up,
      I1 => down,
      I2 => en,
      O => \int_cnt[8]_i_1_n_0\
    );
\int_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF2F2F8F8F2FF"
    )
        port map (
      I0 => \int_cnt[8]_i_3_n_0\,
      I1 => \int_cnt[8]_i_4_n_0\,
      I2 => \int_cnt[8]_i_5_n_0\,
      I3 => up,
      I4 => \^q\(8),
      I5 => \int_cnt[8]_i_6_n_0\,
      O => p_0_in(8)
    );
\int_cnt[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(8),
      I3 => \^q\(2),
      I4 => \int_cnt[8]_i_7_n_0\,
      I5 => up,
      O => \int_cnt[8]_i_3_n_0\
    );
\int_cnt[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \int_cnt[7]_i_4_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      O => \int_cnt[8]_i_4_n_0\
    );
\int_cnt[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \int_cnt[8]_i_8_n_0\,
      I5 => up,
      O => \int_cnt[8]_i_5_n_0\
    );
\int_cnt[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(6),
      I1 => \int_cnt[7]_i_3_n_0\,
      I2 => \^q\(7),
      O => \int_cnt[8]_i_6_n_0\
    );
\int_cnt[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(7),
      O => \int_cnt[8]_i_7_n_0\
    );
\int_cnt[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \^q\(8),
      I4 => \^q\(7),
      O => \int_cnt[8]_i_8_n_0\
    );
\int_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \int_cnt[8]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(0),
      Q => \^q\(0)
    );
\int_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \int_cnt[8]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(1),
      Q => \^q\(1)
    );
\int_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \int_cnt[8]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(2),
      Q => \^q\(2)
    );
\int_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \int_cnt[8]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(3),
      Q => \^q\(3)
    );
\int_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \int_cnt[8]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(4),
      Q => \^q\(4)
    );
\int_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \int_cnt[8]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(5),
      Q => \^q\(5)
    );
\int_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \int_cnt[8]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(6),
      Q => \^q\(6)
    );
\int_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \int_cnt[8]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(7),
      Q => \^q\(7)
    );
\int_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \int_cnt[8]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(8),
      Q => \^q\(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    up : in STD_LOGIC;
    down : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "block_encoder_up_down_counter_0_0,up_down_counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "up_down_counter,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_up_down_counter
     port map (
      Q(8 downto 0) => cnt(8 downto 0),
      clk => clk,
      down => down,
      en => en,
      rst => rst,
      up => up
    );
end STRUCTURE;

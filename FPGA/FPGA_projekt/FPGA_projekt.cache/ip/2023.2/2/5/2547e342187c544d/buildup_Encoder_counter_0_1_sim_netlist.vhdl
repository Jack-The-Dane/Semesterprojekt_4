-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri May 17 10:59:26 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ buildup_Encoder_counter_0_1_sim_netlist.vhdl
-- Design      : buildup_Encoder_counter_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Encoder_counter is
  port (
    encoder_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    encoder_b : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    encoder_a : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Encoder_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Encoder_counter is
  signal FF1 : STD_LOGIC;
  signal FF2 : STD_LOGIC;
  signal FF3 : STD_LOGIC;
  signal FF4 : STD_LOGIC;
  signal \^encoder_cnt\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal int_cnt12_out : STD_LOGIC;
  signal \int_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[8]_i_7_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[8]_i_8_n_0\ : STD_LOGIC;
  signal \int_cnt_reg[8]_i_9_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \int_cnt_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \int_cnt_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \int_cnt_reg[0]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \int_cnt_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \int_cnt_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \int_cnt_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \int_cnt_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \int_cnt_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \int_cnt_reg[2]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \int_cnt_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \int_cnt_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \int_cnt_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \int_cnt_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \int_cnt_reg[4]_i_3\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \int_cnt_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \int_cnt_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \int_cnt_reg[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_cnt_reg[5]_i_3\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \int_cnt_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \int_cnt_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \int_cnt_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \int_cnt_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \int_cnt_reg[7]_i_2\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \int_cnt_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \int_cnt_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \int_cnt_reg[8]_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_cnt_reg[8]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_cnt_reg[8]_i_3\ : label is "soft_lutpair1";
begin
  encoder_cnt(8 downto 0) <= \^encoder_cnt\(8 downto 0);
FF1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => encoder_a,
      Q => FF1
    );
FF2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => FF1,
      Q => FF2
    );
FF3_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => encoder_b,
      Q => FF3
    );
FF4_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => FF3,
      Q => FF4
    );
\int_cnt_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \int_cnt_reg[0]_i_1_n_0\,
      G => \int_cnt_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^encoder_cnt\(0)
    );
\int_cnt_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \int_cnt_reg[8]_i_6_n_0\,
      I1 => \^encoder_cnt\(0),
      I2 => \int_cnt_reg[7]_i_2_n_0\,
      O => \int_cnt_reg[0]_i_1_n_0\
    );
\int_cnt_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \int_cnt_reg[1]_i_1_n_0\,
      G => \int_cnt_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^encoder_cnt\(1)
    );
\int_cnt_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE82"
    )
        port map (
      I0 => \int_cnt_reg[7]_i_2_n_0\,
      I1 => \^encoder_cnt\(1),
      I2 => \^encoder_cnt\(0),
      I3 => \int_cnt_reg[8]_i_6_n_0\,
      O => \int_cnt_reg[1]_i_1_n_0\
    );
\int_cnt_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \int_cnt_reg[2]_i_1_n_0\,
      G => \int_cnt_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^encoder_cnt\(2)
    );
\int_cnt_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAE0E0AC"
    )
        port map (
      I0 => \int_cnt_reg[8]_i_6_n_0\,
      I1 => \int_cnt_reg[7]_i_2_n_0\,
      I2 => \^encoder_cnt\(2),
      I3 => \^encoder_cnt\(0),
      I4 => \^encoder_cnt\(1),
      O => \int_cnt_reg[2]_i_1_n_0\
    );
\int_cnt_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \int_cnt_reg[3]_i_1_n_0\,
      G => \int_cnt_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^encoder_cnt\(3)
    );
\int_cnt_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEFBBBEABAEABA"
    )
        port map (
      I0 => \int_cnt_reg[8]_i_3_n_0\,
      I1 => \^encoder_cnt\(3),
      I2 => \int_cnt_reg[8]_i_4_n_0\,
      I3 => \int_cnt_reg[4]_i_3_n_0\,
      I4 => \int_cnt_reg[4]_i_2_n_0\,
      I5 => \int_cnt_reg[8]_i_6_n_0\,
      O => \int_cnt_reg[3]_i_1_n_0\
    );
\int_cnt_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \int_cnt_reg[4]_i_1_n_0\,
      G => \int_cnt_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^encoder_cnt\(4)
    );
\int_cnt_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F822F822FA00AAF0"
    )
        port map (
      I0 => \int_cnt_reg[8]_i_6_n_0\,
      I1 => \int_cnt_reg[4]_i_2_n_0\,
      I2 => \int_cnt_reg[7]_i_2_n_0\,
      I3 => \^encoder_cnt\(4),
      I4 => \int_cnt_reg[4]_i_3_n_0\,
      I5 => \^encoder_cnt\(3),
      O => \int_cnt_reg[4]_i_1_n_0\
    );
\int_cnt_reg[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^encoder_cnt\(1),
      I1 => \^encoder_cnt\(0),
      I2 => \^encoder_cnt\(2),
      O => \int_cnt_reg[4]_i_2_n_0\
    );
\int_cnt_reg[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^encoder_cnt\(1),
      I1 => \^encoder_cnt\(0),
      I2 => \^encoder_cnt\(2),
      O => \int_cnt_reg[4]_i_3_n_0\
    );
\int_cnt_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \int_cnt_reg[5]_i_1_n_0\,
      G => \int_cnt_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^encoder_cnt\(5)
    );
\int_cnt_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAFEAAEFAFEEAAE"
    )
        port map (
      I0 => \int_cnt_reg[8]_i_3_n_0\,
      I1 => \int_cnt_reg[8]_i_4_n_0\,
      I2 => \^encoder_cnt\(5),
      I3 => \int_cnt_reg[5]_i_2_n_0\,
      I4 => \int_cnt_reg[8]_i_6_n_0\,
      I5 => \int_cnt_reg[5]_i_3_n_0\,
      O => \int_cnt_reg[5]_i_1_n_0\
    );
\int_cnt_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^encoder_cnt\(3),
      I1 => \^encoder_cnt\(1),
      I2 => \^encoder_cnt\(0),
      I3 => \^encoder_cnt\(2),
      I4 => \^encoder_cnt\(4),
      O => \int_cnt_reg[5]_i_2_n_0\
    );
\int_cnt_reg[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^encoder_cnt\(4),
      I1 => \^encoder_cnt\(3),
      I2 => \^encoder_cnt\(1),
      I3 => \^encoder_cnt\(0),
      I4 => \^encoder_cnt\(2),
      O => \int_cnt_reg[5]_i_3_n_0\
    );
\int_cnt_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \int_cnt_reg[6]_i_1_n_0\,
      G => \int_cnt_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^encoder_cnt\(6)
    );
\int_cnt_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEEABAFBBBEABA"
    )
        port map (
      I0 => \int_cnt_reg[8]_i_3_n_0\,
      I1 => \^encoder_cnt\(6),
      I2 => \int_cnt_reg[8]_i_4_n_0\,
      I3 => \int_cnt_reg[7]_i_3_n_0\,
      I4 => \int_cnt_reg[8]_i_6_n_0\,
      I5 => \int_cnt_reg[7]_i_4_n_0\,
      O => \int_cnt_reg[6]_i_1_n_0\
    );
\int_cnt_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \int_cnt_reg[7]_i_1_n_0\,
      G => \int_cnt_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^encoder_cnt\(7)
    );
\int_cnt_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCE8882BBCE8882"
    )
        port map (
      I0 => \int_cnt_reg[7]_i_2_n_0\,
      I1 => \^encoder_cnt\(7),
      I2 => \int_cnt_reg[7]_i_3_n_0\,
      I3 => \^encoder_cnt\(6),
      I4 => \int_cnt_reg[8]_i_6_n_0\,
      I5 => \int_cnt_reg[7]_i_4_n_0\,
      O => \int_cnt_reg[7]_i_1_n_0\
    );
\int_cnt_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => \int_cnt_reg[8]_i_4_n_0\,
      I1 => \^encoder_cnt\(1),
      I2 => \^encoder_cnt\(0),
      I3 => \^encoder_cnt\(2),
      I4 => \int_cnt_reg[8]_i_8_n_0\,
      O => \int_cnt_reg[7]_i_2_n_0\
    );
\int_cnt_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^encoder_cnt\(4),
      I1 => \^encoder_cnt\(2),
      I2 => \^encoder_cnt\(0),
      I3 => \^encoder_cnt\(1),
      I4 => \^encoder_cnt\(3),
      I5 => \^encoder_cnt\(5),
      O => \int_cnt_reg[7]_i_3_n_0\
    );
\int_cnt_reg[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^encoder_cnt\(2),
      I1 => \^encoder_cnt\(0),
      I2 => \^encoder_cnt\(1),
      I3 => \^encoder_cnt\(3),
      I4 => \^encoder_cnt\(4),
      I5 => \^encoder_cnt\(5),
      O => \int_cnt_reg[7]_i_4_n_0\
    );
\int_cnt_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \int_cnt_reg[8]_i_1_n_0\,
      G => \int_cnt_reg[8]_i_2_n_0\,
      GE => '1',
      Q => \^encoder_cnt\(8)
    );
\int_cnt_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEEABAFBBBEABA"
    )
        port map (
      I0 => \int_cnt_reg[8]_i_3_n_0\,
      I1 => \^encoder_cnt\(8),
      I2 => \int_cnt_reg[8]_i_4_n_0\,
      I3 => \int_cnt_reg[8]_i_5_n_0\,
      I4 => \int_cnt_reg[8]_i_6_n_0\,
      I5 => \int_cnt_reg[8]_i_7_n_0\,
      O => \int_cnt_reg[8]_i_1_n_0\
    );
\int_cnt_reg[8]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => FF3,
      I1 => FF1,
      I2 => FF2,
      O => int_cnt12_out
    );
\int_cnt_reg[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABBAFAA"
    )
        port map (
      I0 => rst,
      I1 => FF4,
      I2 => FF2,
      I3 => FF1,
      I4 => FF3,
      O => \int_cnt_reg[8]_i_2_n_0\
    );
\int_cnt_reg[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \int_cnt_reg[8]_i_4_n_0\,
      I1 => \^encoder_cnt\(1),
      I2 => \^encoder_cnt\(0),
      I3 => \^encoder_cnt\(2),
      I4 => \int_cnt_reg[8]_i_8_n_0\,
      O => \int_cnt_reg[8]_i_3_n_0\
    );
\int_cnt_reg[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => FF4,
      I1 => FF1,
      I2 => FF3,
      O => \int_cnt_reg[8]_i_4_n_0\
    );
\int_cnt_reg[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^encoder_cnt\(6),
      I1 => \int_cnt_reg[7]_i_3_n_0\,
      I2 => \^encoder_cnt\(7),
      O => \int_cnt_reg[8]_i_5_n_0\
    );
\int_cnt_reg[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70000"
    )
        port map (
      I0 => \^encoder_cnt\(8),
      I1 => \^encoder_cnt\(5),
      I2 => \^encoder_cnt\(4),
      I3 => \int_cnt_reg[8]_i_9_n_0\,
      I4 => int_cnt12_out,
      O => \int_cnt_reg[8]_i_6_n_0\
    );
\int_cnt_reg[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \int_cnt_reg[4]_i_2_n_0\,
      I1 => \^encoder_cnt\(3),
      I2 => \^encoder_cnt\(4),
      I3 => \^encoder_cnt\(5),
      I4 => \^encoder_cnt\(6),
      I5 => \^encoder_cnt\(7),
      O => \int_cnt_reg[8]_i_7_n_0\
    );
\int_cnt_reg[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^encoder_cnt\(5),
      I1 => \^encoder_cnt\(6),
      I2 => \^encoder_cnt\(3),
      I3 => \^encoder_cnt\(4),
      I4 => \^encoder_cnt\(8),
      I5 => \^encoder_cnt\(7),
      O => \int_cnt_reg[8]_i_8_n_0\
    );
\int_cnt_reg[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^encoder_cnt\(7),
      I1 => \^encoder_cnt\(3),
      I2 => \^encoder_cnt\(6),
      I3 => \^encoder_cnt\(1),
      I4 => \^encoder_cnt\(0),
      I5 => \^encoder_cnt\(2),
      O => \int_cnt_reg[8]_i_9_n_0\
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
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    encoder_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "buildup_Encoder_counter_0_1,Encoder_counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Encoder_counter,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN buildup_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Encoder_counter
     port map (
      clk => clk,
      encoder_a => encoder_a,
      encoder_b => encoder_b,
      encoder_cnt(8 downto 0) => encoder_cnt(8 downto 0),
      rst => rst
    );
end STRUCTURE;

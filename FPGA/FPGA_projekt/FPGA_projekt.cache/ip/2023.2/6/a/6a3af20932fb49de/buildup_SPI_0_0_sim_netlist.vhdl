-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon Apr 15 09:57:20 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ buildup_SPI_0_0_sim_netlist.vhdl
-- Design      : buildup_SPI_0_0
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
    enable_counter_0_cnt : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_sample : in STD_LOGIC;
    SPI_chip_select : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_enable_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_enable_counter is
  signal cnt_temp : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \cnt_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_temp[5]_i_2_n_0\ : STD_LOGIC;
  signal cnt_temp_0 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \^enable_counter_0_cnt\ : STD_LOGIC;
  signal out_temp_i_1_n_0 : STD_LOGIC;
  signal out_temp_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_temp[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_temp[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_reg[15]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of out_temp_i_1 : label is "soft_lutpair1";
begin
  enable_counter_0_cnt <= \^enable_counter_0_cnt\;
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
      I0 => SPI_chip_select,
      I1 => rst,
      O => \cnt_temp[5]_i_2_n_0\
    );
\cnt_temp_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \cnt_temp[5]_i_2_n_0\,
      D => \cnt_temp[0]_i_1_n_0\,
      Q => cnt_temp(0)
    );
\cnt_temp_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \cnt_temp[5]_i_2_n_0\,
      D => cnt_temp_0(1),
      Q => cnt_temp(1)
    );
\cnt_temp_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \cnt_temp[5]_i_2_n_0\,
      D => cnt_temp_0(2),
      Q => cnt_temp(2)
    );
\cnt_temp_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \cnt_temp[5]_i_2_n_0\,
      D => cnt_temp_0(3),
      Q => cnt_temp(3)
    );
\cnt_temp_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \cnt_temp[5]_i_2_n_0\,
      D => cnt_temp_0(4),
      Q => cnt_temp(4)
    );
\cnt_temp_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \cnt_temp[5]_i_2_n_0\,
      D => cnt_temp_0(5),
      Q => cnt_temp(5)
    );
\data_reg[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^enable_counter_0_cnt\,
      I1 => rst,
      O => E(0)
    );
out_temp_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \^enable_counter_0_cnt\,
      I1 => out_temp_i_2_n_0,
      I2 => SPI_chip_select,
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
      C => SPI_sample,
      CE => '1',
      D => out_temp_i_1_n_0,
      Q => \^enable_counter_0_cnt\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_latch is
  port (
    SPI_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_latch;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_latch is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \data_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[9]\ : label is "VCC:GE GND:CLR";
begin
\data_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(0),
      GE => '1',
      Q => SPI_out(0)
    );
\data_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(10),
      G => E(0),
      GE => '1',
      Q => SPI_out(10)
    );
\data_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(11),
      G => E(0),
      GE => '1',
      Q => SPI_out(11)
    );
\data_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(12),
      G => E(0),
      GE => '1',
      Q => SPI_out(12)
    );
\data_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(13),
      G => E(0),
      GE => '1',
      Q => SPI_out(13)
    );
\data_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(14),
      G => E(0),
      GE => '1',
      Q => SPI_out(14)
    );
\data_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(15),
      G => E(0),
      GE => '1',
      Q => SPI_out(15)
    );
\data_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => E(0),
      GE => '1',
      Q => SPI_out(1)
    );
\data_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => E(0),
      GE => '1',
      Q => SPI_out(2)
    );
\data_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => E(0),
      GE => '1',
      Q => SPI_out(3)
    );
\data_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => E(0),
      GE => '1',
      Q => SPI_out(4)
    );
\data_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(5),
      G => E(0),
      GE => '1',
      Q => SPI_out(5)
    );
\data_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(6),
      G => E(0),
      GE => '1',
      Q => SPI_out(6)
    );
\data_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(7),
      G => E(0),
      GE => '1',
      Q => SPI_out(7)
    );
\data_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(8),
      G => E(0),
      GE => '1',
      Q => SPI_out(8)
    );
\data_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(9),
      G => E(0),
      GE => '1',
      Q => SPI_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_generic is
  port (
    miso : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SPI_sample : in STD_LOGIC;
    mosi : in STD_LOGIC;
    SPI_chip_select : in STD_LOGIC;
    enable_counter_0_cnt : in STD_LOGIC;
    encoder_in : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_generic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_generic is
  signal carry_out_i_1_n_0 : STD_LOGIC;
  signal \^miso\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \register_data_reg[0]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[0]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[0]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[0]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[0]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[10]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[10]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[10]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[10]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[10]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[11]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[11]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[11]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[11]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[11]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[12]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[12]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[12]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[12]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[12]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[13]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[13]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[13]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[13]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[13]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[14]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[14]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[14]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[14]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[14]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[15]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[15]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[15]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[15]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[15]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[1]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[1]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[1]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[2]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[2]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[2]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[2]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[3]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[3]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[3]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[3]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[3]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[4]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[4]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[4]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[4]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[4]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[5]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[5]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[5]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[5]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[5]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[6]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[6]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[6]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[6]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[6]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[7]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[7]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[7]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[7]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[7]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[8]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[8]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[8]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[8]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[8]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[9]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[9]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[9]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[9]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[9]_P_n_0\ : STD_LOGIC;
  signal temp : STD_LOGIC;
  signal temp_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_reg[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_reg[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_reg[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_reg[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_reg[13]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_reg[14]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_reg[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_reg[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_reg[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_reg[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_reg[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_reg[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_reg[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_reg[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_reg[9]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \register_data[10]_C_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \register_data[11]_C_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \register_data[12]_C_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \register_data[13]_C_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \register_data[14]_C_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \register_data[15]_C_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \register_data[1]_C_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \register_data[2]_C_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \register_data[3]_C_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \register_data[4]_C_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \register_data[5]_C_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \register_data[6]_C_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \register_data[7]_C_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \register_data[8]_C_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \register_data[9]_C_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \register_data_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[0]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[10]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[10]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[11]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[11]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[12]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[12]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[13]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[13]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[14]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[14]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[15]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[15]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[1]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[2]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[3]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[3]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[4]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[4]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[5]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[5]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[6]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[6]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[7]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[7]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[8]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[8]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[9]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[9]_LDC\ : label is "VCC:GE";
begin
  miso <= \^miso\;
carry_out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => temp,
      I1 => SPI_chip_select,
      I2 => \^miso\,
      O => carry_out_i_1_n_0
    );
carry_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => SPI_sample,
      CE => '1',
      D => carry_out_i_1_n_0,
      Q => \^miso\,
      R => '0'
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[0]_C_n_0\,
      I2 => \register_data_reg[0]_LDC_n_0\,
      I3 => \register_data_reg[0]_P_n_0\,
      O => D(0)
    );
\data_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[10]_C_n_0\,
      I2 => \register_data_reg[10]_LDC_n_0\,
      I3 => \register_data_reg[10]_P_n_0\,
      O => D(10)
    );
\data_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[11]_C_n_0\,
      I2 => \register_data_reg[11]_LDC_n_0\,
      I3 => \register_data_reg[11]_P_n_0\,
      O => D(11)
    );
\data_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[12]_C_n_0\,
      I2 => \register_data_reg[12]_LDC_n_0\,
      I3 => \register_data_reg[12]_P_n_0\,
      O => D(12)
    );
\data_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[13]_C_n_0\,
      I2 => \register_data_reg[13]_LDC_n_0\,
      I3 => \register_data_reg[13]_P_n_0\,
      O => D(13)
    );
\data_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[14]_C_n_0\,
      I2 => \register_data_reg[14]_LDC_n_0\,
      I3 => \register_data_reg[14]_P_n_0\,
      O => D(14)
    );
\data_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[15]_C_n_0\,
      I2 => \register_data_reg[15]_LDC_n_0\,
      I3 => \register_data_reg[15]_P_n_0\,
      O => D(15)
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[1]_C_n_0\,
      I2 => \register_data_reg[1]_LDC_n_0\,
      I3 => \register_data_reg[1]_P_n_0\,
      O => D(1)
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[2]_C_n_0\,
      I2 => \register_data_reg[2]_LDC_n_0\,
      I3 => \register_data_reg[2]_P_n_0\,
      O => D(2)
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[3]_C_n_0\,
      I2 => \register_data_reg[3]_LDC_n_0\,
      I3 => \register_data_reg[3]_P_n_0\,
      O => D(3)
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[4]_C_n_0\,
      I2 => \register_data_reg[4]_LDC_n_0\,
      I3 => \register_data_reg[4]_P_n_0\,
      O => D(4)
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[5]_C_n_0\,
      I2 => \register_data_reg[5]_LDC_n_0\,
      I3 => \register_data_reg[5]_P_n_0\,
      O => D(5)
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[6]_C_n_0\,
      I2 => \register_data_reg[6]_LDC_n_0\,
      I3 => \register_data_reg[6]_P_n_0\,
      O => D(6)
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[7]_C_n_0\,
      I2 => \register_data_reg[7]_LDC_n_0\,
      I3 => \register_data_reg[7]_P_n_0\,
      O => D(7)
    );
\data_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[8]_C_n_0\,
      I2 => \register_data_reg[8]_LDC_n_0\,
      I3 => \register_data_reg[8]_P_n_0\,
      O => D(8)
    );
\data_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => enable_counter_0_cnt,
      I1 => \register_data_reg[9]_C_n_0\,
      I2 => \register_data_reg[9]_LDC_n_0\,
      I3 => \register_data_reg[9]_P_n_0\,
      O => D(9)
    );
\register_data[10]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[9]_P_n_0\,
      I1 => \register_data_reg[9]_LDC_n_0\,
      I2 => \register_data_reg[9]_C_n_0\,
      O => p_2_in(10)
    );
\register_data[11]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[10]_P_n_0\,
      I1 => \register_data_reg[10]_LDC_n_0\,
      I2 => \register_data_reg[10]_C_n_0\,
      O => p_2_in(11)
    );
\register_data[12]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[11]_P_n_0\,
      I1 => \register_data_reg[11]_LDC_n_0\,
      I2 => \register_data_reg[11]_C_n_0\,
      O => p_2_in(12)
    );
\register_data[13]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[12]_P_n_0\,
      I1 => \register_data_reg[12]_LDC_n_0\,
      I2 => \register_data_reg[12]_C_n_0\,
      O => p_2_in(13)
    );
\register_data[14]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[13]_P_n_0\,
      I1 => \register_data_reg[13]_LDC_n_0\,
      I2 => \register_data_reg[13]_C_n_0\,
      O => p_2_in(14)
    );
\register_data[15]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[14]_P_n_0\,
      I1 => \register_data_reg[14]_LDC_n_0\,
      I2 => \register_data_reg[14]_C_n_0\,
      O => p_2_in(15)
    );
\register_data[1]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[0]_P_n_0\,
      I1 => \register_data_reg[0]_LDC_n_0\,
      I2 => \register_data_reg[0]_C_n_0\,
      O => p_2_in(1)
    );
\register_data[2]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[1]_P_n_0\,
      I1 => \register_data_reg[1]_LDC_n_0\,
      I2 => \register_data_reg[1]_C_n_0\,
      O => p_2_in(2)
    );
\register_data[3]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[2]_P_n_0\,
      I1 => \register_data_reg[2]_LDC_n_0\,
      I2 => \register_data_reg[2]_C_n_0\,
      O => p_2_in(3)
    );
\register_data[4]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[3]_P_n_0\,
      I1 => \register_data_reg[3]_LDC_n_0\,
      I2 => \register_data_reg[3]_C_n_0\,
      O => p_2_in(4)
    );
\register_data[5]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[4]_P_n_0\,
      I1 => \register_data_reg[4]_LDC_n_0\,
      I2 => \register_data_reg[4]_C_n_0\,
      O => p_2_in(5)
    );
\register_data[6]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[5]_P_n_0\,
      I1 => \register_data_reg[5]_LDC_n_0\,
      I2 => \register_data_reg[5]_C_n_0\,
      O => p_2_in(6)
    );
\register_data[7]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[6]_P_n_0\,
      I1 => \register_data_reg[6]_LDC_n_0\,
      I2 => \register_data_reg[6]_C_n_0\,
      O => p_2_in(7)
    );
\register_data[8]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[7]_P_n_0\,
      I1 => \register_data_reg[7]_LDC_n_0\,
      I2 => \register_data_reg[7]_C_n_0\,
      O => p_2_in(8)
    );
\register_data[9]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[8]_P_n_0\,
      I1 => \register_data_reg[8]_LDC_n_0\,
      I2 => \register_data_reg[8]_C_n_0\,
      O => p_2_in(9)
    );
\register_data_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[0]_LDC_i_2_n_0\,
      D => mosi,
      Q => \register_data_reg[0]_C_n_0\
    );
\register_data_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[0]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[0]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[0]_LDC_n_0\
    );
\register_data_reg[0]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(0),
      I1 => SPI_chip_select,
      O => \register_data_reg[0]_LDC_i_1_n_0\
    );
\register_data_reg[0]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(0),
      O => \register_data_reg[0]_LDC_i_2_n_0\
    );
\register_data_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => mosi,
      PRE => \register_data_reg[0]_LDC_i_1_n_0\,
      Q => \register_data_reg[0]_P_n_0\
    );
\register_data_reg[10]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[10]_LDC_i_2_n_0\,
      D => p_2_in(10),
      Q => \register_data_reg[10]_C_n_0\
    );
\register_data_reg[10]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[10]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[10]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[10]_LDC_n_0\
    );
\register_data_reg[10]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(10),
      I1 => SPI_chip_select,
      O => \register_data_reg[10]_LDC_i_1_n_0\
    );
\register_data_reg[10]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(10),
      O => \register_data_reg[10]_LDC_i_2_n_0\
    );
\register_data_reg[10]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(10),
      PRE => \register_data_reg[10]_LDC_i_1_n_0\,
      Q => \register_data_reg[10]_P_n_0\
    );
\register_data_reg[11]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[11]_LDC_i_2_n_0\,
      D => p_2_in(11),
      Q => \register_data_reg[11]_C_n_0\
    );
\register_data_reg[11]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[11]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[11]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[11]_LDC_n_0\
    );
\register_data_reg[11]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(11),
      I1 => SPI_chip_select,
      O => \register_data_reg[11]_LDC_i_1_n_0\
    );
\register_data_reg[11]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(11),
      O => \register_data_reg[11]_LDC_i_2_n_0\
    );
\register_data_reg[11]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(11),
      PRE => \register_data_reg[11]_LDC_i_1_n_0\,
      Q => \register_data_reg[11]_P_n_0\
    );
\register_data_reg[12]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[12]_LDC_i_2_n_0\,
      D => p_2_in(12),
      Q => \register_data_reg[12]_C_n_0\
    );
\register_data_reg[12]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[12]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[12]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[12]_LDC_n_0\
    );
\register_data_reg[12]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(12),
      I1 => SPI_chip_select,
      O => \register_data_reg[12]_LDC_i_1_n_0\
    );
\register_data_reg[12]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(12),
      O => \register_data_reg[12]_LDC_i_2_n_0\
    );
\register_data_reg[12]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(12),
      PRE => \register_data_reg[12]_LDC_i_1_n_0\,
      Q => \register_data_reg[12]_P_n_0\
    );
\register_data_reg[13]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[13]_LDC_i_2_n_0\,
      D => p_2_in(13),
      Q => \register_data_reg[13]_C_n_0\
    );
\register_data_reg[13]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[13]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[13]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[13]_LDC_n_0\
    );
\register_data_reg[13]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(13),
      I1 => SPI_chip_select,
      O => \register_data_reg[13]_LDC_i_1_n_0\
    );
\register_data_reg[13]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(13),
      O => \register_data_reg[13]_LDC_i_2_n_0\
    );
\register_data_reg[13]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(13),
      PRE => \register_data_reg[13]_LDC_i_1_n_0\,
      Q => \register_data_reg[13]_P_n_0\
    );
\register_data_reg[14]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[14]_LDC_i_2_n_0\,
      D => p_2_in(14),
      Q => \register_data_reg[14]_C_n_0\
    );
\register_data_reg[14]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[14]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[14]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[14]_LDC_n_0\
    );
\register_data_reg[14]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(14),
      I1 => SPI_chip_select,
      O => \register_data_reg[14]_LDC_i_1_n_0\
    );
\register_data_reg[14]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(14),
      O => \register_data_reg[14]_LDC_i_2_n_0\
    );
\register_data_reg[14]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(14),
      PRE => \register_data_reg[14]_LDC_i_1_n_0\,
      Q => \register_data_reg[14]_P_n_0\
    );
\register_data_reg[15]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[15]_LDC_i_2_n_0\,
      D => p_2_in(15),
      Q => \register_data_reg[15]_C_n_0\
    );
\register_data_reg[15]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[15]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[15]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[15]_LDC_n_0\
    );
\register_data_reg[15]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(15),
      I1 => SPI_chip_select,
      O => \register_data_reg[15]_LDC_i_1_n_0\
    );
\register_data_reg[15]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(15),
      O => \register_data_reg[15]_LDC_i_2_n_0\
    );
\register_data_reg[15]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(15),
      PRE => \register_data_reg[15]_LDC_i_1_n_0\,
      Q => \register_data_reg[15]_P_n_0\
    );
\register_data_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[1]_LDC_i_2_n_0\,
      D => p_2_in(1),
      Q => \register_data_reg[1]_C_n_0\
    );
\register_data_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[1]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[1]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[1]_LDC_n_0\
    );
\register_data_reg[1]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(1),
      I1 => SPI_chip_select,
      O => \register_data_reg[1]_LDC_i_1_n_0\
    );
\register_data_reg[1]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(1),
      O => \register_data_reg[1]_LDC_i_2_n_0\
    );
\register_data_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(1),
      PRE => \register_data_reg[1]_LDC_i_1_n_0\,
      Q => \register_data_reg[1]_P_n_0\
    );
\register_data_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[2]_LDC_i_2_n_0\,
      D => p_2_in(2),
      Q => \register_data_reg[2]_C_n_0\
    );
\register_data_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[2]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[2]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[2]_LDC_n_0\
    );
\register_data_reg[2]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(2),
      I1 => SPI_chip_select,
      O => \register_data_reg[2]_LDC_i_1_n_0\
    );
\register_data_reg[2]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(2),
      O => \register_data_reg[2]_LDC_i_2_n_0\
    );
\register_data_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(2),
      PRE => \register_data_reg[2]_LDC_i_1_n_0\,
      Q => \register_data_reg[2]_P_n_0\
    );
\register_data_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[3]_LDC_i_2_n_0\,
      D => p_2_in(3),
      Q => \register_data_reg[3]_C_n_0\
    );
\register_data_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[3]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[3]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[3]_LDC_n_0\
    );
\register_data_reg[3]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(3),
      I1 => SPI_chip_select,
      O => \register_data_reg[3]_LDC_i_1_n_0\
    );
\register_data_reg[3]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(3),
      O => \register_data_reg[3]_LDC_i_2_n_0\
    );
\register_data_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(3),
      PRE => \register_data_reg[3]_LDC_i_1_n_0\,
      Q => \register_data_reg[3]_P_n_0\
    );
\register_data_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[4]_LDC_i_2_n_0\,
      D => p_2_in(4),
      Q => \register_data_reg[4]_C_n_0\
    );
\register_data_reg[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[4]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[4]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[4]_LDC_n_0\
    );
\register_data_reg[4]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(4),
      I1 => SPI_chip_select,
      O => \register_data_reg[4]_LDC_i_1_n_0\
    );
\register_data_reg[4]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(4),
      O => \register_data_reg[4]_LDC_i_2_n_0\
    );
\register_data_reg[4]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(4),
      PRE => \register_data_reg[4]_LDC_i_1_n_0\,
      Q => \register_data_reg[4]_P_n_0\
    );
\register_data_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[5]_LDC_i_2_n_0\,
      D => p_2_in(5),
      Q => \register_data_reg[5]_C_n_0\
    );
\register_data_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[5]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[5]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[5]_LDC_n_0\
    );
\register_data_reg[5]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(5),
      I1 => SPI_chip_select,
      O => \register_data_reg[5]_LDC_i_1_n_0\
    );
\register_data_reg[5]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(5),
      O => \register_data_reg[5]_LDC_i_2_n_0\
    );
\register_data_reg[5]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(5),
      PRE => \register_data_reg[5]_LDC_i_1_n_0\,
      Q => \register_data_reg[5]_P_n_0\
    );
\register_data_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[6]_LDC_i_2_n_0\,
      D => p_2_in(6),
      Q => \register_data_reg[6]_C_n_0\
    );
\register_data_reg[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[6]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[6]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[6]_LDC_n_0\
    );
\register_data_reg[6]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(6),
      I1 => SPI_chip_select,
      O => \register_data_reg[6]_LDC_i_1_n_0\
    );
\register_data_reg[6]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(6),
      O => \register_data_reg[6]_LDC_i_2_n_0\
    );
\register_data_reg[6]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(6),
      PRE => \register_data_reg[6]_LDC_i_1_n_0\,
      Q => \register_data_reg[6]_P_n_0\
    );
\register_data_reg[7]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[7]_LDC_i_2_n_0\,
      D => p_2_in(7),
      Q => \register_data_reg[7]_C_n_0\
    );
\register_data_reg[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[7]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[7]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[7]_LDC_n_0\
    );
\register_data_reg[7]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(7),
      I1 => SPI_chip_select,
      O => \register_data_reg[7]_LDC_i_1_n_0\
    );
\register_data_reg[7]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(7),
      O => \register_data_reg[7]_LDC_i_2_n_0\
    );
\register_data_reg[7]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(7),
      PRE => \register_data_reg[7]_LDC_i_1_n_0\,
      Q => \register_data_reg[7]_P_n_0\
    );
\register_data_reg[8]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[8]_LDC_i_2_n_0\,
      D => p_2_in(8),
      Q => \register_data_reg[8]_C_n_0\
    );
\register_data_reg[8]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[8]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[8]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[8]_LDC_n_0\
    );
\register_data_reg[8]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(8),
      I1 => SPI_chip_select,
      O => \register_data_reg[8]_LDC_i_1_n_0\
    );
\register_data_reg[8]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(8),
      O => \register_data_reg[8]_LDC_i_2_n_0\
    );
\register_data_reg[8]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(8),
      PRE => \register_data_reg[8]_LDC_i_1_n_0\,
      Q => \register_data_reg[8]_P_n_0\
    );
\register_data_reg[9]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[9]_LDC_i_2_n_0\,
      D => p_2_in(9),
      Q => \register_data_reg[9]_C_n_0\
    );
\register_data_reg[9]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[9]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[9]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[9]_LDC_n_0\
    );
\register_data_reg[9]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => encoder_in(9),
      I1 => SPI_chip_select,
      O => \register_data_reg[9]_LDC_i_1_n_0\
    );
\register_data_reg[9]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => encoder_in(9),
      O => \register_data_reg[9]_LDC_i_2_n_0\
    );
\register_data_reg[9]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => p_2_in(9),
      PRE => \register_data_reg[9]_LDC_i_1_n_0\,
      Q => \register_data_reg[9]_P_n_0\
    );
temp_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \register_data_reg[15]_P_n_0\,
      I1 => \register_data_reg[15]_LDC_n_0\,
      I2 => \register_data_reg[15]_C_n_0\,
      I3 => SPI_chip_select,
      I4 => temp,
      O => temp_i_1_n_0
    );
temp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_sample,
      CE => '1',
      D => temp_i_1_n_0,
      Q => temp,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_enable_counter_0_0 is
  port (
    enable_counter_0_cnt : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_sample : in STD_LOGIC;
    SPI_chip_select : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_enable_counter_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_enable_counter_0_0 is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_enable_counter
     port map (
      E(0) => E(0),
      SPI_chip_select => SPI_chip_select,
      SPI_sample => SPI_sample,
      enable_counter_0_cnt => enable_counter_0_cnt,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_latch_0_0 is
  port (
    SPI_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_latch_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_latch_0_0 is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_latch
     port map (
      D(15 downto 0) => D(15 downto 0),
      E(0) => E(0),
      SPI_out(15 downto 0) => SPI_out(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_shift_register_input_1 is
  port (
    miso : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SPI_sample : in STD_LOGIC;
    mosi : in STD_LOGIC;
    SPI_chip_select : in STD_LOGIC;
    enable_counter_0_cnt : in STD_LOGIC;
    encoder_in : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_shift_register_input_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_shift_register_input_1 is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_generic
     port map (
      D(15 downto 0) => D(15 downto 0),
      SPI_chip_select => SPI_chip_select,
      SPI_sample => SPI_sample,
      enable_counter_0_cnt => enable_counter_0_cnt,
      encoder_in(15 downto 0) => encoder_in(15 downto 0),
      miso => miso,
      mosi => mosi
    );
end STRUCTURE;
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
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute hw_handoff : string;
  attribute hw_handoff of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI : entity is "SPI.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI is
  signal Prescaler_n_1 : STD_LOGIC;
  signal enable_counter_0_cnt : STD_LOGIC;
  signal shift_register_input_n_1 : STD_LOGIC;
  signal shift_register_input_n_10 : STD_LOGIC;
  signal shift_register_input_n_11 : STD_LOGIC;
  signal shift_register_input_n_12 : STD_LOGIC;
  signal shift_register_input_n_13 : STD_LOGIC;
  signal shift_register_input_n_14 : STD_LOGIC;
  signal shift_register_input_n_15 : STD_LOGIC;
  signal shift_register_input_n_16 : STD_LOGIC;
  signal shift_register_input_n_2 : STD_LOGIC;
  signal shift_register_input_n_3 : STD_LOGIC;
  signal shift_register_input_n_4 : STD_LOGIC;
  signal shift_register_input_n_5 : STD_LOGIC;
  signal shift_register_input_n_6 : STD_LOGIC;
  signal shift_register_input_n_7 : STD_LOGIC;
  signal shift_register_input_n_8 : STD_LOGIC;
  signal shift_register_input_n_9 : STD_LOGIC;
  attribute x_core_info : string;
  attribute x_core_info of Prescaler : label is "enable_counter,Vivado 2023.2";
  attribute x_core_info of latch_0 : label is "latch,Vivado 2023.2";
  attribute x_core_info of shift_register_input : label is "shift_register_generic,Vivado 2023.2";
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of encoder_in : signal is "xilinx.com:signal:data:1.0 DATA.ENCODER_IN DATA";
  attribute x_interface_parameter of encoder_in : signal is "XIL_INTERFACENAME DATA.ENCODER_IN, LAYERED_METADATA undef";
begin
Prescaler: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_enable_counter_0_0
     port map (
      E(0) => Prescaler_n_1,
      SPI_chip_select => SPI_chip_select,
      SPI_sample => SPI_sample,
      enable_counter_0_cnt => enable_counter_0_cnt,
      rst => rst
    );
latch_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_latch_0_0
     port map (
      D(15) => shift_register_input_n_1,
      D(14) => shift_register_input_n_2,
      D(13) => shift_register_input_n_3,
      D(12) => shift_register_input_n_4,
      D(11) => shift_register_input_n_5,
      D(10) => shift_register_input_n_6,
      D(9) => shift_register_input_n_7,
      D(8) => shift_register_input_n_8,
      D(7) => shift_register_input_n_9,
      D(6) => shift_register_input_n_10,
      D(5) => shift_register_input_n_11,
      D(4) => shift_register_input_n_12,
      D(3) => shift_register_input_n_13,
      D(2) => shift_register_input_n_14,
      D(1) => shift_register_input_n_15,
      D(0) => shift_register_input_n_16,
      E(0) => Prescaler_n_1,
      SPI_out(15 downto 0) => SPI_out(15 downto 0)
    );
shift_register_input: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_shift_register_input_1
     port map (
      D(15) => shift_register_input_n_1,
      D(14) => shift_register_input_n_2,
      D(13) => shift_register_input_n_3,
      D(12) => shift_register_input_n_4,
      D(11) => shift_register_input_n_5,
      D(10) => shift_register_input_n_6,
      D(9) => shift_register_input_n_7,
      D(8) => shift_register_input_n_8,
      D(7) => shift_register_input_n_9,
      D(6) => shift_register_input_n_10,
      D(5) => shift_register_input_n_11,
      D(4) => shift_register_input_n_12,
      D(3) => shift_register_input_n_13,
      D(2) => shift_register_input_n_14,
      D(1) => shift_register_input_n_15,
      D(0) => shift_register_input_n_16,
      SPI_chip_select => SPI_chip_select,
      SPI_sample => SPI_sample,
      enable_counter_0_cnt => enable_counter_0_cnt,
      encoder_in(15 downto 0) => encoder_in(15 downto 0),
      miso => miso,
      mosi => mosi
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
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "buildup_SPI_0_0,SPI,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "IPI";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SPI,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute hw_handoff : string;
  attribute hw_handoff of U0 : label is "SPI.hwdef";
  attribute x_interface_info : string;
  attribute x_interface_info of encoder_in : signal is "xilinx.com:signal:data:1.0 DATA.ENCODER_IN DATA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of encoder_in : signal is "XIL_INTERFACENAME DATA.ENCODER_IN, LAYERED_METADATA undef";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI
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

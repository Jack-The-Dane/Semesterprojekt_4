-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue Apr  9 15:11:08 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPI_shift_register_input_1_sim_netlist.vhdl
-- Design      : SPI_shift_register_input_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_generic is
  port (
    register_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    carry_out : out STD_LOGIC;
    sample : in STD_LOGIC;
    data : in STD_LOGIC;
    chip_select : in STD_LOGIC;
    register_in : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_generic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_generic is
  signal \^carry_out\ : STD_LOGIC;
  signal carry_out_i_1_n_0 : STD_LOGIC;
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
  signal \^register_out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal temp : STD_LOGIC;
  signal temp_i_1_n_0 : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \register_out[15]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of temp_i_1 : label is "soft_lutpair0";
begin
  carry_out <= \^carry_out\;
  register_out(15 downto 0) <= \^register_out\(15 downto 0);
carry_out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => temp,
      I1 => chip_select,
      I2 => \^carry_out\,
      O => carry_out_i_1_n_0
    );
carry_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sample,
      CE => '1',
      D => carry_out_i_1_n_0,
      Q => \^carry_out\,
      R => '0'
    );
\register_data_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[0]_LDC_i_2_n_0\,
      D => data,
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
      I0 => register_in(0),
      I1 => chip_select,
      O => \register_data_reg[0]_LDC_i_1_n_0\
    );
\register_data_reg[0]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(0),
      O => \register_data_reg[0]_LDC_i_2_n_0\
    );
\register_data_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => data,
      PRE => \register_data_reg[0]_LDC_i_1_n_0\,
      Q => \register_data_reg[0]_P_n_0\
    );
\register_data_reg[10]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[10]_LDC_i_2_n_0\,
      D => \^register_out\(9),
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
      I0 => register_in(10),
      I1 => chip_select,
      O => \register_data_reg[10]_LDC_i_1_n_0\
    );
\register_data_reg[10]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(10),
      O => \register_data_reg[10]_LDC_i_2_n_0\
    );
\register_data_reg[10]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(9),
      PRE => \register_data_reg[10]_LDC_i_1_n_0\,
      Q => \register_data_reg[10]_P_n_0\
    );
\register_data_reg[11]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[11]_LDC_i_2_n_0\,
      D => \^register_out\(10),
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
      I0 => register_in(11),
      I1 => chip_select,
      O => \register_data_reg[11]_LDC_i_1_n_0\
    );
\register_data_reg[11]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(11),
      O => \register_data_reg[11]_LDC_i_2_n_0\
    );
\register_data_reg[11]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(10),
      PRE => \register_data_reg[11]_LDC_i_1_n_0\,
      Q => \register_data_reg[11]_P_n_0\
    );
\register_data_reg[12]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[12]_LDC_i_2_n_0\,
      D => \^register_out\(11),
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
      I0 => register_in(12),
      I1 => chip_select,
      O => \register_data_reg[12]_LDC_i_1_n_0\
    );
\register_data_reg[12]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(12),
      O => \register_data_reg[12]_LDC_i_2_n_0\
    );
\register_data_reg[12]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(11),
      PRE => \register_data_reg[12]_LDC_i_1_n_0\,
      Q => \register_data_reg[12]_P_n_0\
    );
\register_data_reg[13]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[13]_LDC_i_2_n_0\,
      D => \^register_out\(12),
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
      I0 => register_in(13),
      I1 => chip_select,
      O => \register_data_reg[13]_LDC_i_1_n_0\
    );
\register_data_reg[13]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(13),
      O => \register_data_reg[13]_LDC_i_2_n_0\
    );
\register_data_reg[13]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(12),
      PRE => \register_data_reg[13]_LDC_i_1_n_0\,
      Q => \register_data_reg[13]_P_n_0\
    );
\register_data_reg[14]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[14]_LDC_i_2_n_0\,
      D => \^register_out\(13),
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
      I0 => register_in(14),
      I1 => chip_select,
      O => \register_data_reg[14]_LDC_i_1_n_0\
    );
\register_data_reg[14]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(14),
      O => \register_data_reg[14]_LDC_i_2_n_0\
    );
\register_data_reg[14]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(13),
      PRE => \register_data_reg[14]_LDC_i_1_n_0\,
      Q => \register_data_reg[14]_P_n_0\
    );
\register_data_reg[15]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[15]_LDC_i_2_n_0\,
      D => \^register_out\(14),
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
      I0 => register_in(15),
      I1 => chip_select,
      O => \register_data_reg[15]_LDC_i_1_n_0\
    );
\register_data_reg[15]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(15),
      O => \register_data_reg[15]_LDC_i_2_n_0\
    );
\register_data_reg[15]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(14),
      PRE => \register_data_reg[15]_LDC_i_1_n_0\,
      Q => \register_data_reg[15]_P_n_0\
    );
\register_data_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[1]_LDC_i_2_n_0\,
      D => \^register_out\(0),
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
      I0 => register_in(1),
      I1 => chip_select,
      O => \register_data_reg[1]_LDC_i_1_n_0\
    );
\register_data_reg[1]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(1),
      O => \register_data_reg[1]_LDC_i_2_n_0\
    );
\register_data_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(0),
      PRE => \register_data_reg[1]_LDC_i_1_n_0\,
      Q => \register_data_reg[1]_P_n_0\
    );
\register_data_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[2]_LDC_i_2_n_0\,
      D => \^register_out\(1),
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
      I0 => register_in(2),
      I1 => chip_select,
      O => \register_data_reg[2]_LDC_i_1_n_0\
    );
\register_data_reg[2]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(2),
      O => \register_data_reg[2]_LDC_i_2_n_0\
    );
\register_data_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(1),
      PRE => \register_data_reg[2]_LDC_i_1_n_0\,
      Q => \register_data_reg[2]_P_n_0\
    );
\register_data_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[3]_LDC_i_2_n_0\,
      D => \^register_out\(2),
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
      I0 => register_in(3),
      I1 => chip_select,
      O => \register_data_reg[3]_LDC_i_1_n_0\
    );
\register_data_reg[3]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(3),
      O => \register_data_reg[3]_LDC_i_2_n_0\
    );
\register_data_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(2),
      PRE => \register_data_reg[3]_LDC_i_1_n_0\,
      Q => \register_data_reg[3]_P_n_0\
    );
\register_data_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[4]_LDC_i_2_n_0\,
      D => \^register_out\(3),
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
      I0 => register_in(4),
      I1 => chip_select,
      O => \register_data_reg[4]_LDC_i_1_n_0\
    );
\register_data_reg[4]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(4),
      O => \register_data_reg[4]_LDC_i_2_n_0\
    );
\register_data_reg[4]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(3),
      PRE => \register_data_reg[4]_LDC_i_1_n_0\,
      Q => \register_data_reg[4]_P_n_0\
    );
\register_data_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[5]_LDC_i_2_n_0\,
      D => \^register_out\(4),
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
      I0 => register_in(5),
      I1 => chip_select,
      O => \register_data_reg[5]_LDC_i_1_n_0\
    );
\register_data_reg[5]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(5),
      O => \register_data_reg[5]_LDC_i_2_n_0\
    );
\register_data_reg[5]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(4),
      PRE => \register_data_reg[5]_LDC_i_1_n_0\,
      Q => \register_data_reg[5]_P_n_0\
    );
\register_data_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[6]_LDC_i_2_n_0\,
      D => \^register_out\(5),
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
      I0 => register_in(6),
      I1 => chip_select,
      O => \register_data_reg[6]_LDC_i_1_n_0\
    );
\register_data_reg[6]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(6),
      O => \register_data_reg[6]_LDC_i_2_n_0\
    );
\register_data_reg[6]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(5),
      PRE => \register_data_reg[6]_LDC_i_1_n_0\,
      Q => \register_data_reg[6]_P_n_0\
    );
\register_data_reg[7]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[7]_LDC_i_2_n_0\,
      D => \^register_out\(6),
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
      I0 => register_in(7),
      I1 => chip_select,
      O => \register_data_reg[7]_LDC_i_1_n_0\
    );
\register_data_reg[7]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(7),
      O => \register_data_reg[7]_LDC_i_2_n_0\
    );
\register_data_reg[7]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(6),
      PRE => \register_data_reg[7]_LDC_i_1_n_0\,
      Q => \register_data_reg[7]_P_n_0\
    );
\register_data_reg[8]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[8]_LDC_i_2_n_0\,
      D => \^register_out\(7),
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
      I0 => register_in(8),
      I1 => chip_select,
      O => \register_data_reg[8]_LDC_i_1_n_0\
    );
\register_data_reg[8]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(8),
      O => \register_data_reg[8]_LDC_i_2_n_0\
    );
\register_data_reg[8]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(7),
      PRE => \register_data_reg[8]_LDC_i_1_n_0\,
      Q => \register_data_reg[8]_P_n_0\
    );
\register_data_reg[9]_C\: unisim.vcomponents.FDCE
     port map (
      C => sample,
      CE => '1',
      CLR => \register_data_reg[9]_LDC_i_2_n_0\,
      D => \^register_out\(8),
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
      I0 => register_in(9),
      I1 => chip_select,
      O => \register_data_reg[9]_LDC_i_1_n_0\
    );
\register_data_reg[9]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => chip_select,
      I1 => register_in(9),
      O => \register_data_reg[9]_LDC_i_2_n_0\
    );
\register_data_reg[9]_P\: unisim.vcomponents.FDPE
     port map (
      C => sample,
      CE => '1',
      D => \^register_out\(8),
      PRE => \register_data_reg[9]_LDC_i_1_n_0\,
      Q => \register_data_reg[9]_P_n_0\
    );
\register_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[0]_P_n_0\,
      I1 => \register_data_reg[0]_LDC_n_0\,
      I2 => \register_data_reg[0]_C_n_0\,
      O => \^register_out\(0)
    );
\register_out[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[10]_P_n_0\,
      I1 => \register_data_reg[10]_LDC_n_0\,
      I2 => \register_data_reg[10]_C_n_0\,
      O => \^register_out\(10)
    );
\register_out[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[11]_P_n_0\,
      I1 => \register_data_reg[11]_LDC_n_0\,
      I2 => \register_data_reg[11]_C_n_0\,
      O => \^register_out\(11)
    );
\register_out[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[12]_P_n_0\,
      I1 => \register_data_reg[12]_LDC_n_0\,
      I2 => \register_data_reg[12]_C_n_0\,
      O => \^register_out\(12)
    );
\register_out[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[13]_P_n_0\,
      I1 => \register_data_reg[13]_LDC_n_0\,
      I2 => \register_data_reg[13]_C_n_0\,
      O => \^register_out\(13)
    );
\register_out[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[14]_P_n_0\,
      I1 => \register_data_reg[14]_LDC_n_0\,
      I2 => \register_data_reg[14]_C_n_0\,
      O => \^register_out\(14)
    );
\register_out[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[15]_P_n_0\,
      I1 => \register_data_reg[15]_LDC_n_0\,
      I2 => \register_data_reg[15]_C_n_0\,
      O => \^register_out\(15)
    );
\register_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[1]_P_n_0\,
      I1 => \register_data_reg[1]_LDC_n_0\,
      I2 => \register_data_reg[1]_C_n_0\,
      O => \^register_out\(1)
    );
\register_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[2]_P_n_0\,
      I1 => \register_data_reg[2]_LDC_n_0\,
      I2 => \register_data_reg[2]_C_n_0\,
      O => \^register_out\(2)
    );
\register_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[3]_P_n_0\,
      I1 => \register_data_reg[3]_LDC_n_0\,
      I2 => \register_data_reg[3]_C_n_0\,
      O => \^register_out\(3)
    );
\register_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[4]_P_n_0\,
      I1 => \register_data_reg[4]_LDC_n_0\,
      I2 => \register_data_reg[4]_C_n_0\,
      O => \^register_out\(4)
    );
\register_out[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[5]_P_n_0\,
      I1 => \register_data_reg[5]_LDC_n_0\,
      I2 => \register_data_reg[5]_C_n_0\,
      O => \^register_out\(5)
    );
\register_out[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[6]_P_n_0\,
      I1 => \register_data_reg[6]_LDC_n_0\,
      I2 => \register_data_reg[6]_C_n_0\,
      O => \^register_out\(6)
    );
\register_out[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[7]_P_n_0\,
      I1 => \register_data_reg[7]_LDC_n_0\,
      I2 => \register_data_reg[7]_C_n_0\,
      O => \^register_out\(7)
    );
\register_out[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[8]_P_n_0\,
      I1 => \register_data_reg[8]_LDC_n_0\,
      I2 => \register_data_reg[8]_C_n_0\,
      O => \^register_out\(8)
    );
\register_out[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[9]_P_n_0\,
      I1 => \register_data_reg[9]_LDC_n_0\,
      I2 => \register_data_reg[9]_C_n_0\,
      O => \^register_out\(9)
    );
temp_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \register_data_reg[15]_P_n_0\,
      I1 => \register_data_reg[15]_LDC_n_0\,
      I2 => \register_data_reg[15]_C_n_0\,
      I3 => chip_select,
      I4 => temp,
      O => temp_i_1_n_0
    );
temp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sample,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    sample : in STD_LOGIC;
    chip_select : in STD_LOGIC;
    register_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC;
    data : in STD_LOGIC;
    register_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    carry_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SPI_shift_register_input_1,shift_register_generic,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "shift_register_generic,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_generic
     port map (
      carry_out => carry_out,
      chip_select => chip_select,
      data => data,
      register_in(15 downto 0) => register_in(15 downto 0),
      register_out(15 downto 0) => register_out(15 downto 0),
      sample => sample
    );
end STRUCTURE;

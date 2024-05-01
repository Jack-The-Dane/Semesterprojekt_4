-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed May  1 10:45:18 2024
-- Host        : Cornelia running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/Corne/Documents/MEGA/4.
--               Semester/Semesterprojekt/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/buildup/ip/buildup_SPI_0_2/buildup_SPI_0_2_sim_netlist.vhdl}
-- Design      : buildup_SPI_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_SPI_0_2_enable_counter is
  port (
    CLK : out STD_LOGIC;
    SPI_sample : in STD_LOGIC;
    SPI_chip_select : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buildup_SPI_0_2_enable_counter : entity is "enable_counter";
end buildup_SPI_0_2_enable_counter;

architecture STRUCTURE of buildup_SPI_0_2_enable_counter is
  signal cnt_temp : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \cnt_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal cnt_temp_0 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal out_temp_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_temp[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_temp[3]_i_1\ : label is "soft_lutpair0";
begin
\cnt_temp[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_temp(0),
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
\cnt_temp[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55A855AAFF00FF00"
    )
        port map (
      I0 => cnt_temp(0),
      I1 => cnt_temp(5),
      I2 => cnt_temp(3),
      I3 => cnt_temp(2),
      I4 => cnt_temp(4),
      I5 => cnt_temp(1),
      O => cnt_temp_0(2)
    );
\cnt_temp[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => cnt_temp(0),
      I1 => cnt_temp(3),
      I2 => cnt_temp(2),
      I3 => cnt_temp(1),
      O => cnt_temp_0(3)
    );
\cnt_temp[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FFDA000FFFF0000"
    )
        port map (
      I0 => cnt_temp(0),
      I1 => cnt_temp(5),
      I2 => cnt_temp(3),
      I3 => cnt_temp(2),
      I4 => cnt_temp(4),
      I5 => cnt_temp(1),
      O => cnt_temp_0(4)
    );
\cnt_temp[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SPI_chip_select,
      O => p_0_in
    );
\cnt_temp[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => cnt_temp(0),
      I1 => cnt_temp(5),
      I2 => cnt_temp(3),
      I3 => cnt_temp(2),
      I4 => cnt_temp(4),
      I5 => cnt_temp(1),
      O => cnt_temp_0(5)
    );
\cnt_temp_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_sample,
      CE => p_0_in,
      CLR => SPI_chip_select,
      D => \cnt_temp[0]_i_1_n_0\,
      Q => cnt_temp(0)
    );
\cnt_temp_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_sample,
      CE => p_0_in,
      CLR => SPI_chip_select,
      D => cnt_temp_0(1),
      Q => cnt_temp(1)
    );
\cnt_temp_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_sample,
      CE => p_0_in,
      CLR => SPI_chip_select,
      D => cnt_temp_0(2),
      Q => cnt_temp(2)
    );
\cnt_temp_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_sample,
      CE => p_0_in,
      CLR => SPI_chip_select,
      D => cnt_temp_0(3),
      Q => cnt_temp(3)
    );
\cnt_temp_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_sample,
      CE => p_0_in,
      CLR => SPI_chip_select,
      D => cnt_temp_0(4),
      Q => cnt_temp(4)
    );
\cnt_temp_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_sample,
      CE => p_0_in,
      CLR => SPI_chip_select,
      D => cnt_temp_0(5),
      Q => cnt_temp(5)
    );
out_temp: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => cnt_temp(5),
      I1 => cnt_temp(2),
      I2 => cnt_temp(3),
      I3 => cnt_temp(4),
      I4 => cnt_temp(0),
      I5 => cnt_temp(1),
      O => out_temp_n_0
    );
out_temp_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SPI_sample,
      CE => p_0_in,
      CLR => SPI_chip_select,
      D => out_temp_n_0,
      Q => CLK
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_SPI_0_2_latch is
  port (
    SPI_out : out STD_LOGIC_VECTOR ( 19 downto 0 );
    D : in STD_LOGIC_VECTOR ( 19 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buildup_SPI_0_2_latch : entity is "latch";
end buildup_SPI_0_2_latch;

architecture STRUCTURE of buildup_SPI_0_2_latch is
begin
\data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => SPI_out(0),
      R => '0'
    );
\data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(10),
      Q => SPI_out(10),
      R => '0'
    );
\data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(11),
      Q => SPI_out(11),
      R => '0'
    );
\data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(12),
      Q => SPI_out(12),
      R => '0'
    );
\data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(13),
      Q => SPI_out(13),
      R => '0'
    );
\data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(14),
      Q => SPI_out(14),
      R => '0'
    );
\data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(15),
      Q => SPI_out(15),
      R => '0'
    );
\data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(16),
      Q => SPI_out(16),
      R => '0'
    );
\data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(17),
      Q => SPI_out(17),
      R => '0'
    );
\data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(18),
      Q => SPI_out(18),
      R => '0'
    );
\data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(19),
      Q => SPI_out(19),
      R => '0'
    );
\data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => SPI_out(1),
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => SPI_out(2),
      R => '0'
    );
\data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => SPI_out(3),
      R => '0'
    );
\data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(4),
      Q => SPI_out(4),
      R => '0'
    );
\data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(5),
      Q => SPI_out(5),
      R => '0'
    );
\data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(6),
      Q => SPI_out(6),
      R => '0'
    );
\data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(7),
      Q => SPI_out(7),
      R => '0'
    );
\data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(8),
      Q => SPI_out(8),
      R => '0'
    );
\data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(9),
      Q => SPI_out(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_SPI_0_2_shift_register_generic is
  port (
    miso : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 19 downto 0 );
    SPI_sample : in STD_LOGIC;
    mosi : in STD_LOGIC;
    SPI_chip_select : in STD_LOGIC;
    SPI_in : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buildup_SPI_0_2_shift_register_generic : entity is "shift_register_generic";
end buildup_SPI_0_2_shift_register_generic;

architecture STRUCTURE of buildup_SPI_0_2_shift_register_generic is
  signal \^d\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal carry_out_i_1_n_0 : STD_LOGIC;
  signal \^miso\ : STD_LOGIC;
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
  signal \register_data_reg[16]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[16]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[16]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[16]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[16]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[17]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[17]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[17]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[17]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[17]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[18]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[18]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[18]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[18]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[18]_P_n_0\ : STD_LOGIC;
  signal \register_data_reg[19]_C_n_0\ : STD_LOGIC;
  signal \register_data_reg[19]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \register_data_reg[19]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \register_data_reg[19]_LDC_n_0\ : STD_LOGIC;
  signal \register_data_reg[19]_P_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of carry_out_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data[19]_i_1\ : label is "soft_lutpair1";
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
  attribute XILINX_LEGACY_PRIM of \register_data_reg[16]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[16]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[17]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[17]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[18]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[18]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \register_data_reg[19]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \register_data_reg[19]_LDC\ : label is "VCC:GE";
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
  D(19 downto 0) <= \^d\(19 downto 0);
  miso <= \^miso\;
carry_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \register_data_reg[19]_P_n_0\,
      I1 => \register_data_reg[19]_LDC_n_0\,
      I2 => \register_data_reg[19]_C_n_0\,
      I3 => SPI_chip_select,
      I4 => \^miso\,
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
\data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[0]_P_n_0\,
      I1 => \register_data_reg[0]_LDC_n_0\,
      I2 => \register_data_reg[0]_C_n_0\,
      O => \^d\(0)
    );
\data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[10]_P_n_0\,
      I1 => \register_data_reg[10]_LDC_n_0\,
      I2 => \register_data_reg[10]_C_n_0\,
      O => \^d\(10)
    );
\data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[11]_P_n_0\,
      I1 => \register_data_reg[11]_LDC_n_0\,
      I2 => \register_data_reg[11]_C_n_0\,
      O => \^d\(11)
    );
\data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[12]_P_n_0\,
      I1 => \register_data_reg[12]_LDC_n_0\,
      I2 => \register_data_reg[12]_C_n_0\,
      O => \^d\(12)
    );
\data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[13]_P_n_0\,
      I1 => \register_data_reg[13]_LDC_n_0\,
      I2 => \register_data_reg[13]_C_n_0\,
      O => \^d\(13)
    );
\data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[14]_P_n_0\,
      I1 => \register_data_reg[14]_LDC_n_0\,
      I2 => \register_data_reg[14]_C_n_0\,
      O => \^d\(14)
    );
\data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[15]_P_n_0\,
      I1 => \register_data_reg[15]_LDC_n_0\,
      I2 => \register_data_reg[15]_C_n_0\,
      O => \^d\(15)
    );
\data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[16]_P_n_0\,
      I1 => \register_data_reg[16]_LDC_n_0\,
      I2 => \register_data_reg[16]_C_n_0\,
      O => \^d\(16)
    );
\data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[17]_P_n_0\,
      I1 => \register_data_reg[17]_LDC_n_0\,
      I2 => \register_data_reg[17]_C_n_0\,
      O => \^d\(17)
    );
\data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[18]_P_n_0\,
      I1 => \register_data_reg[18]_LDC_n_0\,
      I2 => \register_data_reg[18]_C_n_0\,
      O => \^d\(18)
    );
\data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[19]_P_n_0\,
      I1 => \register_data_reg[19]_LDC_n_0\,
      I2 => \register_data_reg[19]_C_n_0\,
      O => \^d\(19)
    );
\data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[1]_P_n_0\,
      I1 => \register_data_reg[1]_LDC_n_0\,
      I2 => \register_data_reg[1]_C_n_0\,
      O => \^d\(1)
    );
\data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[2]_P_n_0\,
      I1 => \register_data_reg[2]_LDC_n_0\,
      I2 => \register_data_reg[2]_C_n_0\,
      O => \^d\(2)
    );
\data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[3]_P_n_0\,
      I1 => \register_data_reg[3]_LDC_n_0\,
      I2 => \register_data_reg[3]_C_n_0\,
      O => \^d\(3)
    );
\data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[4]_P_n_0\,
      I1 => \register_data_reg[4]_LDC_n_0\,
      I2 => \register_data_reg[4]_C_n_0\,
      O => \^d\(4)
    );
\data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[5]_P_n_0\,
      I1 => \register_data_reg[5]_LDC_n_0\,
      I2 => \register_data_reg[5]_C_n_0\,
      O => \^d\(5)
    );
\data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[6]_P_n_0\,
      I1 => \register_data_reg[6]_LDC_n_0\,
      I2 => \register_data_reg[6]_C_n_0\,
      O => \^d\(6)
    );
\data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[7]_P_n_0\,
      I1 => \register_data_reg[7]_LDC_n_0\,
      I2 => \register_data_reg[7]_C_n_0\,
      O => \^d\(7)
    );
\data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[8]_P_n_0\,
      I1 => \register_data_reg[8]_LDC_n_0\,
      I2 => \register_data_reg[8]_C_n_0\,
      O => \^d\(8)
    );
\data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \register_data_reg[9]_P_n_0\,
      I1 => \register_data_reg[9]_LDC_n_0\,
      I2 => \register_data_reg[9]_C_n_0\,
      O => \^d\(9)
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
      I0 => SPI_in(0),
      I1 => SPI_chip_select,
      O => \register_data_reg[0]_LDC_i_1_n_0\
    );
\register_data_reg[0]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(0),
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
      D => \^d\(9),
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
      I0 => SPI_in(10),
      I1 => SPI_chip_select,
      O => \register_data_reg[10]_LDC_i_1_n_0\
    );
\register_data_reg[10]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(10),
      O => \register_data_reg[10]_LDC_i_2_n_0\
    );
\register_data_reg[10]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(9),
      PRE => \register_data_reg[10]_LDC_i_1_n_0\,
      Q => \register_data_reg[10]_P_n_0\
    );
\register_data_reg[11]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[11]_LDC_i_2_n_0\,
      D => \^d\(10),
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
      I0 => SPI_in(11),
      I1 => SPI_chip_select,
      O => \register_data_reg[11]_LDC_i_1_n_0\
    );
\register_data_reg[11]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(11),
      O => \register_data_reg[11]_LDC_i_2_n_0\
    );
\register_data_reg[11]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(10),
      PRE => \register_data_reg[11]_LDC_i_1_n_0\,
      Q => \register_data_reg[11]_P_n_0\
    );
\register_data_reg[12]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[12]_LDC_i_2_n_0\,
      D => \^d\(11),
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
      I0 => SPI_in(12),
      I1 => SPI_chip_select,
      O => \register_data_reg[12]_LDC_i_1_n_0\
    );
\register_data_reg[12]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(12),
      O => \register_data_reg[12]_LDC_i_2_n_0\
    );
\register_data_reg[12]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(11),
      PRE => \register_data_reg[12]_LDC_i_1_n_0\,
      Q => \register_data_reg[12]_P_n_0\
    );
\register_data_reg[13]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[13]_LDC_i_2_n_0\,
      D => \^d\(12),
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
      I0 => SPI_in(13),
      I1 => SPI_chip_select,
      O => \register_data_reg[13]_LDC_i_1_n_0\
    );
\register_data_reg[13]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(13),
      O => \register_data_reg[13]_LDC_i_2_n_0\
    );
\register_data_reg[13]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(12),
      PRE => \register_data_reg[13]_LDC_i_1_n_0\,
      Q => \register_data_reg[13]_P_n_0\
    );
\register_data_reg[14]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[14]_LDC_i_2_n_0\,
      D => \^d\(13),
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
      I0 => SPI_in(14),
      I1 => SPI_chip_select,
      O => \register_data_reg[14]_LDC_i_1_n_0\
    );
\register_data_reg[14]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(14),
      O => \register_data_reg[14]_LDC_i_2_n_0\
    );
\register_data_reg[14]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(13),
      PRE => \register_data_reg[14]_LDC_i_1_n_0\,
      Q => \register_data_reg[14]_P_n_0\
    );
\register_data_reg[15]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[15]_LDC_i_2_n_0\,
      D => \^d\(14),
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
      I0 => SPI_in(15),
      I1 => SPI_chip_select,
      O => \register_data_reg[15]_LDC_i_1_n_0\
    );
\register_data_reg[15]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(15),
      O => \register_data_reg[15]_LDC_i_2_n_0\
    );
\register_data_reg[15]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(14),
      PRE => \register_data_reg[15]_LDC_i_1_n_0\,
      Q => \register_data_reg[15]_P_n_0\
    );
\register_data_reg[16]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[16]_LDC_i_2_n_0\,
      D => \^d\(15),
      Q => \register_data_reg[16]_C_n_0\
    );
\register_data_reg[16]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[16]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[16]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[16]_LDC_n_0\
    );
\register_data_reg[16]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SPI_in(16),
      I1 => SPI_chip_select,
      O => \register_data_reg[16]_LDC_i_1_n_0\
    );
\register_data_reg[16]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(16),
      O => \register_data_reg[16]_LDC_i_2_n_0\
    );
\register_data_reg[16]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(15),
      PRE => \register_data_reg[16]_LDC_i_1_n_0\,
      Q => \register_data_reg[16]_P_n_0\
    );
\register_data_reg[17]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[17]_LDC_i_2_n_0\,
      D => \^d\(16),
      Q => \register_data_reg[17]_C_n_0\
    );
\register_data_reg[17]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[17]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[17]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[17]_LDC_n_0\
    );
\register_data_reg[17]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SPI_in(17),
      I1 => SPI_chip_select,
      O => \register_data_reg[17]_LDC_i_1_n_0\
    );
\register_data_reg[17]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(17),
      O => \register_data_reg[17]_LDC_i_2_n_0\
    );
\register_data_reg[17]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(16),
      PRE => \register_data_reg[17]_LDC_i_1_n_0\,
      Q => \register_data_reg[17]_P_n_0\
    );
\register_data_reg[18]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[18]_LDC_i_2_n_0\,
      D => \^d\(17),
      Q => \register_data_reg[18]_C_n_0\
    );
\register_data_reg[18]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[18]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[18]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[18]_LDC_n_0\
    );
\register_data_reg[18]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SPI_in(18),
      I1 => SPI_chip_select,
      O => \register_data_reg[18]_LDC_i_1_n_0\
    );
\register_data_reg[18]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(18),
      O => \register_data_reg[18]_LDC_i_2_n_0\
    );
\register_data_reg[18]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(17),
      PRE => \register_data_reg[18]_LDC_i_1_n_0\,
      Q => \register_data_reg[18]_P_n_0\
    );
\register_data_reg[19]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[19]_LDC_i_2_n_0\,
      D => \^d\(18),
      Q => \register_data_reg[19]_C_n_0\
    );
\register_data_reg[19]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \register_data_reg[19]_LDC_i_2_n_0\,
      D => '1',
      G => \register_data_reg[19]_LDC_i_1_n_0\,
      GE => '1',
      Q => \register_data_reg[19]_LDC_n_0\
    );
\register_data_reg[19]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SPI_in(19),
      I1 => SPI_chip_select,
      O => \register_data_reg[19]_LDC_i_1_n_0\
    );
\register_data_reg[19]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(19),
      O => \register_data_reg[19]_LDC_i_2_n_0\
    );
\register_data_reg[19]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(18),
      PRE => \register_data_reg[19]_LDC_i_1_n_0\,
      Q => \register_data_reg[19]_P_n_0\
    );
\register_data_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[1]_LDC_i_2_n_0\,
      D => \^d\(0),
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
      I0 => SPI_in(1),
      I1 => SPI_chip_select,
      O => \register_data_reg[1]_LDC_i_1_n_0\
    );
\register_data_reg[1]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(1),
      O => \register_data_reg[1]_LDC_i_2_n_0\
    );
\register_data_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(0),
      PRE => \register_data_reg[1]_LDC_i_1_n_0\,
      Q => \register_data_reg[1]_P_n_0\
    );
\register_data_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[2]_LDC_i_2_n_0\,
      D => \^d\(1),
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
      I0 => SPI_in(2),
      I1 => SPI_chip_select,
      O => \register_data_reg[2]_LDC_i_1_n_0\
    );
\register_data_reg[2]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(2),
      O => \register_data_reg[2]_LDC_i_2_n_0\
    );
\register_data_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(1),
      PRE => \register_data_reg[2]_LDC_i_1_n_0\,
      Q => \register_data_reg[2]_P_n_0\
    );
\register_data_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[3]_LDC_i_2_n_0\,
      D => \^d\(2),
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
      I0 => SPI_in(3),
      I1 => SPI_chip_select,
      O => \register_data_reg[3]_LDC_i_1_n_0\
    );
\register_data_reg[3]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(3),
      O => \register_data_reg[3]_LDC_i_2_n_0\
    );
\register_data_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(2),
      PRE => \register_data_reg[3]_LDC_i_1_n_0\,
      Q => \register_data_reg[3]_P_n_0\
    );
\register_data_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[4]_LDC_i_2_n_0\,
      D => \^d\(3),
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
      I0 => SPI_in(4),
      I1 => SPI_chip_select,
      O => \register_data_reg[4]_LDC_i_1_n_0\
    );
\register_data_reg[4]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(4),
      O => \register_data_reg[4]_LDC_i_2_n_0\
    );
\register_data_reg[4]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(3),
      PRE => \register_data_reg[4]_LDC_i_1_n_0\,
      Q => \register_data_reg[4]_P_n_0\
    );
\register_data_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[5]_LDC_i_2_n_0\,
      D => \^d\(4),
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
      I0 => SPI_in(5),
      I1 => SPI_chip_select,
      O => \register_data_reg[5]_LDC_i_1_n_0\
    );
\register_data_reg[5]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(5),
      O => \register_data_reg[5]_LDC_i_2_n_0\
    );
\register_data_reg[5]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(4),
      PRE => \register_data_reg[5]_LDC_i_1_n_0\,
      Q => \register_data_reg[5]_P_n_0\
    );
\register_data_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[6]_LDC_i_2_n_0\,
      D => \^d\(5),
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
      I0 => SPI_in(6),
      I1 => SPI_chip_select,
      O => \register_data_reg[6]_LDC_i_1_n_0\
    );
\register_data_reg[6]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(6),
      O => \register_data_reg[6]_LDC_i_2_n_0\
    );
\register_data_reg[6]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(5),
      PRE => \register_data_reg[6]_LDC_i_1_n_0\,
      Q => \register_data_reg[6]_P_n_0\
    );
\register_data_reg[7]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[7]_LDC_i_2_n_0\,
      D => \^d\(6),
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
      I0 => SPI_in(7),
      I1 => SPI_chip_select,
      O => \register_data_reg[7]_LDC_i_1_n_0\
    );
\register_data_reg[7]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(7),
      O => \register_data_reg[7]_LDC_i_2_n_0\
    );
\register_data_reg[7]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(6),
      PRE => \register_data_reg[7]_LDC_i_1_n_0\,
      Q => \register_data_reg[7]_P_n_0\
    );
\register_data_reg[8]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[8]_LDC_i_2_n_0\,
      D => \^d\(7),
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
      I0 => SPI_in(8),
      I1 => SPI_chip_select,
      O => \register_data_reg[8]_LDC_i_1_n_0\
    );
\register_data_reg[8]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(8),
      O => \register_data_reg[8]_LDC_i_2_n_0\
    );
\register_data_reg[8]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(7),
      PRE => \register_data_reg[8]_LDC_i_1_n_0\,
      Q => \register_data_reg[8]_P_n_0\
    );
\register_data_reg[9]_C\: unisim.vcomponents.FDCE
     port map (
      C => SPI_sample,
      CE => '1',
      CLR => \register_data_reg[9]_LDC_i_2_n_0\,
      D => \^d\(8),
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
      I0 => SPI_in(9),
      I1 => SPI_chip_select,
      O => \register_data_reg[9]_LDC_i_1_n_0\
    );
\register_data_reg[9]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SPI_chip_select,
      I1 => SPI_in(9),
      O => \register_data_reg[9]_LDC_i_2_n_0\
    );
\register_data_reg[9]_P\: unisim.vcomponents.FDPE
     port map (
      C => SPI_sample,
      CE => '1',
      D => \^d\(8),
      PRE => \register_data_reg[9]_LDC_i_1_n_0\,
      Q => \register_data_reg[9]_P_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_SPI_0_2_SPI_enable_counter_0_0 is
  port (
    CLK : out STD_LOGIC;
    SPI_sample : in STD_LOGIC;
    SPI_chip_select : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buildup_SPI_0_2_SPI_enable_counter_0_0 : entity is "SPI_enable_counter_0_0";
end buildup_SPI_0_2_SPI_enable_counter_0_0;

architecture STRUCTURE of buildup_SPI_0_2_SPI_enable_counter_0_0 is
begin
U0: entity work.buildup_SPI_0_2_enable_counter
     port map (
      CLK => CLK,
      SPI_chip_select => SPI_chip_select,
      SPI_sample => SPI_sample
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_SPI_0_2_SPI_latch_0_0 is
  port (
    SPI_out : out STD_LOGIC_VECTOR ( 19 downto 0 );
    D : in STD_LOGIC_VECTOR ( 19 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buildup_SPI_0_2_SPI_latch_0_0 : entity is "SPI_latch_0_0";
end buildup_SPI_0_2_SPI_latch_0_0;

architecture STRUCTURE of buildup_SPI_0_2_SPI_latch_0_0 is
begin
U0: entity work.buildup_SPI_0_2_latch
     port map (
      CLK => CLK,
      D(19 downto 0) => D(19 downto 0),
      SPI_out(19 downto 0) => SPI_out(19 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_SPI_0_2_SPI_shift_register_input_1 is
  port (
    miso : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 19 downto 0 );
    SPI_sample : in STD_LOGIC;
    mosi : in STD_LOGIC;
    SPI_chip_select : in STD_LOGIC;
    SPI_in : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buildup_SPI_0_2_SPI_shift_register_input_1 : entity is "SPI_shift_register_input_1";
end buildup_SPI_0_2_SPI_shift_register_input_1;

architecture STRUCTURE of buildup_SPI_0_2_SPI_shift_register_input_1 is
begin
U0: entity work.buildup_SPI_0_2_shift_register_generic
     port map (
      D(19 downto 0) => D(19 downto 0),
      SPI_chip_select => SPI_chip_select,
      SPI_in(19 downto 0) => SPI_in(19 downto 0),
      SPI_sample => SPI_sample,
      miso => miso,
      mosi => mosi
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_SPI_0_2_SPI is
  port (
    SPI_chip_select : in STD_LOGIC;
    SPI_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    SPI_out : out STD_LOGIC_VECTOR ( 19 downto 0 );
    SPI_sample : in STD_LOGIC;
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buildup_SPI_0_2_SPI : entity is "SPI";
  attribute hw_handoff : string;
  attribute hw_handoff of buildup_SPI_0_2_SPI : entity is "SPI.hwdef";
end buildup_SPI_0_2_SPI;

architecture STRUCTURE of buildup_SPI_0_2_SPI is
  signal out_temp : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 19 downto 1 );
  attribute x_core_info : string;
  attribute x_core_info of Prescaler : label is "enable_counter,Vivado 2023.2";
  attribute x_core_info of latch_0 : label is "latch,Vivado 2023.2";
  attribute x_core_info of spi_in_RnM : label is "shift_register_generic,Vivado 2023.2";
  attribute x_interface_info : string;
  attribute x_interface_info of SPI_chip_select : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of SPI_chip_select : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
Prescaler: entity work.buildup_SPI_0_2_SPI_enable_counter_0_0
     port map (
      CLK => out_temp,
      SPI_chip_select => SPI_chip_select,
      SPI_sample => SPI_sample
    );
latch_0: entity work.buildup_SPI_0_2_SPI_latch_0_0
     port map (
      CLK => out_temp,
      D(19) => p_1_in,
      D(18 downto 0) => p_2_in(19 downto 1),
      SPI_out(19 downto 0) => SPI_out(19 downto 0)
    );
spi_in_RnM: entity work.buildup_SPI_0_2_SPI_shift_register_input_1
     port map (
      D(19) => p_1_in,
      D(18 downto 0) => p_2_in(19 downto 1),
      SPI_chip_select => SPI_chip_select,
      SPI_in(19 downto 0) => SPI_in(19 downto 0),
      SPI_sample => SPI_sample,
      miso => miso,
      mosi => mosi
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_SPI_0_2 is
  port (
    SPI_chip_select : in STD_LOGIC;
    SPI_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    SPI_out : out STD_LOGIC_VECTOR ( 19 downto 0 );
    SPI_sample : in STD_LOGIC;
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of buildup_SPI_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of buildup_SPI_0_2 : entity is "buildup_SPI_0_2,SPI,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of buildup_SPI_0_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of buildup_SPI_0_2 : entity is "IPI";
  attribute x_core_info : string;
  attribute x_core_info of buildup_SPI_0_2 : entity is "SPI,Vivado 2023.2";
end buildup_SPI_0_2;

architecture STRUCTURE of buildup_SPI_0_2 is
  attribute hw_handoff : string;
  attribute hw_handoff of U0 : label is "SPI.hwdef";
begin
U0: entity work.buildup_SPI_0_2_SPI
     port map (
      SPI_chip_select => SPI_chip_select,
      SPI_in(19 downto 0) => SPI_in(19 downto 0),
      SPI_out(19 downto 0) => SPI_out(19 downto 0),
      SPI_sample => SPI_sample,
      miso => miso,
      mosi => mosi,
      rst => '0'
    );
end STRUCTURE;

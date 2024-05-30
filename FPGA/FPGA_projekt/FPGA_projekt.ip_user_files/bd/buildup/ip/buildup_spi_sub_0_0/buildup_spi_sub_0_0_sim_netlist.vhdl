-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri May 17 11:32:44 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jacob/Documents/Semester4/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/buildup/ip/buildup_spi_sub_0_0/buildup_spi_sub_0_0_sim_netlist.vhdl
-- Design      : buildup_spi_sub_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_spi_sub_0_0_spi_sub is
  port (
    MISO : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    SCLK_falling : in STD_LOGIC;
    CS : in STD_LOGIC;
    SCLK_rising : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    MOSI : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buildup_spi_sub_0_0_spi_sub : entity is "spi_sub";
end buildup_spi_sub_0_0_spi_sub;

architecture STRUCTURE of buildup_spi_sub_0_0_spi_sub is
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[4]\ : STD_LOGIC;
  signal MISO_reg_i_1_n_0 : STD_LOGIC;
  signal MISO_reg_i_2_n_0 : STD_LOGIC;
  signal \bit_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[23]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[23]_i_2_n_0\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal next_state : STD_LOGIC;
  signal one_shot : STD_LOGIC;
  signal one_shot_i_1_n_0 : STD_LOGIC;
  signal one_shot_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \shift_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[9]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "s_delay:10000,s_transmit:00010,s_receive:00100,s_idle:00001,s_latch:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "s_delay:10000,s_transmit:00010,s_receive:00100,s_idle:00001,s_latch:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "s_delay:10000,s_transmit:00010,s_receive:00100,s_idle:00001,s_latch:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "s_delay:10000,s_transmit:00010,s_receive:00100,s_idle:00001,s_latch:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[4]\ : label is "s_delay:10000,s_transmit:00010,s_receive:00100,s_idle:00001,s_latch:01000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_next_state_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[0]_i_2\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_next_state_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_next_state_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_next_state_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \FSM_onehot_next_state_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of MISO_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of MISO_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of MISO_reg_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of MISO_reg_i_2 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[16]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[16]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[17]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[17]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[18]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[18]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[19]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[19]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[20]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[20]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[21]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[21]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[22]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[22]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[23]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[23]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \shift_reg[0]_i_1\ : label is "soft_lutpair2";
begin
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[0]\,
      PRE => rst,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_next_state_reg_n_0_[1]\,
      Q => one_shot
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_next_state_reg_n_0_[2]\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_next_state_reg_n_0_[3]\,
      Q => \FSM_onehot_current_state_reg_n_0_[3]\
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_next_state_reg_n_0_[4]\,
      Q => \FSM_onehot_current_state_reg_n_0_[4]\
    );
\FSM_onehot_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[0]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[0]\
    );
\FSM_onehot_next_state_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEAFAEA"
    )
        port map (
      I0 => \FSM_onehot_next_state_reg[0]_i_2_n_0\,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => CS,
      I3 => one_shot,
      I4 => SCLK_rising,
      O => \FSM_onehot_next_state_reg[0]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAAAA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I1 => p_0_in,
      I2 => CS,
      I3 => SCLK_falling,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_next_state_reg[0]_i_2_n_0\
    );
\FSM_onehot_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[1]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[1]\
    );
\FSM_onehot_next_state_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00F400F400F4"
    )
        port map (
      I0 => SCLK_rising,
      I1 => one_shot,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => CS,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I5 => SCLK_falling,
      O => \FSM_onehot_next_state_reg[1]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[2]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[2]\
    );
\FSM_onehot_next_state_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8888"
    )
        port map (
      I0 => SCLK_rising,
      I1 => one_shot,
      I2 => SCLK_falling,
      I3 => CS,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_next_state_reg[2]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[3]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[3]\
    );
\FSM_onehot_next_state_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => SCLK_falling,
      I2 => CS,
      I3 => p_0_in,
      O => \FSM_onehot_next_state_reg[3]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_current_state_reg_n_0_[3]\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[4]\
    );
\FSM_onehot_next_state_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I1 => one_shot,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => next_state
    );
MISO_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => MISO_reg_i_1_n_0,
      G => MISO_reg_i_2_n_0,
      GE => '1',
      Q => MISO
    );
MISO_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \shift_reg_reg_n_0_[23]\,
      O => MISO_reg_i_1_n_0
    );
MISO_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => one_shot,
      O => MISO_reg_i_2_n_0
    );
\bit_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAF00A8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => one_shot_reg_n_0,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => rst,
      I4 => in7(1),
      O => \bit_counter[0]_i_1_n_0\
    );
\bit_counter[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \bit_counter[23]_i_1_n_0\
    );
\bit_counter[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => one_shot_reg_n_0,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => rst,
      O => \bit_counter[23]_i_2_n_0\
    );
\bit_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_counter[0]_i_1_n_0\,
      Q => in7(1),
      R => '0'
    );
\bit_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(10),
      Q => in7(11),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(11),
      Q => in7(12),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(12),
      Q => in7(13),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(13),
      Q => in7(14),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(14),
      Q => in7(15),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(15),
      Q => in7(16),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(16),
      Q => in7(17),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(17),
      Q => in7(18),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(18),
      Q => in7(19),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(19),
      Q => in7(20),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(1),
      Q => in7(2),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(20),
      Q => in7(21),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(21),
      Q => in7(22),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(22),
      Q => in7(23),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(23),
      Q => p_0_in,
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(2),
      Q => in7(3),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(3),
      Q => in7(4),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(4),
      Q => in7(5),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(5),
      Q => in7(6),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(6),
      Q => in7(7),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(7),
      Q => in7(8),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(8),
      Q => in7(9),
      R => \bit_counter[23]_i_1_n_0\
    );
\bit_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => in7(9),
      Q => in7(10),
      R => \bit_counter[23]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[0]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(0)
    );
\data_out_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[10]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(10)
    );
\data_out_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[11]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(11)
    );
\data_out_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[12]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(12)
    );
\data_out_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[13]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(13)
    );
\data_out_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[14]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(14)
    );
\data_out_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[15]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(15)
    );
\data_out_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[16]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(16)
    );
\data_out_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[17]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(17)
    );
\data_out_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[18]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(18)
    );
\data_out_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[19]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(19)
    );
\data_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[1]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(1)
    );
\data_out_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[20]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(20)
    );
\data_out_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[21]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(21)
    );
\data_out_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[22]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(22)
    );
\data_out_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[23]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(23)
    );
\data_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[2]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(2)
    );
\data_out_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[3]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(3)
    );
\data_out_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[4]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(4)
    );
\data_out_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[5]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(5)
    );
\data_out_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[6]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(6)
    );
\data_out_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[7]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(7)
    );
\data_out_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[8]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(8)
    );
\data_out_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \shift_reg_reg_n_0_[9]\,
      G => \FSM_onehot_current_state_reg_n_0_[3]\,
      GE => '1',
      Q => data_out(9)
    );
one_shot_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCF4"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => one_shot_reg_n_0,
      I2 => one_shot,
      I3 => rst,
      O => one_shot_i_1_n_0
    );
one_shot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => one_shot_i_1_n_0,
      Q => one_shot_reg_n_0,
      R => '0'
    );
\shift_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(0),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => MOSI,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[0]_i_1_n_0\
    );
\shift_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(10),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[9]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[10]_i_1_n_0\
    );
\shift_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(11),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[10]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[11]_i_1_n_0\
    );
\shift_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(12),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[11]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[12]_i_1_n_0\
    );
\shift_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(13),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[12]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[13]_i_1_n_0\
    );
\shift_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(14),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[13]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[14]_i_1_n_0\
    );
\shift_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(15),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[14]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[15]_i_1_n_0\
    );
\shift_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(16),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[15]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[16]_i_1_n_0\
    );
\shift_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(17),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[16]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[17]_i_1_n_0\
    );
\shift_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(18),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[17]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[18]_i_1_n_0\
    );
\shift_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(19),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[18]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[19]_i_1_n_0\
    );
\shift_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[0]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[1]_i_1_n_0\
    );
\shift_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(20),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[19]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[20]_i_1_n_0\
    );
\shift_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(21),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[20]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[21]_i_1_n_0\
    );
\shift_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(22),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[21]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[22]_i_1_n_0\
    );
\shift_reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22202020"
    )
        port map (
      I0 => one_shot,
      I1 => rst,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => one_shot_reg_n_0,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[23]_i_1_n_0\
    );
\shift_reg[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(23),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[22]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[23]_i_2_n_0\
    );
\shift_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(2),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[1]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[2]_i_1_n_0\
    );
\shift_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(3),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[2]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[3]_i_1_n_0\
    );
\shift_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(4),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[3]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[4]_i_1_n_0\
    );
\shift_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(5),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[4]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[5]_i_1_n_0\
    );
\shift_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(6),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[5]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[6]_i_1_n_0\
    );
\shift_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(7),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[6]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[7]_i_1_n_0\
    );
\shift_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(8),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[7]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[8]_i_1_n_0\
    );
\shift_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => data_in(9),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \shift_reg_reg_n_0_[8]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \shift_reg[9]_i_1_n_0\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[0]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[0]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[10]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[10]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[11]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[11]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[12]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[12]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[13]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[13]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[14]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[14]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[15]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[15]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[16]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[16]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[17]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[17]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[18]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[18]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[19]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[19]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[1]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[1]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[20]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[20]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[21]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[21]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[22]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[22]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[23]_i_2_n_0\,
      Q => \shift_reg_reg_n_0_[23]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[2]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[2]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[3]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[3]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[4]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[4]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[5]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[5]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[6]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[6]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[7]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[7]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[8]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[8]\,
      S => \shift_reg[23]_i_1_n_0\
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_counter[23]_i_2_n_0\,
      D => \shift_reg[9]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[9]\,
      S => \shift_reg[23]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_spi_sub_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    SCLK_rising : in STD_LOGIC;
    SCLK_falling : in STD_LOGIC;
    MOSI : in STD_LOGIC;
    CS : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    MISO : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of buildup_spi_sub_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of buildup_spi_sub_0_0 : entity is "buildup_spi_sub_0_0,spi_sub,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of buildup_spi_sub_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of buildup_spi_sub_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of buildup_spi_sub_0_0 : entity is "spi_sub,Vivado 2023.2";
end buildup_spi_sub_0_0;

architecture STRUCTURE of buildup_spi_sub_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN buildup_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.buildup_spi_sub_0_0_spi_sub
     port map (
      CS => CS,
      MISO => MISO,
      MOSI => MOSI,
      SCLK_falling => SCLK_falling,
      SCLK_rising => SCLK_rising,
      clk => clk,
      data_in(23 downto 0) => data_in(23 downto 0),
      data_out(23 downto 0) => data_out(23 downto 0),
      rst => rst
    );
end STRUCTURE;

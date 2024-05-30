-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Apr  5 13:05:03 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ encoder_bd_encoder_0_0_sim_netlist.vhdl
-- Design      : encoder_bd_encoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encoder is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \rot_reg[8]_P_0\ : out STD_LOGIC;
    pulses : out STD_LOGIC_VECTOR ( 4 downto 0 );
    enc_a : in STD_LOGIC;
    rst : in STD_LOGIC;
    enc_b : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encoder is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^pulses\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \rot[0]_C_i_1_n_0\ : STD_LOGIC;
  signal \rot[4]_i_2_n_0\ : STD_LOGIC;
  signal \rot[4]_i_3_n_0\ : STD_LOGIC;
  signal \rot[4]_i_4_n_0\ : STD_LOGIC;
  signal \rot[4]_i_5_n_0\ : STD_LOGIC;
  signal \rot[4]_i_6_n_0\ : STD_LOGIC;
  signal \rot[4]_i_7_n_0\ : STD_LOGIC;
  signal \rot[4]_i_8_n_0\ : STD_LOGIC;
  signal \rot[7]_i_2_n_0\ : STD_LOGIC;
  signal \rot[7]_i_3_n_0\ : STD_LOGIC;
  signal \rot[7]_i_4_n_0\ : STD_LOGIC;
  signal \rot[7]_i_5_n_0\ : STD_LOGIC;
  signal \rot[7]_i_6_n_0\ : STD_LOGIC;
  signal \rot[7]_i_7_n_0\ : STD_LOGIC;
  signal \rot[7]_i_8_n_0\ : STD_LOGIC;
  signal \rot[7]_i_9_n_0\ : STD_LOGIC;
  signal \rot_reg[0]_C_n_0\ : STD_LOGIC;
  signal \rot_reg[0]_P_n_0\ : STD_LOGIC;
  signal \rot_reg[1]_C_n_0\ : STD_LOGIC;
  signal \rot_reg[1]_P_n_0\ : STD_LOGIC;
  signal \rot_reg[2]_C_n_0\ : STD_LOGIC;
  signal \rot_reg[2]_P_n_0\ : STD_LOGIC;
  signal \rot_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rot_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \rot_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \rot_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \rot_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \rot_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \rot_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \rot_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \rot_reg[5]_C_n_0\ : STD_LOGIC;
  signal \rot_reg[5]_P_n_0\ : STD_LOGIC;
  signal \rot_reg[6]_C_n_0\ : STD_LOGIC;
  signal \rot_reg[6]_P_n_0\ : STD_LOGIC;
  signal \rot_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \rot_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \rot_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \rot_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \rot_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \rot_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \rot_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \rot_reg[8]_C_n_0\ : STD_LOGIC;
  signal \rot_reg[8]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \rot_reg[8]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \rot_reg[8]_LDC_i_3_n_0\ : STD_LOGIC;
  signal \rot_reg[8]_LDC_i_4_n_0\ : STD_LOGIC;
  signal \rot_reg[8]_LDC_i_5_n_0\ : STD_LOGIC;
  signal \rot_reg[8]_LDC_n_0\ : STD_LOGIC;
  signal \^rot_reg[8]_p_0\ : STD_LOGIC;
  signal \rot_reg[8]_P_n_0\ : STD_LOGIC;
  signal \NLW_rot_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pulses[1]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pulses[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pulses[5]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pulses[6]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pulses[8]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rot[0]_C_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rot[7]_i_9\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \rot_reg[4]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \rot_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \rot_reg[7]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \rot_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \rot_reg[8]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \rot_reg[8]_LDC\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \rot_reg[8]_LDC_i_5\ : label is "soft_lutpair1";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  pulses(4 downto 0) <= \^pulses\(4 downto 0);
  \rot_reg[8]_P_0\ <= \^rot_reg[8]_p_0\;
\pulses[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rot_reg[0]_P_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[0]_C_n_0\,
      O => \^pulses\(0)
    );
\pulses[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rot_reg[1]_P_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[1]_C_n_0\,
      O => \^pulses\(1)
    );
\pulses[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rot_reg[2]_P_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[2]_C_n_0\,
      O => \^pulses\(2)
    );
\pulses[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rot_reg[5]_P_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[5]_C_n_0\,
      O => \^pulses\(3)
    );
\pulses[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rot_reg[6]_P_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[6]_C_n_0\,
      O => \^pulses\(4)
    );
\pulses[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rot_reg[8]_P_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[8]_C_n_0\,
      O => \^rot_reg[8]_p_0\
    );
\rot[0]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \rot_reg[0]_C_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[0]_P_n_0\,
      O => \rot[0]_C_i_1_n_0\
    );
\rot[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rot_reg[2]_P_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[2]_C_n_0\,
      O => \rot[4]_i_2_n_0\
    );
\rot[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rot_reg[1]_P_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[1]_C_n_0\,
      O => \rot[4]_i_3_n_0\
    );
\rot[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \rot_reg[1]_C_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[1]_P_n_0\,
      O => \rot[4]_i_4_n_0\
    );
\rot[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \rot[4]_i_5_n_0\
    );
\rot[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => \rot_reg[2]_C_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[2]_P_n_0\,
      I3 => \^q\(0),
      O => \rot[4]_i_6_n_0\
    );
\rot[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => \rot_reg[1]_C_n_0\,
      I1 => \rot_reg[1]_P_n_0\,
      I2 => \rot_reg[2]_C_n_0\,
      I3 => \rot_reg[8]_LDC_n_0\,
      I4 => \rot_reg[2]_P_n_0\,
      O => \rot[4]_i_7_n_0\
    );
\rot[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \rot_reg[1]_C_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[1]_P_n_0\,
      I3 => enc_b,
      O => \rot[4]_i_8_n_0\
    );
\rot[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEAEAEAEAA"
    )
        port map (
      I0 => rst,
      I1 => \^rot_reg[8]_p_0\,
      I2 => \rot[7]_i_9_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \rot[7]_i_2_n_0\
    );
\rot[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rot_reg[6]_P_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[6]_C_n_0\,
      O => \rot[7]_i_3_n_0\
    );
\rot[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rot_reg[5]_P_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[5]_C_n_0\,
      O => \rot[7]_i_4_n_0\
    );
\rot[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^q\(2),
      I1 => \rot_reg[8]_C_n_0\,
      I2 => \rot_reg[8]_LDC_n_0\,
      I3 => \rot_reg[8]_P_n_0\,
      O => \rot[7]_i_5_n_0\
    );
\rot[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E21D"
    )
        port map (
      I0 => \rot_reg[6]_C_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[6]_P_n_0\,
      I3 => \^q\(2),
      O => \rot[7]_i_6_n_0\
    );
\rot[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => \rot_reg[5]_C_n_0\,
      I1 => \rot_reg[5]_P_n_0\,
      I2 => \rot_reg[6]_C_n_0\,
      I3 => \rot_reg[8]_LDC_n_0\,
      I4 => \rot_reg[6]_P_n_0\,
      O => \rot[7]_i_7_n_0\
    );
\rot[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^q\(1),
      I1 => \rot_reg[5]_C_n_0\,
      I2 => \rot_reg[8]_LDC_n_0\,
      I3 => \rot_reg[5]_P_n_0\,
      O => \rot[7]_i_8_n_0\
    );
\rot[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => \rot_reg[5]_C_n_0\,
      I1 => \rot_reg[5]_P_n_0\,
      I2 => \rot_reg[6]_C_n_0\,
      I3 => \rot_reg[8]_LDC_n_0\,
      I4 => \rot_reg[6]_P_n_0\,
      O => \rot[7]_i_9_n_0\
    );
\rot_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => enc_a,
      CE => '1',
      CLR => \rot_reg[8]_LDC_i_2_n_0\,
      D => \rot[0]_C_i_1_n_0\,
      Q => \rot_reg[0]_C_n_0\
    );
\rot_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => enc_a,
      CE => '1',
      D => \rot[0]_C_i_1_n_0\,
      PRE => \rot_reg[8]_LDC_i_1_n_0\,
      Q => \rot_reg[0]_P_n_0\
    );
\rot_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => enc_a,
      CE => '1',
      CLR => \rot_reg[8]_LDC_i_2_n_0\,
      D => \rot_reg[4]_i_1_n_7\,
      Q => \rot_reg[1]_C_n_0\
    );
\rot_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => enc_a,
      CE => '1',
      D => \rot_reg[4]_i_1_n_7\,
      PRE => \rot_reg[8]_LDC_i_1_n_0\,
      Q => \rot_reg[1]_P_n_0\
    );
\rot_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => enc_a,
      CE => '1',
      CLR => \rot_reg[8]_LDC_i_2_n_0\,
      D => \rot_reg[4]_i_1_n_6\,
      Q => \rot_reg[2]_C_n_0\
    );
\rot_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => enc_a,
      CE => '1',
      D => \rot_reg[4]_i_1_n_6\,
      PRE => \rot_reg[8]_LDC_i_1_n_0\,
      Q => \rot_reg[2]_P_n_0\
    );
\rot_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => enc_a,
      CE => '1',
      CLR => \rot[7]_i_2_n_0\,
      D => \rot_reg[4]_i_1_n_5\,
      Q => \^q\(0)
    );
\rot_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => enc_a,
      CE => '1',
      CLR => \rot[7]_i_2_n_0\,
      D => \rot_reg[4]_i_1_n_4\,
      Q => \^q\(1)
    );
\rot_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rot_reg[4]_i_1_n_0\,
      CO(2) => \rot_reg[4]_i_1_n_1\,
      CO(1) => \rot_reg[4]_i_1_n_2\,
      CO(0) => \rot_reg[4]_i_1_n_3\,
      CYINIT => \^pulses\(0),
      DI(3) => \^q\(0),
      DI(2) => \rot[4]_i_2_n_0\,
      DI(1) => \rot[4]_i_3_n_0\,
      DI(0) => \rot[4]_i_4_n_0\,
      O(3) => \rot_reg[4]_i_1_n_4\,
      O(2) => \rot_reg[4]_i_1_n_5\,
      O(1) => \rot_reg[4]_i_1_n_6\,
      O(0) => \rot_reg[4]_i_1_n_7\,
      S(3) => \rot[4]_i_5_n_0\,
      S(2) => \rot[4]_i_6_n_0\,
      S(1) => \rot[4]_i_7_n_0\,
      S(0) => \rot[4]_i_8_n_0\
    );
\rot_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => enc_a,
      CE => '1',
      CLR => \rot_reg[8]_LDC_i_2_n_0\,
      D => \rot_reg[7]_i_1_n_7\,
      Q => \rot_reg[5]_C_n_0\
    );
\rot_reg[5]_P\: unisim.vcomponents.FDPE
     port map (
      C => enc_a,
      CE => '1',
      D => \rot_reg[7]_i_1_n_7\,
      PRE => \rot_reg[8]_LDC_i_1_n_0\,
      Q => \rot_reg[5]_P_n_0\
    );
\rot_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => enc_a,
      CE => '1',
      CLR => \rot_reg[8]_LDC_i_2_n_0\,
      D => \rot_reg[7]_i_1_n_6\,
      Q => \rot_reg[6]_C_n_0\
    );
\rot_reg[6]_P\: unisim.vcomponents.FDPE
     port map (
      C => enc_a,
      CE => '1',
      D => \rot_reg[7]_i_1_n_6\,
      PRE => \rot_reg[8]_LDC_i_1_n_0\,
      Q => \rot_reg[6]_P_n_0\
    );
\rot_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => enc_a,
      CE => '1',
      CLR => \rot[7]_i_2_n_0\,
      D => \rot_reg[7]_i_1_n_5\,
      Q => \^q\(2)
    );
\rot_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rot_reg[4]_i_1_n_0\,
      CO(3) => \NLW_rot_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \rot_reg[7]_i_1_n_1\,
      CO(1) => \rot_reg[7]_i_1_n_2\,
      CO(0) => \rot_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \rot[7]_i_3_n_0\,
      DI(1) => \rot[7]_i_4_n_0\,
      DI(0) => \^q\(1),
      O(3) => \rot_reg[7]_i_1_n_4\,
      O(2) => \rot_reg[7]_i_1_n_5\,
      O(1) => \rot_reg[7]_i_1_n_6\,
      O(0) => \rot_reg[7]_i_1_n_7\,
      S(3) => \rot[7]_i_5_n_0\,
      S(2) => \rot[7]_i_6_n_0\,
      S(1) => \rot[7]_i_7_n_0\,
      S(0) => \rot[7]_i_8_n_0\
    );
\rot_reg[8]_C\: unisim.vcomponents.FDCE
     port map (
      C => enc_a,
      CE => '1',
      CLR => \rot_reg[8]_LDC_i_2_n_0\,
      D => \rot_reg[7]_i_1_n_4\,
      Q => \rot_reg[8]_C_n_0\
    );
\rot_reg[8]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => \rot_reg[8]_LDC_i_2_n_0\,
      D => '1',
      G => \rot_reg[8]_LDC_i_1_n_0\,
      GE => '1',
      Q => \rot_reg[8]_LDC_n_0\
    );
\rot_reg[8]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC0C0C0800"
    )
        port map (
      I0 => \rot_reg[8]_LDC_i_3_n_0\,
      I1 => \^rot_reg[8]_p_0\,
      I2 => \rot[7]_i_9_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \rot_reg[8]_LDC_i_1_n_0\
    );
\rot_reg[8]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA00AA3A"
    )
        port map (
      I0 => rst,
      I1 => \rot_reg[8]_LDC_i_3_n_0\,
      I2 => \^q\(0),
      I3 => \rot_reg[8]_LDC_i_4_n_0\,
      I4 => \^q\(1),
      I5 => \rot_reg[8]_LDC_i_5_n_0\,
      O => \rot_reg[8]_LDC_i_2_n_0\
    );
\rot_reg[8]_LDC_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCFAFAFFFC"
    )
        port map (
      I0 => \rot_reg[2]_P_n_0\,
      I1 => \rot_reg[2]_C_n_0\,
      I2 => \^pulses\(1),
      I3 => \rot_reg[0]_C_n_0\,
      I4 => \rot_reg[8]_LDC_n_0\,
      I5 => \rot_reg[0]_P_n_0\,
      O => \rot_reg[8]_LDC_i_3_n_0\
    );
\rot_reg[8]_LDC_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47CF77FFFFFFFFFF"
    )
        port map (
      I0 => \rot_reg[6]_P_n_0\,
      I1 => \rot_reg[8]_LDC_n_0\,
      I2 => \rot_reg[6]_C_n_0\,
      I3 => \rot_reg[5]_P_n_0\,
      I4 => \rot_reg[5]_C_n_0\,
      I5 => \^rot_reg[8]_p_0\,
      O => \rot_reg[8]_LDC_i_4_n_0\
    );
\rot_reg[8]_LDC_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^q\(2),
      I1 => \rot_reg[8]_C_n_0\,
      I2 => \rot_reg[8]_LDC_n_0\,
      I3 => \rot_reg[8]_P_n_0\,
      O => \rot_reg[8]_LDC_i_5_n_0\
    );
\rot_reg[8]_P\: unisim.vcomponents.FDPE
     port map (
      C => enc_a,
      CE => '1',
      D => \rot_reg[7]_i_1_n_4\,
      PRE => \rot_reg[8]_LDC_i_1_n_0\,
      Q => \rot_reg[8]_P_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    enc_a : in STD_LOGIC;
    enc_b : in STD_LOGIC;
    rst : in STD_LOGIC;
    pulses : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "encoder_bd_encoder_0_0,encoder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "encoder,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_encoder
     port map (
      Q(2) => pulses(7),
      Q(1 downto 0) => pulses(4 downto 3),
      enc_a => enc_a,
      enc_b => enc_b,
      pulses(4 downto 3) => pulses(6 downto 5),
      pulses(2 downto 0) => pulses(2 downto 0),
      \rot_reg[8]_P_0\ => pulses(8),
      rst => rst
    );
end STRUCTURE;

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Apr  5 12:58:56 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pwm_generator_pwm_gen_0_0_sim_netlist.vhdl
-- Design      : pwm_generator_pwm_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_gen is
  port (
    pwm : out STD_LOGIC;
    duty : in STD_LOGIC_VECTOR ( 20 downto 0 );
    cnt : in STD_LOGIC_VECTOR ( 20 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_gen is
  signal pwm_INST_0_i_10_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_11_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_12_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_13_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_14_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_15_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_16_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_17_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_18_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_19_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_1_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_1_n_1 : STD_LOGIC;
  signal pwm_INST_0_i_1_n_2 : STD_LOGIC;
  signal pwm_INST_0_i_1_n_3 : STD_LOGIC;
  signal pwm_INST_0_i_20_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_21_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_22_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_23_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_24_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_2_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_3_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_4_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_5_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_6_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_7_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_8_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_8_n_1 : STD_LOGIC;
  signal pwm_INST_0_i_8_n_2 : STD_LOGIC;
  signal pwm_INST_0_i_8_n_3 : STD_LOGIC;
  signal pwm_INST_0_i_9_n_0 : STD_LOGIC;
  signal pwm_INST_0_n_2 : STD_LOGIC;
  signal pwm_INST_0_n_3 : STD_LOGIC;
  signal NLW_pwm_INST_0_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pwm_INST_0_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pwm_INST_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pwm_INST_0_i_8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of pwm_INST_0 : label is 11;
  attribute COMPARATOR_THRESHOLD of pwm_INST_0_i_1 : label is 11;
  attribute COMPARATOR_THRESHOLD of pwm_INST_0_i_8 : label is 11;
begin
pwm_INST_0: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_INST_0_i_1_n_0,
      CO(3) => NLW_pwm_INST_0_CO_UNCONNECTED(3),
      CO(2) => pwm,
      CO(1) => pwm_INST_0_n_2,
      CO(0) => pwm_INST_0_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => pwm_INST_0_i_2_n_0,
      DI(1) => pwm_INST_0_i_3_n_0,
      DI(0) => pwm_INST_0_i_4_n_0,
      O(3 downto 0) => NLW_pwm_INST_0_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => pwm_INST_0_i_5_n_0,
      S(1) => pwm_INST_0_i_6_n_0,
      S(0) => pwm_INST_0_i_7_n_0
    );
pwm_INST_0_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_INST_0_i_8_n_0,
      CO(3) => pwm_INST_0_i_1_n_0,
      CO(2) => pwm_INST_0_i_1_n_1,
      CO(1) => pwm_INST_0_i_1_n_2,
      CO(0) => pwm_INST_0_i_1_n_3,
      CYINIT => '0',
      DI(3) => pwm_INST_0_i_9_n_0,
      DI(2) => pwm_INST_0_i_10_n_0,
      DI(1) => pwm_INST_0_i_11_n_0,
      DI(0) => pwm_INST_0_i_12_n_0,
      O(3 downto 0) => NLW_pwm_INST_0_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_INST_0_i_13_n_0,
      S(2) => pwm_INST_0_i_14_n_0,
      S(1) => pwm_INST_0_i_15_n_0,
      S(0) => pwm_INST_0_i_16_n_0
    );
pwm_INST_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(12),
      I1 => cnt(12),
      I2 => cnt(13),
      I3 => duty(13),
      O => pwm_INST_0_i_10_n_0
    );
pwm_INST_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(10),
      I1 => cnt(10),
      I2 => cnt(11),
      I3 => duty(11),
      O => pwm_INST_0_i_11_n_0
    );
pwm_INST_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(8),
      I1 => cnt(8),
      I2 => cnt(9),
      I3 => duty(9),
      O => pwm_INST_0_i_12_n_0
    );
pwm_INST_0_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(14),
      I1 => cnt(14),
      I2 => duty(15),
      I3 => cnt(15),
      O => pwm_INST_0_i_13_n_0
    );
pwm_INST_0_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(12),
      I1 => cnt(12),
      I2 => duty(13),
      I3 => cnt(13),
      O => pwm_INST_0_i_14_n_0
    );
pwm_INST_0_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(10),
      I1 => cnt(10),
      I2 => duty(11),
      I3 => cnt(11),
      O => pwm_INST_0_i_15_n_0
    );
pwm_INST_0_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(8),
      I1 => cnt(8),
      I2 => duty(9),
      I3 => cnt(9),
      O => pwm_INST_0_i_16_n_0
    );
pwm_INST_0_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(6),
      I1 => cnt(6),
      I2 => cnt(7),
      I3 => duty(7),
      O => pwm_INST_0_i_17_n_0
    );
pwm_INST_0_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(4),
      I1 => cnt(4),
      I2 => cnt(5),
      I3 => duty(5),
      O => pwm_INST_0_i_18_n_0
    );
pwm_INST_0_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(2),
      I1 => cnt(2),
      I2 => cnt(3),
      I3 => duty(3),
      O => pwm_INST_0_i_19_n_0
    );
pwm_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => duty(20),
      I1 => cnt(20),
      O => pwm_INST_0_i_2_n_0
    );
pwm_INST_0_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(0),
      I1 => cnt(0),
      I2 => cnt(1),
      I3 => duty(1),
      O => pwm_INST_0_i_20_n_0
    );
pwm_INST_0_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(6),
      I1 => cnt(6),
      I2 => duty(7),
      I3 => cnt(7),
      O => pwm_INST_0_i_21_n_0
    );
pwm_INST_0_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(4),
      I1 => cnt(4),
      I2 => duty(5),
      I3 => cnt(5),
      O => pwm_INST_0_i_22_n_0
    );
pwm_INST_0_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(2),
      I1 => cnt(2),
      I2 => duty(3),
      I3 => cnt(3),
      O => pwm_INST_0_i_23_n_0
    );
pwm_INST_0_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(0),
      I1 => cnt(0),
      I2 => duty(1),
      I3 => cnt(1),
      O => pwm_INST_0_i_24_n_0
    );
pwm_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(18),
      I1 => cnt(18),
      I2 => cnt(19),
      I3 => duty(19),
      O => pwm_INST_0_i_3_n_0
    );
pwm_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(16),
      I1 => cnt(16),
      I2 => cnt(17),
      I3 => duty(17),
      O => pwm_INST_0_i_4_n_0
    );
pwm_INST_0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cnt(20),
      I1 => duty(20),
      O => pwm_INST_0_i_5_n_0
    );
pwm_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(18),
      I1 => cnt(18),
      I2 => duty(19),
      I3 => cnt(19),
      O => pwm_INST_0_i_6_n_0
    );
pwm_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(16),
      I1 => cnt(16),
      I2 => duty(17),
      I3 => cnt(17),
      O => pwm_INST_0_i_7_n_0
    );
pwm_INST_0_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_INST_0_i_8_n_0,
      CO(2) => pwm_INST_0_i_8_n_1,
      CO(1) => pwm_INST_0_i_8_n_2,
      CO(0) => pwm_INST_0_i_8_n_3,
      CYINIT => '0',
      DI(3) => pwm_INST_0_i_17_n_0,
      DI(2) => pwm_INST_0_i_18_n_0,
      DI(1) => pwm_INST_0_i_19_n_0,
      DI(0) => pwm_INST_0_i_20_n_0,
      O(3 downto 0) => NLW_pwm_INST_0_i_8_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_INST_0_i_21_n_0,
      S(2) => pwm_INST_0_i_22_n_0,
      S(1) => pwm_INST_0_i_23_n_0,
      S(0) => pwm_INST_0_i_24_n_0
    );
pwm_INST_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(14),
      I1 => cnt(14),
      I2 => cnt(15),
      I3 => duty(15),
      O => pwm_INST_0_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    cnt : in STD_LOGIC_VECTOR ( 20 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 20 downto 0 );
    pwm : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pwm_generator_pwm_gen_0_0,pwm_gen,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pwm_gen,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_gen
     port map (
      cnt(20 downto 0) => cnt(20 downto 0),
      duty(20 downto 0) => duty(20 downto 0),
      pwm => pwm
    );
end STRUCTURE;

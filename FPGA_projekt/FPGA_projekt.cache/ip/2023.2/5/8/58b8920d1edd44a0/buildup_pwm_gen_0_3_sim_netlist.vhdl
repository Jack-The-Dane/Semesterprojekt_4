-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue May 14 09:50:25 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ buildup_pwm_gen_0_3_sim_netlist.vhdl
-- Design      : buildup_pwm_gen_0_3
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
    duty : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cnt : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_gen is
  signal pwm_INST_0_i_1_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_2_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_3_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_4_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_5_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_6_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_7_n_0 : STD_LOGIC;
  signal pwm_INST_0_i_8_n_0 : STD_LOGIC;
  signal pwm_INST_0_n_1 : STD_LOGIC;
  signal pwm_INST_0_n_2 : STD_LOGIC;
  signal pwm_INST_0_n_3 : STD_LOGIC;
  signal NLW_pwm_INST_0_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of pwm_INST_0 : label is 11;
begin
pwm_INST_0: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm,
      CO(2) => pwm_INST_0_n_1,
      CO(1) => pwm_INST_0_n_2,
      CO(0) => pwm_INST_0_n_3,
      CYINIT => '0',
      DI(3) => pwm_INST_0_i_1_n_0,
      DI(2) => pwm_INST_0_i_2_n_0,
      DI(1) => pwm_INST_0_i_3_n_0,
      DI(0) => pwm_INST_0_i_4_n_0,
      O(3 downto 0) => NLW_pwm_INST_0_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_INST_0_i_5_n_0,
      S(2) => pwm_INST_0_i_6_n_0,
      S(1) => pwm_INST_0_i_7_n_0,
      S(0) => pwm_INST_0_i_8_n_0
    );
pwm_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(6),
      I1 => cnt(6),
      I2 => cnt(7),
      I3 => duty(7),
      O => pwm_INST_0_i_1_n_0
    );
pwm_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(4),
      I1 => cnt(4),
      I2 => cnt(5),
      I3 => duty(5),
      O => pwm_INST_0_i_2_n_0
    );
pwm_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(2),
      I1 => cnt(2),
      I2 => cnt(3),
      I3 => duty(3),
      O => pwm_INST_0_i_3_n_0
    );
pwm_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(0),
      I1 => cnt(0),
      I2 => cnt(1),
      I3 => duty(1),
      O => pwm_INST_0_i_4_n_0
    );
pwm_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(6),
      I1 => cnt(6),
      I2 => duty(7),
      I3 => cnt(7),
      O => pwm_INST_0_i_5_n_0
    );
pwm_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(4),
      I1 => cnt(4),
      I2 => duty(5),
      I3 => cnt(5),
      O => pwm_INST_0_i_6_n_0
    );
pwm_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(2),
      I1 => cnt(2),
      I2 => duty(3),
      I3 => cnt(3),
      O => pwm_INST_0_i_7_n_0
    );
pwm_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty(0),
      I1 => cnt(0),
      I2 => duty(1),
      I3 => cnt(1),
      O => pwm_INST_0_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    cnt : in STD_LOGIC_VECTOR ( 7 downto 0 );
    duty : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "buildup_pwm_gen_0_3,pwm_gen,{}";
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
      cnt(7 downto 0) => cnt(7 downto 0),
      duty(7 downto 0) => duty(7 downto 0),
      pwm => pwm
    );
end STRUCTURE;

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue Apr  9 13:32:33 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SPI_latch_0_0_sim_netlist.vhdl
-- Design      : SPI_latch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_latch is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cnt : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_latch;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_latch is
  signal \data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_1_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \data_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \data_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[10]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \data_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[11]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \data_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[12]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \data_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[13]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \data_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[14]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \data_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[15]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \data_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \data_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \data_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \data_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[4]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \data_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[5]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \data_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[6]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \data_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[7]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \data_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[8]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \data_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \data_reg[9]_i_1\ : label is "soft_lutpair4";
begin
\data_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[0]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(0)
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(0),
      O => \data_reg[0]_i_1_n_0\
    );
\data_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[10]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(10)
    );
\data_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(10),
      O => \data_reg[10]_i_1_n_0\
    );
\data_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[11]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(11)
    );
\data_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(11),
      O => \data_reg[11]_i_1_n_0\
    );
\data_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[12]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(12)
    );
\data_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(12),
      O => \data_reg[12]_i_1_n_0\
    );
\data_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[13]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(13)
    );
\data_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(13),
      O => \data_reg[13]_i_1_n_0\
    );
\data_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[14]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(14)
    );
\data_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(14),
      O => \data_reg[14]_i_1_n_0\
    );
\data_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[15]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(15)
    );
\data_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(15),
      O => \data_reg[15]_i_1_n_0\
    );
\data_reg[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt,
      I1 => rst,
      O => \data_reg[15]_i_2_n_0\
    );
\data_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[1]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(1)
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(1),
      O => \data_reg[1]_i_1_n_0\
    );
\data_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[2]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(2)
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(2),
      O => \data_reg[2]_i_1_n_0\
    );
\data_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[3]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(3)
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(3),
      O => \data_reg[3]_i_1_n_0\
    );
\data_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[4]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(4)
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(4),
      O => \data_reg[4]_i_1_n_0\
    );
\data_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[5]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(5)
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(5),
      O => \data_reg[5]_i_1_n_0\
    );
\data_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[6]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(6)
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(6),
      O => \data_reg[6]_i_1_n_0\
    );
\data_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[7]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(7)
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(7),
      O => \data_reg[7]_i_1_n_0\
    );
\data_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[8]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(8)
    );
\data_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(8),
      O => \data_reg[8]_i_1_n_0\
    );
\data_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \data_reg[9]_i_1_n_0\,
      G => \data_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q(9)
    );
\data_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt,
      I1 => D(9),
      O => \data_reg[9]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    rst : in STD_LOGIC;
    cnt : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SPI_latch_0_0,latch,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "latch,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_latch
     port map (
      D(15 downto 0) => D(15 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      cnt => cnt,
      rst => rst
    );
end STRUCTURE;

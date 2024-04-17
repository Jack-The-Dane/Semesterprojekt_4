-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Apr  5 23:05:23 2024
-- Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top buildup_block_encoder_0_0 -prefix
--               buildup_block_encoder_0_0_ encoder_test_block_encoder_0_0_sim_netlist.vhdl
-- Design      : encoder_test_block_encoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_block_encoder_0_0_edge_detector is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    encoder_b : in STD_LOGIC;
    clk : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    AND_gate_0_C : in STD_LOGIC;
    enable : in STD_LOGIC
  );
end buildup_block_encoder_0_0_edge_detector;

architecture STRUCTURE of buildup_block_encoder_0_0_edge_detector is
  signal latch_1 : STD_LOGIC;
  signal latch_2 : STD_LOGIC;
begin
\int_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF020000"
    )
        port map (
      I0 => latch_1,
      I1 => latch_2,
      I2 => encoder_a,
      I3 => AND_gate_0_C,
      I4 => enable,
      O => E(0)
    );
latch_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => encoder_b,
      Q => latch_1,
      R => '0'
    );
latch_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latch_1,
      Q => latch_2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_block_encoder_0_0_edge_detector_0 is
  port (
    latch_1 : out STD_LOGIC;
    latch_2 : out STD_LOGIC;
    AND_gate_0_C : out STD_LOGIC;
    encoder_a : in STD_LOGIC;
    clk : in STD_LOGIC;
    encoder_b : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buildup_block_encoder_0_0_edge_detector_0 : entity is "edge_detector";
end buildup_block_encoder_0_0_edge_detector_0;

architecture STRUCTURE of buildup_block_encoder_0_0_edge_detector_0 is
  signal \^latch_1\ : STD_LOGIC;
  signal \^latch_2\ : STD_LOGIC;
begin
  latch_1 <= \^latch_1\;
  latch_2 <= \^latch_2\;
\int_cnt[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^latch_2\,
      I1 => \^latch_1\,
      I2 => encoder_b,
      O => AND_gate_0_C
    );
latch_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => encoder_a,
      Q => \^latch_1\,
      R => '0'
    );
latch_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^latch_1\,
      Q => \^latch_2\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_block_encoder_0_0_up_down_counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    encoder_b : in STD_LOGIC;
    latch_1 : in STD_LOGIC;
    latch_2 : in STD_LOGIC;
    AND_gate_0_C : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end buildup_block_encoder_0_0_up_down_counter;

architecture STRUCTURE of buildup_block_encoder_0_0_up_down_counter is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \int_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \int_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \int_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \int_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \int_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \int_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \int_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \int_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \int_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \int_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \int_cnt[8]_i_6_n_0\ : STD_LOGIC;
  signal \int_cnt[8]_i_7_n_0\ : STD_LOGIC;
  signal \int_cnt[8]_i_8_n_0\ : STD_LOGIC;
  signal \int_cnt[8]_i_9_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \int_cnt[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_cnt[4]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_cnt[5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \int_cnt[5]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \int_cnt[8]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_cnt[8]_i_7\ : label is "soft_lutpair2";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\int_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFAAAAFFEF"
    )
        port map (
      I0 => \int_cnt[8]_i_6_n_0\,
      I1 => encoder_b,
      I2 => latch_1,
      I3 => latch_2,
      I4 => \^q\(0),
      I5 => \int_cnt[0]_i_2_n_0\,
      O => p_0_in(0)
    );
\int_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \int_cnt[8]_i_8_n_0\,
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
      I0 => \int_cnt[8]_i_4_n_0\,
      I1 => \int_cnt[8]_i_6_n_0\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => AND_gate_0_C,
      O => p_0_in(1)
    );
\int_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEECECECFEFCFCEF"
    )
        port map (
      I0 => \int_cnt[8]_i_4_n_0\,
      I1 => \int_cnt[8]_i_6_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => AND_gate_0_C,
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
      I5 => \int_cnt[8]_i_4_n_0\,
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
      I3 => \int_cnt[8]_i_4_n_0\,
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
      I0 => \int_cnt[8]_i_4_n_0\,
      I1 => \int_cnt[5]_i_2_n_0\,
      I2 => \int_cnt[8]_i_6_n_0\,
      I3 => \^q\(5),
      I4 => \int_cnt[5]_i_3_n_0\,
      I5 => AND_gate_0_C,
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
      INIT => X"F8F2FFF2F8F2F8FF"
    )
        port map (
      I0 => \int_cnt[8]_i_4_n_0\,
      I1 => \int_cnt[7]_i_4_n_0\,
      I2 => \int_cnt[8]_i_6_n_0\,
      I3 => \^q\(6),
      I4 => AND_gate_0_C,
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
      I4 => \int_cnt[8]_i_4_n_0\,
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
      I4 => \int_cnt[8]_i_9_n_0\,
      I5 => AND_gate_0_C,
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
\int_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F2FFF2F8F2F8FF"
    )
        port map (
      I0 => \int_cnt[8]_i_4_n_0\,
      I1 => \int_cnt[8]_i_5_n_0\,
      I2 => \int_cnt[8]_i_6_n_0\,
      I3 => \^q\(8),
      I4 => AND_gate_0_C,
      I5 => \int_cnt[8]_i_7_n_0\,
      O => p_0_in(8)
    );
\int_cnt[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(8),
      I3 => \^q\(2),
      I4 => \int_cnt[8]_i_8_n_0\,
      I5 => AND_gate_0_C,
      O => \int_cnt[8]_i_4_n_0\
    );
\int_cnt[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \int_cnt[7]_i_4_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      O => \int_cnt[8]_i_5_n_0\
    );
\int_cnt[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \int_cnt[8]_i_9_n_0\,
      I5 => AND_gate_0_C,
      O => \int_cnt[8]_i_6_n_0\
    );
\int_cnt[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(6),
      I1 => \int_cnt[7]_i_3_n_0\,
      I2 => \^q\(7),
      O => \int_cnt[8]_i_7_n_0\
    );
\int_cnt[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(7),
      O => \int_cnt[8]_i_8_n_0\
    );
\int_cnt[8]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \^q\(8),
      I4 => \^q\(7),
      O => \int_cnt[8]_i_9_n_0\
    );
\int_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
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
      CE => E(0),
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
      CE => E(0),
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
      CE => E(0),
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
      CE => E(0),
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
      CE => E(0),
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
      CE => E(0),
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
      CE => E(0),
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
      CE => E(0),
      CLR => rst,
      D => p_0_in(8),
      Q => \^q\(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_block_encoder_0_0_block_encoder_edge_detector_0_0 is
  port (
    latch_1 : out STD_LOGIC;
    latch_2 : out STD_LOGIC;
    AND_gate_0_C : out STD_LOGIC;
    encoder_a : in STD_LOGIC;
    clk : in STD_LOGIC;
    encoder_b : in STD_LOGIC
  );
end buildup_block_encoder_0_0_block_encoder_edge_detector_0_0;

architecture STRUCTURE of buildup_block_encoder_0_0_block_encoder_edge_detector_0_0 is
begin
U0: entity work.buildup_block_encoder_0_0_edge_detector_0
     port map (
      AND_gate_0_C => AND_gate_0_C,
      clk => clk,
      encoder_a => encoder_a,
      encoder_b => encoder_b,
      latch_1 => latch_1,
      latch_2 => latch_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_block_encoder_0_0_block_encoder_edge_detector_0_1 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    encoder_b : in STD_LOGIC;
    clk : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    AND_gate_0_C : in STD_LOGIC;
    enable : in STD_LOGIC
  );
end buildup_block_encoder_0_0_block_encoder_edge_detector_0_1;

architecture STRUCTURE of buildup_block_encoder_0_0_block_encoder_edge_detector_0_1 is
begin
U0: entity work.buildup_block_encoder_0_0_edge_detector
     port map (
      AND_gate_0_C => AND_gate_0_C,
      E(0) => E(0),
      clk => clk,
      enable => enable,
      encoder_a => encoder_a,
      encoder_b => encoder_b
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_block_encoder_0_0_block_encoder_up_down_counter_0_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    encoder_b : in STD_LOGIC;
    latch_1 : in STD_LOGIC;
    latch_2 : in STD_LOGIC;
    AND_gate_0_C : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end buildup_block_encoder_0_0_block_encoder_up_down_counter_0_0;

architecture STRUCTURE of buildup_block_encoder_0_0_block_encoder_up_down_counter_0_0 is
begin
U0: entity work.buildup_block_encoder_0_0_up_down_counter
     port map (
      AND_gate_0_C => AND_gate_0_C,
      E(0) => E(0),
      Q(8 downto 0) => Q(8 downto 0),
      clk => clk,
      encoder_b => encoder_b,
      latch_1 => latch_1,
      latch_2 => latch_2,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_block_encoder_0_0_block_encoder is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    pulse_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rst : in STD_LOGIC
  );
  attribute hw_handoff : string;
  attribute hw_handoff of buildup_block_encoder_0_0_block_encoder : entity is "block_encoder.hwdef";
end buildup_block_encoder_0_0_block_encoder;

architecture STRUCTURE of buildup_block_encoder_0_0_block_encoder is
  signal AND_gate_0_C : STD_LOGIC;
  signal \U0/latch_1\ : STD_LOGIC;
  signal \U0/latch_2\ : STD_LOGIC;
  signal edge_detector_b_n_0 : STD_LOGIC;
  attribute x_core_info : string;
  attribute x_core_info of edge_detector_a : label is "edge_detector,Vivado 2023.2";
  attribute x_core_info of edge_detector_b : label is "edge_detector,Vivado 2023.2";
  attribute x_core_info of up_down_counter_0 : label is "up_down_counter,Vivado 2023.2";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
edge_detector_a: entity work.buildup_block_encoder_0_0_block_encoder_edge_detector_0_0
     port map (
      AND_gate_0_C => AND_gate_0_C,
      clk => clk,
      encoder_a => encoder_a,
      encoder_b => encoder_b,
      latch_1 => \U0/latch_1\,
      latch_2 => \U0/latch_2\
    );
edge_detector_b: entity work.buildup_block_encoder_0_0_block_encoder_edge_detector_0_1
     port map (
      AND_gate_0_C => AND_gate_0_C,
      E(0) => edge_detector_b_n_0,
      clk => clk,
      enable => enable,
      encoder_a => encoder_a,
      encoder_b => encoder_b
    );
up_down_counter_0: entity work.buildup_block_encoder_0_0_block_encoder_up_down_counter_0_0
     port map (
      AND_gate_0_C => AND_gate_0_C,
      E(0) => edge_detector_b_n_0,
      Q(8 downto 0) => pulse_cnt(8 downto 0),
      clk => clk,
      encoder_b => encoder_b,
      latch_1 => \U0/latch_1\,
      latch_2 => \U0/latch_2\,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buildup_block_encoder_0_0 is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    pulse_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of buildup_block_encoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of buildup_block_encoder_0_0 : entity is "encoder_test_block_encoder_0_0,block_encoder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of buildup_block_encoder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of buildup_block_encoder_0_0 : entity is "IPI";
  attribute x_core_info : string;
  attribute x_core_info of buildup_block_encoder_0_0 : entity is "block_encoder,Vivado 2023.2";
end buildup_block_encoder_0_0;

architecture STRUCTURE of buildup_block_encoder_0_0 is
  attribute hw_handoff : string;
  attribute hw_handoff of U0 : label is "block_encoder.hwdef";
begin
U0: entity work.buildup_block_encoder_0_0_block_encoder
     port map (
      clk => clk,
      enable => enable,
      encoder_a => encoder_a,
      encoder_b => encoder_b,
      pulse_cnt(8 downto 0) => pulse_cnt(8 downto 0),
      rst => rst
    );
end STRUCTURE;

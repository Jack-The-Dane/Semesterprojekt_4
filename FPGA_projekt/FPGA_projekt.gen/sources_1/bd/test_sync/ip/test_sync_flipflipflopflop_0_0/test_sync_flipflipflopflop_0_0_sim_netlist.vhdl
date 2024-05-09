-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue May  7 15:24:33 2024
-- Host        : Cornelia running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/Corne/Documents/MEGA/4.
--               Semester/Semesterprojekt/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/test_sync/ip/test_sync_flipflipflopflop_0_0/test_sync_flipflipflopflop_0_0_sim_netlist.vhdl}
-- Design      : test_sync_flipflipflopflop_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_sync_flipflipflopflop_0_0_flipflipflopflop is
  port (
    Q : out STD_LOGIC;
    D : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of test_sync_flipflipflopflop_0_0_flipflipflopflop : entity is "flipflipflopflop";
end test_sync_flipflipflopflop_0_0_flipflipflopflop;

architecture STRUCTURE of test_sync_flipflipflopflop_0_0_flipflipflopflop is
  signal D_temp : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of D_temp : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of D_temp_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of D_temp_reg : label is "yes";
begin
D_temp_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D,
      Q => D_temp,
      R => '0'
    );
Q_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D_temp,
      Q => Q,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_sync_flipflipflopflop_0_0 is
  port (
    D : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of test_sync_flipflipflopflop_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of test_sync_flipflipflopflop_0_0 : entity is "test_sync_flipflipflopflop_0_0,flipflipflopflop,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of test_sync_flipflipflopflop_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of test_sync_flipflipflopflop_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of test_sync_flipflipflopflop_0_0 : entity is "flipflipflopflop,Vivado 2023.2";
end test_sync_flipflipflopflop_0_0;

architecture STRUCTURE of test_sync_flipflipflopflop_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN test_sync_clk_0, INSERT_VIP 0";
begin
U0: entity work.test_sync_flipflipflopflop_0_0_flipflipflopflop
     port map (
      D => D,
      Q => Q,
      clk => clk
    );
end STRUCTURE;
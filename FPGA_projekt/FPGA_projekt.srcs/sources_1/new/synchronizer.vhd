----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/08/2024 09:43:08 AM
-- Design Name: 
-- Module Name: synchronizer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity synchronizer is
    generic(n_flipflops : positive := 2);
    Port ( clk : in STD_LOGIC;
           D : in STD_LOGIC;
           Q : out STD_LOGIC);
end synchronizer;

architecture rtl of synchronizer is

signal flipflop_reg : std_logic_vector(n_flipflops-1 downto 0) := (others => '0');

attribute ASYNC_REG : string;
attribute ASYNC_REG of flipflop_reg: signal is "TRUE";

begin
process(clk)
begin
if(rising_edge(clk)) then
    flipflop_reg <= flipflop_reg(flipflop_reg'HIGH-1 downto 0) & D;
    Q <= flipflop_reg(flipflop_reg'HIGH);
else 
    flipflop_reg <= flipflop_reg;
end if;
end process;

end rtl;

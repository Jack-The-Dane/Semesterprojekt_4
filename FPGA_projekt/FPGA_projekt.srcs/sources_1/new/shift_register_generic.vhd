----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2024 12:51:18 PM
-- Design Name: 
-- Module Name: shift_register_generic - Behavioral
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

entity shift_register_generic is
    generic(register_length : positive := 8);
    Port ( clk : in STD_LOGIC := '0';
           data : in STD_LOGIC := '0';
           register_out : out std_logic_vector(register_length-1 downto 0);
           carry_out : out std_logic := '0');
end shift_register_generic;

architecture Behavioral of shift_register_generic is
signal register_data : std_logic_vector(register_length-1 downto 0) := (others => '0');
begin
process(clk)
begin
if(rising_edge(clk)) then
    register_data <= register_data(register_length-2 downto 0) & data;
    carry_out <= register_data(register_length-1);
end if;
end process;
register_out <= register_data;
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2024 08:47:00
-- Design Name: 
-- Module Name: test1 - Behavioral
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

entity pwm_gen is
    generic( n_bits : positive := 16);
    Port ( cnt : in std_logic_vector(n_bits-1 downto 0) := (others => '0');
           duty : in std_logic_vector(n_bits-1 downto 0) := (others => '0');
           pwm : out STD_LOGIC
           );
end pwm_gen;

architecture Behavioral of pwm_gen is

begin
     process(cnt, duty) begin
    if(unsigned(cnt) < unsigned(duty)) then
        pwm <= '1';
    else
     pwm <= '0';
    end if;
    end process;

end Behavioral;

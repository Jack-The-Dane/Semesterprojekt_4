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
    Port ( cnt : in std_logic_vector(15 downto 0) := (others => '0');
           duty : in std_logic_vector(15 downto 0) := (others => '0');
           pwm : out STD_LOGIC
           );
end pwm_gen;

architecture Behavioral of pwm_gen is

begin
     
    pwm <= '1' when unsigned(cnt) < unsigned(duty) else '0';


end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity pwm_gen is
    generic( N : positive := 16);
    Port ( cnt : in std_logic_vector(N-1 downto 0) := (others => '0');
           duty : in std_logic_vector(N-1 downto 0) := (others => '0');
           pwm : out STD_LOGIC
           );
end pwm_gen;

architecture Behavioral of pwm_gen is

begin
    pwm <= '1' when unsigned(cnt) < unsigned(duty) else '0';


end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2024 01:58:14 PM
-- Design Name: 
-- Module Name: encoder_sampling - Behavioral
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

entity encoder_sampling is
    Port ( clk : in STD_LOGIC := '0';
           rst : in STD_LOGIC := '0';
           enc_a : in STD_LOGIC := '0';
           enc_b : in STD_LOGIC := '0';
           pulse_cnt : out std_logic_vector(8 downto 0));
end encoder_sampling;

architecture Behavioral of encoder_sampling is
signal enc_a_old : STD_LOGIC := '0';
signal enc_b_old : STD_LOGIC := '0';
signal rising_a : STD_LOGIC := '0';
signal rising_b : STD_LOGIC := '0';
signal cnt : unsigned(8 downto 0) := (others => '0');
begin
process(rst, clk)
begin

if(rst = '1') then
    cnt <= "111011100";
end if;

if(rising_edge(clk)) then
    if(enc_a_old = '0' and enc_a = '1') then
        rising_a <= '1';
    elsif(enc_b_old = '0' and enc_b = '1') then
        rising_b <= '1';
    else
        rising_b <= '0';
        rising_a <= '0';
    end if;
    
end if;
if(rising_a = '1' and enc_b = '0') then
    cnt <= cnt + 1;
end if;

if(rising_b = '1' and enc_a = '0') then
    cnt <= cnt - 1;
end if;

enc_a_old <= enc_a;
enc_b_old <= enc_b;
end process;
    

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2024 12:53:12
-- Design Name: 
-- Module Name: encoder - Behavioral
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

-- Uncomment the +following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncommen+t the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity encoder is
    Port ( enc_a : in STD_LOGIC;
           enc_b : in STD_LOGIC;
           rst : in STD_LOGIC;
           pulses : out std_logic_vector(8 downto 0));
end encoder;

architecture Behavioral of encoder is

signal rot: unsigned(8 downto 0) := "111110111";

begin
    process(enc_a, rst)
    begin
        if(rising_edge(enc_a)) then
            if(enc_b = '0') then
                rot <= rot + 1;
            else rot <= rot - 1;
            end if;
        end if;
        if(rst = '1') then
            rot <= (others => '0');
        end if;
        if(rot = 360) then
            rot <= (others => '0');
        elsif(rot > 360) then
            rot <= "101100111"; -- 359 in binary
        end if;
     end process;
     
     pulses <= std_logic_vector(rot);

end Behavioral;

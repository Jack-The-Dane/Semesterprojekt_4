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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity encoder is
    Port ( btn_0 : in STD_LOGIC;
           btn_1 : in STD_LOGIC;
           led : out std_logic_vector(3 downto 0));
end encoder;

architecture Behavioral of encoder is

signal count: unsigned(3 downto 0) := (others => '0');

begin
    process(btn_0, btn_1)
    begin
    
        if(falling_edge(btn_0)) then
            if(btn_1 = '0') then
                count <= count + 1;
            end if;
        end if;
        if(falling_edge (btn_1)) then
            if(btn_0 = '0') then
                count <= count - 1;
            end if;
        end if;
        
     end process;
     
     led <= std_logic_vector(count);

end Behavioral;

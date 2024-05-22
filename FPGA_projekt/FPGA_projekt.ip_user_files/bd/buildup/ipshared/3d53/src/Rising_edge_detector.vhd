----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/08/2024 10:19:25 AM
-- Design Name: 
-- Module Name: Rising_edge_detector - rtl
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Rising_edge_detector is
    Port ( clk : in STD_LOGIC;
           D : in STD_LOGIC;
           Q : out STD_LOGIC);
end Rising_edge_detector;

architecture rtl of Rising_edge_detector is
signal FF1 : std_logic := '0';
signal FF2 : std_logic := '0';

begin
process(clk)
begin 
if(rising_edge(clk)) then
    FF1 <= D;
    FF2 <= FF1;
end if;
end process;

Q <= FF1 and (not(FF2));

end rtl;

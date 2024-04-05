----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2024 06:52:34 PM
-- Design Name: 
-- Module Name: edge_detector - Behavioral
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

entity edge_detector is
    Port (clk      :in std_logic;
          d        :in std_logic;
          result     :out std_logic);
end edge_detector;

architecture Behavioral of edge_detector is
signal latch_1 : std_logic;
signal latch_2 : std_logic;
begin
process(clk)
begin
if(rising_edge(clk)) then
    latch_1 <= d;
    latch_2 <= latch_1;
end if;

end process;

result<= latch_1 and (not latch_2);

end Behavioral;

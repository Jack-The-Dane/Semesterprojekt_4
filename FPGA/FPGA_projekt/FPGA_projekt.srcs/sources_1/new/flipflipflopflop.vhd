----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2024 15:11:16
-- Design Name: 
-- Module Name: flipflipflopflop - Behavioral
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

entity flipflipflopflop is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out STD_LOGIC);
end flipflipflopflop;

architecture Behavioral of flipflipflopflop is
signal D_temp : std_logic;

attribute ASYNC_REG : string;
  attribute ASYNC_REG of D_temp : signal is "TRUE";


begin
    process(clk)
    begin
    if(rising_edge(clk)) then
        D_temp <= D;
        Q <= D_temp;
    end if;
    
    end process;


end Behavioral;

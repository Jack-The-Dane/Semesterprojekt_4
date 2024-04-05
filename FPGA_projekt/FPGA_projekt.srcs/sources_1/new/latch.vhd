----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.04.2024 11:09:52
-- Design Name: 
-- Module Name: latch - Behavioral
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

entity latch is
    generic( data_length : positive := 16);
    Port ( clk : in STD_LOGIC;
           rst : in std_logic; 
           en : in std_logic; 
           D : in std_logic_vector(data_length - 1 downto 0);
           Q : out std_logic_vector(data_length - 1 downto 0)
           );
end latch;

architecture Behavioral of latch is
    signal cnt_temp : unsigned(5 downto 0) := (others => '0');
    signal data : std_logic_vector(data_length -1 downto 0);

begin
    process(clk, en, rst)
    begin
        if(rst = '1') then
            cnt_temp <= (others => '0');
            data <= (others => '0');
        end if;
        if(en = '0') then
            if(rising_edge (clk)) then
                cnt_temp <= cnt_temp + 1;
                if(cnt_temp = 16) then
                    data <= D;
                    cnt_temp <= (others => '0');
                end if;
            end if;
        else
            cnt_temp <= (others => '0');
        end if;
        
        end process;
        
        Q <= data;


end Behavioral;

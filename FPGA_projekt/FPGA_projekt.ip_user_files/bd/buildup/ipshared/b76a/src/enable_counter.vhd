----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.04.2024 13:51:36
-- Design Name: 
-- Module Name: enable_counter - Behavioral
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

entity enable_counter is
    generic( data_length : positive := 16);
    Port ( en : in STD_LOGIC;
           rst : in STD_LOGIC;
           sample : in STD_LOGIC;
           cnt : out STD_LOGIC);
end enable_counter;

architecture Behavioral of enable_counter is
signal cnt_temp : unsigned(5 downto 0) := "000000";
signal out_temp : std_logic := '0';

begin
    process(en, rst, sample)
    begin
        if(rst = '1') then
            cnt_temp <= (others => '0');
        elsif(rising_edge(sample)) then
            if(en = '1') then
                cnt_temp <= cnt_temp + 1;
                if(cnt_temp = data_length - 1) then
                    out_temp <= '1';
                    cnt_temp <= (others => '0');
                else
                    out_temp <= '0';
                end if;
            end if;
        end if;
    end process;
    
    cnt <= out_temp;


end Behavioral;

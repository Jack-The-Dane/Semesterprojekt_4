----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2024 07:15:44 PM
-- Design Name: 
-- Module Name: up_down_counter - Behavioral
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

entity up_down_counter is
generic( n_bits : positive := 11;
         max_val_binary : unsigned := "101101000"); -- 1151 in hex
    Port ( clk : in STD_LOGIC;
           up : in STD_LOGIC;
           down : in STD_LOGIC;
           rst : in std_logic;
           en : in std_logic;
           cnt : out std_logic_vector(n_bits-1 downto 0));
end up_down_counter;

architecture Behavioral of up_down_counter is
signal int_cnt : unsigned(n_bits-1 downto 0) := (others => '0');
begin
process(rst, clk)
begin
if(rst = '1') then
    int_cnt <= (others => '0');
elsif(rising_edge(clk)) then
    if(en = '1') then
        if(up = '1') then
            if(int_cnt = max_val_binary) then
                int_cnt <= (others => '0');
            else
                int_cnt <= int_cnt + 1;
            end if;
        elsif(down = '1') then
            if(int_cnt = 0) then
                int_cnt <= max_val_binary;
            else
                int_cnt <= int_cnt - 1;
            end if;
        else 
            int_cnt <= int_cnt;
        end if;
    end if;
end if;
end process;

cnt <= std_logic_vector(int_cnt);

end Behavioral;

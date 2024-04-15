library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity shift_register is
    generic(register_length : positive := 16);
    Port ( clk : in STD_LOGIC := '0';
           chip_select : in std_logic;
           register_in : in std_logic_vector(register_length-1 downto 0);
           rst : in std_logic := '0';
           data : in STD_LOGIC := '0';
           register_out : out std_logic_vector(register_length-1 downto 0);
           carry_out : out std_logic := '0');
end shift_register;

architecture Behavioral of shift_register is

    signal register_data : std_logic_vector(register_length-1 downto 0) := (others => '0');
    signal temp : std_logic := '0';

    begin

    process(clk, chip_select, rst, register_in)
    begin
        if(rst = '1') then
            register_data <= (others => '0');
        elsif(chip_select = '1') then
            register_data <= register_in;
        elsif(chip_select = '0') then
            if(rising_edge(clk)) then
                temp <= register_data(register_length-1);
                register_data <= register_data(register_length-2 downto 0) & data;
            end if;
            if(falling_edge(clk)) then
                carry_out <= temp;
            end if;
        else
            register_data <= register_data; -- latch
        end if;
    end process;

    register_out <= std_logic_vector(register_data);

end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter is

    generic( N : positive := 16 );

    Port ( en: in std_logic; -- active high
           rst: in std_logic;
           clk: in std_logic;
           cnt: out std_logic_vector(N-1 downto 0));

end counter;

architecture behavioral of counter is
signal internal_cnt : unsigned(N-1 downto 0);

begin
    process(en, rst, clk)
    begin
        if rst = '1' then
            internal_cnt <= (others => '0');
        elsif rising_edge(clk) and en = '1' then
            internal_cnt <= internal_cnt + 1;
        end if;

        internal_cnt <= internal_cnt; -- latch

    end process;

    cnt <= std_logic_vector(internal_cnt);

end Behavioral;

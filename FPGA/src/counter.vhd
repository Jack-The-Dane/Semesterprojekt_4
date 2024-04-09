library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity prescaler is

    generic( N : positive := 16; -- divide by N
             bits : positive := 5);

    Port ( en : in STD_LOGIC; -- active high
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           out_clk : out STD_LOGIC);

end prescaler;

architecture Behavioral of prescaler is
signal cnt_temp : unsigned(bits-1 downto 0);
signal out_temp : std_logic := '0';

begin
    process(en, rst, clk)
    begin
        if(rst = '1') then
            cnt_temp <= (others => '0');
        elsif(en = '1') then
            if(rising_edge(clk)) then
                cnt_temp <= cnt_temp + 1;
                if(cnt_temp = N) then
                    out_temp <= '1';
                    cnt_temp <= (others => '0');
                else
                    out_temp <= '0';
                end if;
            end if;
        else 
            cnt_temp <= cnt_temp;
        end if;
    end process;

    out_clk <= out_temp;
end Behavioral;

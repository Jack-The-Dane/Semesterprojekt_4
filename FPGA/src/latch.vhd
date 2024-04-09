library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity latch is
    generic( data_length : positive := 16);
    Port ( rst : in std_logic;
           set : in std_logic;
           D : in std_logic_vector(data_length - 1 downto 0);
           Q : out std_logic_vector(data_length - 1 downto 0)
           );
end latch;

architecture Behavioral of latch is
    signal data : std_logic_vector(data_length-1 downto 0);

begin
    process(set, rst)
    begin

        if rst = '1' then
            data <= (others => '0');
        end if;

        if set = '1' then
            data <= D;
        end if;

        data <= data; -- latch

    end process;

    Q <= data;


end Behavioral;

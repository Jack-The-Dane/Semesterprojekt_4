library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity latch_tb is
end latch_tb;

architecture latch_tb of latch_tb is

    constant N: positive := 4;

    component latch is
        generic( data_length : positive := N);
        Port ( rst : in std_logic;
               set : in std_logic;
               D : in std_logic_vector(data_length - 1 downto 0);
               Q : out std_logic_vector(data_length - 1 downto 0)
               );
    end component;

    signal D_tb : std_logic_vector(N - 1 downto 0);
    signal Q_tb : std_logic_vector(N - 1 downto 0);
    signal rst_tb : std_logic;
    signal set_tb : std_logic;

constant period: time := 10 ns;

begin

    my_latch: latch
    port map( rst => rst_tb,
              set => set_tb,
              D => D_tb,
              Q => Q_tb);

    process
    begin

        rst_tb <= '0';
        set_tb <= '0';

        D_tb <= "0000";
        wait for period;
        set_tb <= '1';
        wait for period;
        set_tb <= '0';
        wait for period;
        assert Q_tb = "0000";

        D_tb <= "0101";
        wait for period;
        set_tb <= '1';
        wait for period;
        set_tb <= '0';
        wait for period;
        assert Q_tb = "0101";

        wait for period;
        rst_tb <= '1';
        wait for period;
        rst_tb <= '0';
        wait for period;
        assert Q_tb = "0000";

        wait;

    end process;

end architecture latch_tb;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_register_tb is
end shift_register_tb;

architecture shift_register_tb of shift_register_tb is

    constant N: positive := 4;

    component shift_register is
        generic(register_length : positive := N);
        port (
                clk: in STD_LOGIC := '0';
                chip_select: in std_logic;
                register_in: in std_logic_vector(register_length-1 downto 0);
                rst: in std_logic := '0';
                data: in std_logic := '0';
                register_out: out std_logic_vector(register_length-1 downto 0);
                carry_out: out std_logic := '0'
               );
    end component;

    signal clk_tb: STD_LOGIC := '0';
    signal chip_select_tb: std_logic;
    signal register_in_tb: std_logic_vector(N-1 downto 0);
    signal rst_tb: std_logic := '0';
    signal data_tb: STD_LOGIC := '0';
    signal register_out_tb: std_logic_vector(N-1 downto 0);
    signal carry_out_tb: std_logic := '0';

constant period: time := 10 ns;

begin
    my_register: shift_register
    port map(
        clk => clk_tb,
        chip_select => chip_select_tb,
        register_in => register_in_tb,
        rst => rst_tb,
        data => data_tb,
        register_out => register_out_tb,
        carry_out => carry_out_tb
    );
    process

    begin

        chip_select_tb <= '0';
        data_tb <= '1';
        clk_tb <= '0';

        wait for period;

        assert register_out_tb = "0000";

        clk_tb <= '1';
        wait for period;
        clk_tb <= '0';
        wait for period;
        assert register_out_tb = "0001";
        assert carry_out_tb = '0';

        clk_tb <= '1';
        wait for period;
        clk_tb <= '0';
        wait for period;
        assert register_out_tb = "0011";
        assert carry_out_tb = '0';

        clk_tb <= '1';
        wait for period;
        clk_tb <= '0';
        wait for period;
        assert register_out_tb = "0111";
        assert carry_out_tb = '0';

        clk_tb <= '1';
        wait for period;
        clk_tb <= '0';
        wait for period;
        assert register_out_tb = "1111";
        assert carry_out_tb = '0';

        -- Shift in zeros
        data_tb <= '0';

        clk_tb <= '1';
        wait for period;
        clk_tb <= '0';
        wait for period;
        assert register_out_tb = "1110";
        assert carry_out_tb = '1';

        clk_tb <= '1';
        wait for period;
        clk_tb <= '0';
        wait for period;
        assert register_out_tb = "1100";
        assert carry_out_tb = '1';

        clk_tb <= '1';
        wait for period;
        clk_tb <= '0';
        wait for period;
        assert register_out_tb = "1000";
        assert carry_out_tb = '1';

        clk_tb <= '1';
        wait for period;
        clk_tb <= '0';
        wait for period;
        assert register_out_tb = "0000";
        assert carry_out_tb = '1';

        wait;

    end process;

end architecture shift_register_tb;

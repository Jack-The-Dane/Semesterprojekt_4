library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi is 

    generic (
        N: Integer := 16
    );

    port(
        cs: in std_logic; -- low=spi active, high=read reg_in
        rst: in std_logic;
        clk: in std_logic;
        mosi: in std_logic;
        miso: out std_logic;
        reg_in: in std_logic_vector(N-1 downto 0);
        reg_out: out std_logic_vector(N-1 downto 0)
    );

end spi;

architecture Structural of spi is

    component prescaler is 
        generic (
            N: positive := N;
            bits: positive := 4
        );

        Port ( en : in STD_LOGIC;
            rst : in STD_LOGIC;
            clk : in STD_LOGIC;
            out_clk : out STD_LOGIC);
    end component;

    component shift_register is 
        generic (
            register_length: positive := N
        );

        Port ( clk : in STD_LOGIC := '0';
               chip_select : in std_logic;
               register_in : in std_logic_vector(register_length-1 downto 0);
               rst : in std_logic := '0';
               data : in STD_LOGIC := '0';
               register_out : out std_logic_vector(register_length-1 downto 0);
               carry_out : out std_logic := '0');
    end component;

    component latch is
        generic( data_length : positive := N);
        Port ( rst : in std_logic;
               set : in std_logic;
               D : in std_logic_vector(data_length - 1 downto 0);
               Q : out std_logic_vector(data_length - 1 downto 0)
               );
    end component;

    signal latch_reg_out: std_logic;
    signal reg_to_latch: std_logic_vector(N-1 downto 0);

begin

    enable_prescaler: prescaler
        port map(
            en => cs,
            rst => rst,
            clk => clk,
            out_clk => latch_reg_out
        );

    shift_reg: shift_register
        port map(
            clk => clk,
            chip_select => cs,
            register_in => reg_in,
            register_out => reg_to_latch,
            rst => rst,
            data => mosi,
            carry_out => miso
        );

    latch_out: latch
        port map(
            rst => rst,
            D => reg_to_latch,
            set => latch_reg_out,
            Q => reg_out
        );


end Structural;

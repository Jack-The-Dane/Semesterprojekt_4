library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity main is 

    port(
        clk: in std_logic;
        btn1: in std_logic;
        btn2: in std_logic;
        led: out std_logic_vector(5 downto 0);
        spi_cs: in std_logic;
        spi_clk: in std_logic;
        spi_mosi: in std_logic;
        spi_miso: out std_logic;
        encoder_pan_a: in std_logic;
        encoder_pan_b: in std_logic;
        encoder_tilt_a: in std_logic;
        encoder_tilt_b: in std_logic;
        motor_pan_pwm: out std_logic;
        motor_tilt_pwm: out std_logic
    );

end main;

architecture Structural of main is

    constant ENCODER_BITS: positive := 9;
    constant MOTOR_BITS: positive := ENCODER_BITS;
    constant SPI_WORD_LEN: positive := ENCODER_BITS*2;

    signal rst: std_logic := '0';

    component spi is
    generic ( N: Integer := SPI_WORD_LEN );
    port(
        cs: in std_logic; -- low=spi active, high=read reg_in
        rst: in std_logic;
        clk: in std_logic;
        mosi: in std_logic;
        miso: out std_logic;
        reg_in: in std_logic_vector(N-1 downto 0);
        reg_out: out std_logic_vector(N-1 downto 0)
    );
    end component;

    component counter is
        generic( N : positive := MOTOR_BITS );
        port ( en: in std_logic; -- active high
               rst: in std_logic;
               clk: in std_logic;
               cnt: out std_logic_vector(N-1 downto 0));
    end component;

    component pwm_gen is
        generic( N : positive := MOTOR_BITS);
        port (
            cnt : in std_logic_vector(N-1 downto 0) := (others => '0');
            duty : in std_logic_vector(N-1 downto 0) := (others => '0');
            pwm : out STD_LOGIC
        );
    end component;

    component encoder is
        port (
                 clk: in STD_LOGIC := '0';
                 rst: in STD_LOGIC := '0';
                 enc_a: in STD_LOGIC := '0';
                 enc_b: in STD_LOGIC := '0';
                 pulse_cnt: out std_logic_vector(8 downto 0)
             );
    end component;

    -- Carries the rotation of the pan and tilt axis
    signal encoder_pan_rot: std_logic_vector(ENCODER_BITS-1 downto 0);
    signal encoder_tilt_rot: std_logic_vector(ENCODER_BITS-1 downto 0);

    -- Carries the SPI input and output words
    signal spi_input: std_logic_vector(SPI_WORD_LEN-1 downto 0);
    signal spi_output: std_logic_vector(SPI_WORD_LEN-1 downto 0);

    -- Carries the duty cycle for the pan and tilt motors
    signal motor_pan_duty: std_logic_vector(MOTOR_BITS-1 downto 0);
    signal motor_tilt_duty: std_logic_vector(MOTOR_BITS-1 downto 0);

    -- Carries the PWM counter values for the pan and tilt motors
    signal pwm_cnt_pan: std_logic_vector(MOTOR_BITS-1 downto 0);
    signal pwm_cnt_tilt: std_logic_vector(MOTOR_BITS-1 downto 0);

begin

    rst <= not btn1;
    led <= (others => btn2);

    spi_component: spi
        port map (
        rst     => rst,
        cs      => spi_cs,
        clk     => spi_clk,
        mosi    => spi_mosi,
        miso    => spi_miso,
        reg_in  => spi_input,
        reg_out => spi_output
        );

    -- Divide join the encoder rotations into the SPI input
    spi_input(ENCODER_BITS*2-1 downto ENCODER_BITS) <= encoder_pan_rot;
    spi_input(ENCODER_BITS-1 downto 0) <= encoder_tilt_rot ;

    -- Split the SPI output into pan and tilt pwm duty cycles
    motor_pan_duty <= spi_output(MOTOR_BITS*2-1 downto MOTOR_BITS);
    motor_tilt_duty <= spi_output(MOTOR_BITS-1 downto 0);


    pwm_counter_pan: counter
        port map (
            en  => '1',
            rst => rst,
            clk => clk,
            cnt => pwm_cnt_pan
        );

    pwm_counter_tilt: counter
        port map (
            en  => '1',
            rst => rst,
            clk => clk,
            cnt => pwm_cnt_tilt
        );

    pwm_gen_pan: pwm_gen
        port map (
            cnt  => pwm_cnt_pan,
            duty => motor_pan_duty,
            pwm  => motor_pan_pwm
        );

    pwm_gen_tilt: pwm_gen
        port map (
            cnt  => pwm_cnt_tilt,
            duty => motor_tilt_duty,
            pwm  => motor_tilt_pwm
        );

    encoder_pan: encoder
        port map (
            clk       => clk,
            rst       => rst,
            enc_a     => encoder_pan_a,
            enc_b     => encoder_pan_b,
            pulse_cnt => encoder_pan_rot
        );

    encoder_tilt: encoder
        port map (
            clk       => clk,
            rst       => rst,
            enc_a     => encoder_tilt_a,
            enc_b     => encoder_tilt_b,
            pulse_cnt => encoder_tilt_rot
        );

end Structural;

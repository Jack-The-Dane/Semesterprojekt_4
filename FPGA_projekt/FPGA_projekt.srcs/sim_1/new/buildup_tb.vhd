----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2024 16:44:43
-- Design Name: 
-- Module Name: buildup_tb - Behavioral
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

entity buildup_tb is
--  Port ( );
end buildup_tb;

architecture Behavioral of buildup_tb is

    component buildup is
    port (
    CS : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    mosi : in STD_LOGIC;
    pwm : out STD_LOGIC;
    encoder_a : in STD_LOGIC;
    encoder_b : in STD_LOGIC;
    sclk : in STD_LOGIC;
    miso : out STD_LOGIC;
    led_0 : out STD_LOGIC;
    spi_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component buildup;
  
  constant TIME_DELTA : time := 10 us; -- period: 20 micro s
  signal CS_tb : STD_LOGIC;
  signal clk_tb : STD_LOGIC;
  signal rst_tb : STD_LOGIC;
  signal mosi_tb : STD_LOGIC;
  signal pwm_tb : STD_LOGIC;
  signal encoder_a_tb : STD_LOGIC;
  signal encoder_b_tb : STD_LOGIC;
  signal sclk_tb : STD_LOGIC;
  signal miso_tb : STD_LOGIC;
  signal led_0_tb : STD_LOGIC;
  signal spi_out_tb : STD_LOGIC_VECTOR ( 15 downto 0 );

begin

    dut : buildup
        port map(
            CS => CS_tb,
            clk => clk_tb,
            rst => rst_tb,
            mosi => mosi_tb,
            pwm => pwm_tb,
            encoder_a => encoder_a_tb,
            encoder_b => encoder_b_tb,
            sclk => sclk_tb,
            miso => miso_tb,
            led_0 => led_0_tb,
            spi_out => spi_out_tb
        );
        
    simulation: process
    begin
    CS_tb <= '1';
    clk_tb <= '0';
    rst_tb <= '0';
    mosi_tb <= '0';
    encoder_a_tb <= '0';
    encoder_b_tb <= '0';
    sclk_tb <= '1';
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 1
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 2
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 3
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 4
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 5
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 6
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 7
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 8
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 9
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 11
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 12
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 13
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 14
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 20
    
    -- add more to make the encodervalue higher than 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 1
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 2
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 3
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 4
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 5
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 6
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 7
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 8
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 9
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 11
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 12
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 13
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 14
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 20
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tb <= '0';            -- 20
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
                                    -- 21
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    CS_tb <= '0';                   -- 22
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0'; mosi_tb <= '1'; -- 23
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';
    mosi_tb <= '0';                 -- 24
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';
    mosi_tb <= '1';                 -- 25
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';                 -- 26
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';
    mosi_tb <= '0';                 -- 27
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';
    mosi_tb <= '1';                 -- 28
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';
    mosi_tb <= '0';                 -- 29
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';
    mosi_tb <= '1';                 -- 30
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';                 -- 31
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';
    mosi_tb <= '0';                 -- 32
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';                 -- 33
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';                 -- 34
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';
    mosi_tb <= '1';                 -- 35
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';                 -- 36
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';
    mosi_tb <= '0';                 -- 37
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';
    mosi_tb <= '1';                 -- 38
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';
    CS_tb <= '1';
    mosi_tb <= '0';                 -- 39
    
    -- Keep the clock running for a while...
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    
    wait;
        
    -- done <3
    
    end process simulation;
end Behavioral;

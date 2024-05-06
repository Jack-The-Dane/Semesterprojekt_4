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
-- pan sendes f�rst, s� tilt, s� hall_effect_1, tilsidst hall_effect_0
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
    pwm_pan_cw : out STD_LOGIC;
    encoder_a_tilt : in STD_LOGIC;
    encoder_b_tilt : in STD_LOGIC;
    sclk : in STD_LOGIC;
    miso : out STD_LOGIC;
    encoder_a_pan : in STD_LOGIC;
    encoder_b_pan : in STD_LOGIC;
    Hall_effect_sensor_0 : in STD_LOGIC;
    Hall_effect_sensor_1 : in STD_LOGIC;
    pwm_tilt_cw : out STD_LOGIC;
    pwm_pan_ccw : out STD_LOGIC;
    pwm_tilt_ccw : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    spi_out : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  end component buildup;
  
  constant TIME_DELTA : time := 10 us; -- period: 20 micro s
    signal CS_tb :  STD_LOGIC;
    signal clk_tb :  STD_LOGIC;
    signal rst_tb :  STD_LOGIC;
    signal mosi_tb :  STD_LOGIC;
    signal pwm_pan_cw_tb :  STD_LOGIC;
    signal encoder_a_tilt_tb :  STD_LOGIC;
    signal encoder_b_tilt_tb :  STD_LOGIC;
    signal sclk_tb :  STD_LOGIC;
    signal miso_tb :  STD_LOGIC;
    signal led_tb :  STD_LOGIC_VECTOR ( 3 downto 0 );
    signal encoder_a_pan_tb :  STD_LOGIC;
    signal encoder_b_pan_tb :  STD_LOGIC;
    signal Hall_effect_sensor_0_tb :  STD_LOGIC;
    signal Hall_effect_sensor_1_tb :  STD_LOGIC;
    signal pwm_tilt_cw_tb :  STD_LOGIC;
    signal pwm_pan_ccw_tb :  STD_LOGIC;
    signal pwm_tilt_ccw_tb :  STD_LOGIC;
    signal spi_out_tb : STD_LOGIC_VECTOR ( 19 downto 0 );

begin

    dut : buildup
        port map(
            CS => CS_tb,
            clk => clk_tb,
            rst => rst_tb,
            mosi => mosi_tb,
            pwm_pan_cw => pwm_pan_cw_tb,
            encoder_a_tilt => encoder_a_tilt_tb,
            encoder_b_tilt => encoder_b_tilt_tb,
            sclk => sclk_tb,
            miso => miso_tb,
            led => led_tb,
            encoder_a_pan => encoder_a_pan_tb,
            encoder_b_pan => encoder_b_pan_tb,
            Hall_effect_sensor_0 => Hall_effect_sensor_0_tb,
            Hall_effect_sensor_1 => Hall_effect_sensor_1_tb,
            pwm_tilt_cw => pwm_tilt_cw_tb,
            pwm_pan_ccw => pwm_pan_ccw_tb,
            pwm_tilt_ccw => pwm_tilt_ccw_tb,
            spi_out => spi_out_tb
        );
        
    simulation: process
    begin
    CS_tb <= '1';
    clk_tb <= '0';
    rst_tb <= '0';
    mosi_tb <= '0';
    encoder_a_tilt_tb <= '0';
    encoder_b_tilt_tb <= '0';
    encoder_a_pan_tb <= '0';
    encoder_b_pan_tb <= '0';
    sclk_tb <= '1';
    Hall_effect_sensor_0_tb <= '0';
    Hall_effect_sensor_1_tb <= '1';
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 1
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 2
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 3
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 4
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 5
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 6
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 7
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 8
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 9
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 11
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 12
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 13
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 14
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 20
    
    -- add more to make the encodervalue higher than 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 1
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 2
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 3
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 4
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 5
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 6
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 7
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 8
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 9
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 11
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 12
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 13
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 14
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 20
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 20
    
    ------------
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 1
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 2
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 3
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 4
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 5
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 6
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 7
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 8
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 9
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 11
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 12
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 13
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 14
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 20
    
    -- add more to make the encodervalue higher than 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 1
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 2
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 3
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 4
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 5
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 6
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 7
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 8
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 9
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 11
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 12
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 13
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 14
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 20
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 20
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 20
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 20
    ----------
    
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
    sclk_tb <= '0';                 -- 38.5
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';                 -- 36
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';                 -- 36
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';                 -- 36
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';                 -- 36
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    
    CS_tb <= '1';
    mosi_tb <= '0';                 -- 39
    
    -- Keep the clock running for a while...
    
    l_parity : for k in 0 to 10000000 loop
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    
    end loop l_parity;

    wait for TIME_DELTA;

    ------------ do it all again -------------------
    CS_tb <= '1';
    clk_tb <= '0';
    rst_tb <= '0';
    mosi_tb <= '0';
    encoder_a_tilt_tb <= '0';
    encoder_b_tilt_tb <= '0';
    encoder_a_pan_tb <= '0';
    encoder_b_pan_tb <= '0';
    sclk_tb <= '1';
    Hall_effect_sensor_0_tb <= '0';
    Hall_effect_sensor_1_tb <= '1';
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 1
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 2
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 3
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 4
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 5
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 6
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 7
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 8
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 9
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 11
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 12
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 13
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 14
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 20
    
    -- add more to make the encodervalue higher than 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 1
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 2
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 3
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 4
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 5
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 6
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 7
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 8
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 9
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 11
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 12
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 13
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 14
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 20
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_tilt_tb <= '0';            -- 20
    
    ------------
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 1
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 2
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 3
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 4
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 5
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 6
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 7
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 8
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 9
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 11
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 12
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 13
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 14
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 20
    
    -- add more to make the encodervalue higher than 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 1
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 2
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 3
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 4
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 5
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 6
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 7
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 8
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 9
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 10
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 11
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 12
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 13
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 14
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 20
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 20
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 20
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 15
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 16
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 17
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 18
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '1';            -- 19
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    encoder_a_pan_tb <= '0';            -- 20
    ----------
    
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
    sclk_tb <= '0';                 -- 38.5
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';                 -- 36
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';                 -- 36
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';                 -- 36
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '0';                 -- 36
    
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    sclk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    
    CS_tb <= '1';
    mosi_tb <= '0';                 -- 39
    
    -- Keep the clock running for a while...
    
    r_parity : for k in 0 to 10000000 loop
    wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0'; wait for TIME_DELTA; clk_tb <= '1'; wait for TIME_DELTA; clk_tb <= '0';
    
    end loop r_parity;
    ------------------------------------------------
    
    wait;
        
    -- done <3
    
    end process simulation;
end Behavioral;

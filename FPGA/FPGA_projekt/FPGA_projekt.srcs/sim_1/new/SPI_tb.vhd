----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.04.2024 10:16:48
-- Design Name: 
-- Module Name: SPI_tb - Behavioral
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

entity SPI_tb is
--  Port ( );
end SPI_tb;

architecture Behavioral of SPI_tb is

component SPI_wrapper is
  port (
    SPI_chip_select : in STD_LOGIC;
    SPI_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SPI_sample : in STD_LOGIC;
    encoder_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    miso : out STD_LOGIC;
    mosi : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end component;

constant TIME_DELTA : time := 10 us; -- period: 20 micro s

signal SPI_chip_select_tb : std_logic;
signal SPI_out_tb : STD_LOGIC_VECTOR ( 15 downto 0 );
signal SPI_sample_tb : STD_LOGIC;
signal encoder_in_tb : STD_LOGIC_VECTOR ( 15 downto 0 );
signal miso_tb : STD_LOGIC;
signal mosi_tb : std_logic;
signal rst_tb : std_logic;

begin

    dut : SPI_wrapper
        port map(
            SPI_chip_select => SPI_chip_select_tb,
            SPI_out => SPI_out_tb,
            SPI_sample => SPI_sample_tb,
            encoder_in => encoder_in_tb,
            miso => miso_tb,
            mosi => mosi_tb,
            rst => rst_tb
            
        );
    
    simulation: process
    begin
    
        SPI_chip_select_tb <= '1';              -- 1
        SPI_sample_tb <= '1';
        encoder_in_tb <= "1100010010011011";
        mosi_tb <= '0';
        rst_tb <= '0';
        
        wait for TIME_DELTA;
        
        SPI_chip_select_tb <= '0';              -- 2.5 :)
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 2
        mosi_tb <= '1';
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 3
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 4 
        mosi_tb <= '0';
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 5
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 6
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 7
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 8
        mosi_tb <= '1';
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 9
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 10
        mosi_tb <= '0';
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 11
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 12
        mosi_tb <= '1';
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 13
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 14
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 15
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 16
        mosi_tb <= '0';
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 17
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 18
        mosi_tb <= '1';
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 19
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 20
        mosi_tb <= '0';
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 21
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 22
        mosi_tb <= '1';
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 23
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 24
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 25
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 26
        mosi_tb <= '0';
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 27
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 28
        mosi_tb <= '1';
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 29
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   -- 30
        mosi_tb <= '0';
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 31
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '0';                   --32
        mosi_tb <= '1';
        
        wait for TIME_DELTA;
        
        SPI_sample_tb <= '1';                   -- 33
        
        wait for TIME_DELTA;
        
        SPI_chip_select_tb <= '1';              -- 34
        mosi_tb <= '0';
        
        wait;
    
    end process simulation;

end Behavioral;

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

component Master_wrapper is
  port (
    CS : out STD_LOGIC;
    MISO : in STD_LOGIC;
    MOSI : out STD_LOGIC;
    Q_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SCLK : out STD_LOGIC;
    clk : in STD_LOGIC;
    register_in_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
end component;

constant TIME_DELTA : time := 10 us; -- period: 20 micro s

signal CS_tb : STD_LOGIC;
signal clk_tb : std_logic;
signal register_in_0_tb : STD_LOGIC_VECTOR ( 7 downto 0 );
signal SCLK_tb : STD_LOGIC;
signal Q_0_tb : STD_LOGIC_VECTOR ( 7 downto 0 );
signal MISO_tb : STD_LOGIC;
signal MOSI_tb : std_logic;
signal rst_tb : std_logic;

begin

    dut : Master_wrapper
        port map(
            CS => CS_tb,
            clk => clk_tb,
            register_in_0 => register_in_0_tb,
            SCLK => SCLK_tb,
            Q_0 => Q_0_tb,
            MISO => MISO_tb,
            MOSI => MOSI_tb,
            rst => rst_tb
            
        );
    
    simulation_clk: process
    begin
    
        clk_tb <= '0';
        
        wait for TIME_DELTA;
        
        clk_tb <= '1';
        
        wait for TIME_DELTA;
    
    end process simulation_clk;
    
    simulation: process
    begin
    
        register_in_0_tb <= "01101001";
        MISO_tb <= '0';
        rst_tb <= '0';
        
        wait;
    
    end process simulation;

end Behavioral;

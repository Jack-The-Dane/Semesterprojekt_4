----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2021 10:18:33 AM
-- Design Name: 
-- Module Name: spi_sub - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spi_sub is
    generic(n_bits : positive := 8);
    port (
        --  Std ports:
        clk     :   in  STD_LOGIC;
        rst     :   in  STD_LOGIC;
        SCLK_rising    :   in  std_logic;
        SCLK_falling   :   in std_logic;
        MOSI    :   in  std_logic;
        CS      :   in  std_logic;
        data_in :   in  std_logic_vector(n_bits-1 downto 0);
        MISO    :   out std_logic;
        data_out:   out std_logic_vector(n_bits-1 downto 0)
    );
end spi_sub;

architecture Behavioral of spi_sub is
    type    STATE_TYPE      is  (s_idle, s_transmit, s_receive, s_latch, s_delay);    --  add states here
    signal  current_state   :   STATE_TYPE  :=  s_idle;
    signal  next_state      :   STATE_TYPE  :=  s_idle;
    signal  shift_reg       :   std_logic_vector(n_bits-1 downto 0) := (others => '0');
    signal  bit_counter     :   std_logic_vector(n_bits-1 downto 0) := (others => '0');
    signal  one_shot        :   std_logic := '0';
begin
    ------------------------------------------------------------------------------
    current_state_logic :   process(clk, rst)
    ------------------------------------------------------------------------------
    -- Current state logic process. Here goes state transitions and state 
    -- transition assignments. Clock and reset sensitive.
    ------------------------------------------------------------------------------
    begin
    ------------------------------------------------------------------------------
        if (rst = '1') then
            current_state   <=  s_idle;              -- Reset state
            -- Put additional reset assignments here

        elsif (rising_edge(clk)) then
            current_state   <=  next_state;         -- State transition (only valid from process exit)

            case current_state is                      -- State transition assignments
                when s_idle =>
                    bit_counter <= (others => '0');
                    shift_reg <= data_in;
                when s_receive =>
                    if (one_shot = '1') then 
                        shift_reg <= shift_reg(shift_reg'HIGH-1 downto 0) & MOSI;
                        bit_counter <= bit_counter(bit_counter'HIGH-1 downto 0) & '1';
                        one_shot <= '0';
                    end if;
                when s_transmit =>
                    one_shot <= '1';
                when others =>
                    null;
            end case;

        end if;
    ------------------------------------------------------------------------------
    end process current_state_logic;
    ------------------------------------------------------------------------------

    ------------------------------------------------------------------------------
    next_state_logic    :   process(current_state, SCLK_rising, CS, SCLK_falling, clk)  -- Add input signals to sensitivity list
    ------------------------------------------------------------------------------
    -- Next state logic process. Here goes state transition conditions. 
    -- Sensitive to state change and input signals.
    ------------------------------------------------------------------------------
    begin
    ------------------------------------------------------------------------------
        case current_state is                       -- Remember all state transition cases
            when s_idle =>                          -- Use conditional logic based on input signals
                if(CS = '0') then
                    next_state <= s_transmit;
                else 
                    next_state <= s_idle;  
                end if; 
            when s_transmit =>
                if(SCLK_rising = '1') then
                    next_state <= s_receive;
                elsif(CS = '1') then
                    next_state <= s_idle;
                else 
                    next_state <= s_transmit;
                end if;
            when s_receive => 
                if(SCLK_falling = '1') then
                    next_state <= s_transmit;
                elsif(CS = '1') then
                    if(bit_counter(bit_counter'HIGH) = '1') then
                        next_state <= s_latch;
                    else 
                        next_state <= s_idle;
                    end if;
                else 
                    next_state <= s_receive;
                end if;
            when s_latch =>
                next_state <= s_delay;
            when s_delay =>
                next_state <= s_idle;
            when others =>
                null;
        end case;
    ------------------------------------------------------------------------------
    end process next_state_logic;
    ------------------------------------------------------------------------------

    ------------------------------------------------------------------------------
    output_logic        :   process(current_state)
    ------------------------------------------------------------------------------
    -- Output logic process. Here goes output assignments. 
    -- Sensitive to state change only.
    ------------------------------------------------------------------------------
    begin
    ------------------------------------------------------------------------------
        case current_state is                       -- Remember all states
            when s_idle =>                           
                MISO <= '1';  
            when s_latch =>
                data_out <= shift_reg;
            when s_transmit =>
                MISO <= shift_reg(shift_reg'HIGH);  -- Remember to assign all signals
            when others =>
                null;
        end case;
    ------------------------------------------------------------------------------
    end process output_logic;
    ------------------------------------------------------------------------------

end Behavioral;

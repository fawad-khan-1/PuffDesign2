----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2023 10:57:50 PM
-- Design Name: 
-- Module Name: RingOscillator - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RingOscillator is
  Port (enable :in std_logic;
        clk :in std_logic;
        reset :in std_logic;
        y :inout std_logic := '1' );
end RingOscillator;

architecture rtl of RingOscillator is

begin
  process(clk, reset)
  begin
    if reset = '1' then
            y <= '1';
    elsif (rising_edge(clk))then
       if enable = '1' then
         y <= y and enable;
         y <= not(not(not(y)));
       end if;  
    end if;
  end process;

end rtl;

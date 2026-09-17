----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2023 06:19:41 PM
-- Design Name: 
-- Module Name: ClockDivider - Behavioral
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

entity ClockDivider is
  Port ( clk,reset: in std_logic;
         clock_out1: out std_logic
         );
end ClockDivider;

architecture Behavioral of ClockDivider is

signal count: integer:=1;
signal tmp : std_logic := '0';

begin
process(clk,reset)
begin
    if(reset='1') then
        count<=1;
        tmp<='0';
    elsif(clk'event and clk='1') then
        count <=count+1;
        if (count = 25000) then
            tmp <= NOT tmp;
            count <= 1;
        end if;
    end if;
clock_out1 <= tmp;
end process;

end Behavioral;

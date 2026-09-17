----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2023 11:07:57 PM
-- Design Name: 
-- Module Name: UpCounter - Behavioral
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

entity UpCounter is
  Port (cout :out std_logic_vector (7 downto 0);
        enable :in std_logic;
        clk :in std_logic;
        reset :in std_logic );
end UpCounter;

architecture rtl of UpCounter is
    signal count :std_logic_vector(7 downto 0);
begin
    process(clk,reset)
begin
    if(reset = '1')then
        count <= (others => '0');
    elsif(rising_edge(clk))then
        if(enable = '1')then
            count <= count + 1;
        end if;
    end if;
    end process;
    cout <= count;
end rtl;

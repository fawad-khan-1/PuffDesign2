----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2023 09:12:48 PM
-- Design Name: 
-- Module Name: Demux - Behavioral
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

entity Demux is
  Port (SEL :in std_logic_vector(1 downto 0);
        inputDemux: in std_logic;
        Out0, Out1, Out2, Out3: out std_logic );
end Demux;

architecture Behavioral of Demux is
    
begin
  process(SEL,inputDemux)is  
begin
    if (SEL <= "00") then
             Out0 <= inputDemux;
    elsif (SEL <= "01") then
             Out1 <= inputDemux;
    elsif (SEL <= "10") then
             Out2 <= inputDemux;
    else
             Out3 <= inputDemux;
    end if;
    end process;
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2023 11:02:02 PM
-- Design Name: 
-- Module Name: Mux - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux is
  Port (SEL :in std_logic_vector(1 downto 0);
        A, B, C, D: in std_logic;
        Z: out std_logic );
end Mux;

architecture Behavioral of Mux is

begin
    process(SEL,A,B,C,D)is
begin
    if (SEL <= "00") then
             Z <= A;
    elsif (SEL <= "01") then
             Z <= B;
    elsif (SEL <= "10") then
             Z <= C;
    else
             Z <= D;
    end if;
    end process;
end Behavioral;

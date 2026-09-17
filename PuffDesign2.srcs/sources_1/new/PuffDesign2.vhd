----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2023 05:38:31 PM
-- Design Name: 
-- Module Name: PuffDesign2 - Behavioral
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

entity PuffDesign2 is
Port ( 
        -- Input ports for ClockDivider
    clk_div_in1 : in std_logic;
    clk_div_in2 : in std_logic;
    
    -- Demux input ports
    demux_in1 : in std_logic_vector(1 downto 0);
    demux_in2 : in std_logic_vector(1 downto 0);
    
    -- Mux input ports
    mux_in1 : in std_logic;
    mux_in2 : in std_logic;
    mux_in3 : in std_logic;
    mux_in4 : in std_logic;
    -- input for Ring Oscillator
    ring_in1 : in std_logic;
    ring_in2 : in std_logic;
    ring_in3 : in std_logic;
    -- output for Ring Oscillator
     ring_out : inout std_logic;
    -- Define output ports
    clk1_div_out  : out std_logic;
    clk2_div_out : out std_logic;
    
    -- Demux output ports
    demux_out1  : out std_logic;
    demux_out2  : out std_logic;
    demux_out3  : out std_logic;
    demux_out4  : out std_logic;
    -- Mux output ports
    mux_out : out std_logic        
 );
end PuffDesign2;

architecture Behavioral of PuffDesign2 is
--Declare component clock divider
  signal internal_signal_1_clkDiv : std_logic;
  signal internal_signal_1: std_logic_vector(1 downto 0);
  signal internal_signal_2: std_logic_vector(1 downto 0);
  signal internal_signal_2_clkDiv : std_logic_vector(1 downto 0);
  signal internal_signal_1_deMux : std_logic;

  --initiating components
  --clock divider component
  -- Instantiate PUF_Component_1
  component ClockDivider 
    Port (
      clk : in std_logic;
      reset: in std_logic;
      -- Define output ports
      clock_out1 : out std_logic
     );   
  end component;
  
  component Demux
   Port (SEL :in std_logic_vector(1 downto 0);
       inputDemux: in std_logic;
       Out0, Out1, Out2, Out3: out std_logic
   );
  end component;
  
  
 

  
  
  
begin
  -- Instantiate PUF_Component_1
ClockDivider_Inst: ClockDivider
    port map (
      clk => clk_div_in1,
      reset => clk_div_in2,
      --clock_out1 => clk1_div_out,
      clock_out1  =>  internal_signal_1_clkDiv
  
 );
 

 Demux_Inst: Demux
    port map (
      
      SEL=> demux_in1,
      inputDemux=> clk_div_in1,
      Out0 => demux_out1,
      Out1 => demux_out2,
      Out2 => demux_out3,
      Out3 => demux_out4,
       internal_signal_1 <= internal_signal_1_clkDiv(0),
       internal_signal_2 <= internal_signal_1_clkDiv(1),
      SEL(0) => internal_signal_1  
    ); 
Demux2_Inst: Demux
    port map (
      SEL=> demux_in2,
      inputDemux=> clk_div_in1,
      Out0 => demux_out1,
      Out1 => demux_out2,
      Out2 => demux_out3,
      Out3 => demux_out1
    );

    


end Behavioral;

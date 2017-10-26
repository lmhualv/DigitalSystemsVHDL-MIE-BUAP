----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:58:22 10/14/2017 
-- Design Name: 
-- Module Name:    top_motor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_motor is
    Port ( reset : in  STD_LOGIC;
           clk50MHz : in  STD_LOGIC;
			  modo_m : in STD_LOGIC_VECTOR(2 DOWNTO 0);
           MotorPasos : out  STD_LOGIC_VECTOR (3 downto 0));
end top_motor;

architecture Behavioral of top_motor is

--señales
signal alclk, t1s, tms : STD_LOGIC;

--componentes
component timer1seg is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clk1s : inout  STD_LOGIC);
end component;

component timer_medio_seg is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clkms : inout  STD_LOGIC);
end component;

component motor is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  modo: in STD_LOGIC_VECTOR(1 downto 0);
           motor : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
--fin componentes

begin

--instanciando
CI1: timer1seg port map(reset, clk50MHz, t1s);
CI2: timer_medio_seg port map(reset, clk50MHz, tms);
CI3: motor port map (alclk, reset, modo_m(1 downto 0), MotorPasos);

alclk <= tms when modo_m(2) = '0' else
			t1s;

end Behavioral;


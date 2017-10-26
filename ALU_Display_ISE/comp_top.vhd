------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp_top is
    Port ( a_top : in  STD_LOGIC_VECTOR (3 downto 0);
           b_top : in  STD_LOGIC_VECTOR (3 downto 0);
           op_top : in  STD_LOGIC_VECTOR (1 downto 0);
           seg_m : out  STD_LOGIC_VECTOR (7 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0));
end comp_top;

architecture Behavioral of comp_top is

component ALU_4x4 is
    Port ( a : 	in  STD_LOGIC_VECTOR (3 downto 0);
           b : 	in  STD_LOGIC_VECTOR (3 downto 0);
           op : 	in  STD_LOGIC_VECTOR (1 downto 0);
           res : 	out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);

end component;

component DecoBCD_7seg_when is
	port 
	(
	dato: IN std_logic_vector(3 downto 0);
	ena:  OUT std_logic_vector(3 downto 0);
	segmentos: OUT std_logic_vector(7 downto 0)
	);

end component;

signal cable_datos: STD_LOGIC_VECTOR (3 downto 0);

begin

CI1: ALU_4x4 port map (a_top, b_top, op_top, cable_datos);
CI2: DecoBCD_7seg_when port map (cable_datos, an, seg_m);

end Behavioral;


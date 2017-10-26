
library ieee;
use ieee.std_logic_1164.all;

entity DecoBCD_7seg_with is
	port 
	(
	dato: IN std_logic_vector(3 downto 0);
	segmentos: OUT std_logic_vector(7 downto 0)
	);

end DecoBCD_7seg_with;

architecture comportamiento of DecoBCD_7seg_with is



begin
	with dato select
	segmentos <= x"C0" 	when x"0",
					 x"F9"	when x"1",
					 x"A4"	when x"2",
					 x"B0"	when x"3",
					 x"99"	when x"4",
					 x"92"	when x"5",
					 x"82"	when x"6",
					 x"B8"	when x"7",
					 x"80"	when x"8",
					 x"98"	when x"9",
					 x"C8"	when x"A",
					 x"83"	when x"B",
					 x"A7"	when x"C",
					 x"A1"	when x"D",
					 x"86"	when x"E",
					 x"8E"	when x"F",
					 x"FF" when others;
					 

end comportamiento;
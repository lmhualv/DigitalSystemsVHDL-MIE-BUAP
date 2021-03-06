
library ieee;
use ieee.std_logic_1164.all;

entity DecoBCD_7seg_when is
	port 
	(
	dato: IN std_logic_vector(3 downto 0);
	segmentos: OUT std_logic_vector(7 downto 0)
	);

end DecoBCD_7seg_when;

architecture comportamiento of DecoBCD_7seg_when is



begin
	segmentos <= x"C0" when dato = "0000" else
					 x"F9"	when dato = x"1" else
					 x"A4"	when dato = x"2" else
					 x"B0"	when dato = x"3" else
					 x"99"	when dato = x"4" else
					 x"92"	when dato = x"5" else
					 x"82"	when dato = x"6" else
					 x"B8"	when dato = x"7" else
					 x"80"	when dato = x"8" else
					 x"98"	when dato = x"9" else
					 x"C8"	when dato = x"A" else
					 x"83"	when dato = x"B" else
					 x"A7"	when dato = x"C" else
					 x"A1"	when dato = x"D" else
					 x"86"	when dato = x"E" else
					 x"8E"	when dato = x"F" else
					 x"FF";
					 

end comportamiento;

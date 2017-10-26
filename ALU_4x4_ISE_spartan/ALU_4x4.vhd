---
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_4x4 is
    Port ( a : 	in  STD_LOGIC_VECTOR (3 downto 0);
           b : 	in  STD_LOGIC_VECTOR (3 downto 0);
           op : 	in  STD_LOGIC_VECTOR (1 downto 0);
           res : 	out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end ALU_4x4;

architecture Behavioral of ALU_4x4 is

begin
	process(a,b,op)
	begin
	if (op="00") then
		res <= a + b;
	elsif (op="01") then
		res <= a - b;
		elsif (op="10") then
			res <= a and b;
			else
				res <= a or b;
	end if;		
	end process;
end Behavioral;


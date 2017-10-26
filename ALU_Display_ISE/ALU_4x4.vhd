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
           res : 	out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end ALU_4x4;

architecture Behavioral of ALU_4x4 is
signal ai, bi, ri : STD_LOGIC_VECTOR (4 downto 0);
begin
	ai <= '0' & a;
	bi <= '0' & b;
	res <= ri(3 downto 0); 
	cout <= ri(4);
	process(ai,bi,op)
	begin
	if (op="00") then
		ri <= ai + bi;
	elsif (op="01") then
		ri <= ai - b;
		elsif (op="10") then
			ri <= a and bi;
			else
				ri <= ai or bi;
	end if;		
	end process;
end Behavioral;


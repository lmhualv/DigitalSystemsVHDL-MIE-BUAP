
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity timer_medio_seg is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clkms : inout  STD_LOGIC);
end timer_medio_seg;

architecture Behavioral of timer_medio_seg is

signal cuenta : integer;
signal i_clk : std_logic;

begin
funcion_cuenta:
process(rst, clk)
	begin
	if (rst='1') then
		cuenta <= 0;
	elsif (clk'event and clk='1') then
		if (cuenta=12999999) then
			cuenta <= 0;
			i_clk <= '1';
		else 
			cuenta <= cuenta + 1;
			i_clk <= '0';
		end if;
	end if;
end process;

funcion_reloj:
process(rst, i_clk)
	begin
	if (rst='1') then
	clkms <= '0';
	elsif (rising_edge(i_clk)) then
		clkms <= not clkms;
	end if;
end process;

end Behavioral;


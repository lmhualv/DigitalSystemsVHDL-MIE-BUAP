----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:20:56 10/14/2017 
-- Design Name: 
-- Module Name:    motor - Behavioral 
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

entity motor is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  modo: in STD_LOGIC;
           motor : out  STD_LOGIC_VECTOR (3 downto 0));
end motor;

architecture Behavioral of motor is
--creando estados
type estados is (A,B,C,D);
signal actual, siguiente: estados;

begin
func_estados:
process(actual)
begin
   case (actual) is 
      when A =>
			motor <= "1000";
			if (modo='0') then
         siguiente <= B;
			else
			siguiente <= D;
			end if;
      when B =>
			motor <= "0100";
			if (modo='0') then 
         siguiente <= C;
			else
			siguiente <= A;
			end if;
      when C =>
			motor <= "0010";
			if (modo='0') then
         siguiente <= D;
			else
			siguiente <= B;
			end if;
		when others =>
			motor <= "0001";
			if (modo='0') then
         siguiente <= A;
			else
			siguiente <= C;
			end if;
   end case;
end process;

asigna_estado:
process(clk)
begin
	if (rst = '1') then
	actual <= A;
	elsif (clk'event and clk='1') then
		actual <= siguiente;
	end if;
end process;

end Behavioral;


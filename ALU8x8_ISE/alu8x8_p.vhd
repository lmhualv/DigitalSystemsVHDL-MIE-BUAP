library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;



entity alu8x8_p is

generic(n : integer := 8);

  port (
  a		: in std_logic_vector (n-1 downto 0);
  b		: in std_logic_vector (n-1 downto 0);
  cin : in std_logic;
  op  : in std_logic_vector (2 downto 0);
  res	: out std_logic_vector (n*2-1 downto 0)
  --cout: out std_logic
  );
end entity;

architecture arch of alu8x8_p is

  

begin
  funcion:
  process(a,b,op)
  --variable a_int, b_int : std_logic_vector (n-1 downto 0);
  variable res_int : std_logic_vector ((n*2)-1 downto 0);
  constant padding : std_logic_vector (n-1 downto 0) := x"00";

  begin
    if (op="000") then
      res_int (n-1 downto 0) := a + b + cin;
		res_int ((n*2)-1 downto (n)) := x"00"; 
--cout <= res_int(n);
    elsif (op="001") then
      res_int := padding & (a - b);
    elsif (op="010") then
      res_int := a * b;
    elsif (op="011") then
      res_int := padding & (a and b);
    elsif (op="100") then
      res_int := padding & (a or b);
    elsif (op="101") then
      res_int := padding & (a xor b);
    elsif (op="110") then
      res_int := padding & (not a);
    --elsif (op="111") then
	 else
      res_int := padding & ((not a)+1);
    end if;
	 res <= res_int;
  end process;



end architecture;


-- VHDL Instantiation Created from source file alu8x8_p.vhd -- 23:26:23 10/25/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT alu8x8_p
	PORT(
		a : IN std_logic_vector(7 downto 0);
		b : IN std_logic_vector(7 downto 0);
		cin : IN std_logic;
		op : IN std_logic_vector(2 downto 0);          
		res : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	Inst_alu8x8_p: alu8x8_p PORT MAP(
		a => ,
		b => ,
		cin => ,
		op => ,
		res => 
	);



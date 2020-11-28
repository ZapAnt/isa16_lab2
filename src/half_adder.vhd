LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY half_adder IS
	PORT (
		A 		: IN STD_LOGIC;
		B 		: IN STD_LOGIC;
		S 		: OUT STD_LOGIC;
		COUT 	: OUT STD_LOGIC
	);
END half_adder;

ARCHITECTURE struct OF half_adder IS

BEGIN

	S 		<= A XOR B;
	COUT 	<= A AND B;

END struct;
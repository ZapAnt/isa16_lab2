LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY full_adder IS
	PORT (
		A 		: IN STD_LOGIC;
		B 		: IN STD_LOGIC;
		CIN 	: IN STD_LOGIC;
		S 		: OUT STD_LOGIC;
		COUT 	: OUT STD_LOGIC
	);
END full_adder;

ARCHITECTURE struct OF full_adder IS

BEGIN

	S 		<= A XOR B XOR CIN ;
	COUT 	<= (A AND B) OR (CIN AND A) OR (CIN AND B) ;

END struct;

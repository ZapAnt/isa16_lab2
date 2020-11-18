LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_textio.all;

LIBRARY std;
USE std.textio.all;

ENTITY data_maker IS
 	PORT (
		CLK 		: IN  std_logic;
		DATA_OUT	: OUT std_logic_vector(31 downto 0);
		SMPL_END	: OUT std_logic
	);
END data_maker;

ARCHITECTURE beh OF data_maker IS

BEGIN

	PROCESS(CLK)
		FILE fp 				: text OPEN read_mode IS "fp_samples.hex";
		VARIABLE ptr			: line;
		VARIABLE val 			: std_logic_vector(31 downto 0);
		VARIABLE smpl_end_var	: std_logic;
	BEGIN
		IF CLK'event and CLK = '1' THEN
			IF (NOT(endfile(fp))) THEN
				readline(fp, ptr);
				hread(ptr, val);
				smpl_end_var := '0';
			ELSE
				smpl_end_var := '1';
			END IF;
			DATA_OUT <= val;
			SMPL_END <= smpl_end_var;
		END IF;
	END PROCESS;

END beh;
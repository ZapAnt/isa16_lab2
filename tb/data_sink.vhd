LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_textio.all;

LIBRARY std;
USE std.textio.all;

ENTITY data_sink IS
	PORT (
		CLK 		: IN std_logic;
		DATA_IN    	: IN signed(31 DOWNTO 0);
		SMPL_STAT 	: IN std_logic
	);
END data_sink;

ARCHITECTURE beh OF data_sink IS

	CONSTANT	delay		: integer := 4;

BEGIN

	PROCESS(CLK)
		VARIABLE	line_out 	: line;
		VARIABLE	delayed_sig	: std_logic_vector(delay DOWNTO 0);
		FILE 		res_fp 		: text OPEN WRITE_MODE IS "../tb/fp_prod_results.hex";

	BEGIN
		IF CLK'event and CLK = '1' THEN
			delayed_sig := SMPL_STAT & delayed_sig(delay DOWNTO 1);
			IF (delayed_sig(0) = '1') THEN
				hwrite(line_out, std_logic_vector(DATA_IN));
				writeline(res_fp, line_out);
			END IF;
		END IF;
	END PROCESS;

END beh;
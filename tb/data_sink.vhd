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
		SMPL_END 	: IN std_logic;
	);
END data_sink;

ARCHITECTURE beh OF data_sink IS

BEGIN

	PROCESS(CLK, RST_n)
		VARIABLE	line_out 	: line;
		FILE 		res_fp 		: text OPEN WRITE_MODE IS "fp_prod_results.hex";

	BEGIN
		IF (SMPL_END = '0') THEN
			write(line_out, to_integer(DIN));
			writeline(res_fp, line_out);
		ELSE
	 		file_close(res_fp);
		END IF;
	END PROCESS;

END beh;
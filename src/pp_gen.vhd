LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY pp_gen IS PORT ( A: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
								B  : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
								pp0:  OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
								pp1:  OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
								pp2:  OUT STD_LOGIC_VECTOR(32 DOWNTO 0);								
								pp3:  OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
								pp4:  OUT STD_LOGIC_VECTOR(32 DOWNTO 0);								
								pp5:  OUT STD_LOGIC_VECTOR(32 DOWNTO 0);								
								pp6:  OUT STD_LOGIC_VECTOR(32 DOWNTO 0);								
								pp7:  OUT STD_LOGIC_VECTOR(32 DOWNTO 0);								
								pp8:  OUT STD_LOGIC_VECTOR(32 DOWNTO 0);								
								pp9:  OUT STD_LOGIC_VECTOR(32 DOWNTO 0);								
								pp10: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);								
								pP11: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);								
								pp12: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);								
								pp13: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);								
								pp14: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);								
								pp15: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);								
								pp16: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
							);
END pp_gen;

ARCHITECTURE BEHAVIOR OF pp_gen IS 
SIGNAL triplet0 :STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet1 :STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet2 :STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet3 :STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet4 :STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet5 :STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet6 :STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet7 :STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet8 :STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet9 :STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet10:STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet11:STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet12:STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet13:STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet14:STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet15:STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL triplet16:STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL a_shift: STD_LOGIC_VECTOR(32 DOWNTO 0);
SIGNAL a_ext:STD_LOGIC_VECTOR(32 DOWNTO 0);

BEGIN

triplet0 <= B(1)  & B(0) & '0';
triplet1 <= B(3)  & B(2)  & B(1);
triplet2 <= B(5)  & B(4)  & B(3);
triplet3 <= B(7)  & B(6)  & B(5);
triplet4 <= B(9)  & B(8)  & B(7);
triplet5 <= B(11)  & B(10) & B(9);
triplet6 <= B(13) & B(12) & B(11);
triplet7 <= B(15) & B(14) & B(13);
triplet8 <= B(17) & B(16) & B(15);
triplet9 <= B(19) & B(18) & B(17);
triplet10<= B(21) & B(20) & B(19);
triplet11<= B(23) & B(22) & B(21);
triplet12<= B(25) & B(24) & B(23);
triplet13<= B(27) & B(26) & B(25);
triplet14<= B(29) & B(28) & B(27);
triplet15<= B(31) & B(30) & B(29);
triplet16<= '0'   & '0'   & B(31);

a_shift(32 DOWNTO 1) <= A(31 DOWNTO 0);	--GENERATING 2A
a_shift(0) <= '0';

														--EXT A ON 33 BITS
a_ext<='0' & A;									--A always positive (unsigned mult)

with triplet0(2 downto 1) select pp0<=
											  (others =>'0') when "00",
											 a_ext when "01",
									 NOT a_shift when "10",
										NOT a_ext when others;
									
with triplet1 select pp1<=
											  (others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
											  (others =>'0') when others;
									
with triplet2 select pp2<=
											  (others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
											  (others =>'0') when others;
									
with triplet3 select pp3<=
											  (others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
											  (others =>'0') when others;
									
with triplet4 select pp4<=
											  (others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
											  (others =>'0') when others;
									
with triplet5 select pp5<=
											  (others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
											  (others =>'0') when others;
									
with triplet6 select pp6<=
											  (others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
											  (others =>'0') when others;
									
with triplet7 select pp7<=
											  (others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
											  (others =>'0') when others;
									
with triplet8 select pp8<=
											  (others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
											  (others =>'0') when others;
									
with triplet9 select pp9<=
											  (others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
											  (others =>'0') when others;
									
with triplet10 select pp10<=
											  (others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
											  (others =>'0') when others;
									
with triplet11 select pp11<=
											  (others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
											  (others =>'0') when others;
									
with triplet12 select pp12<=
											  (others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
											  (others =>'0') when others;
									
with triplet13 select pp13<=
											  (others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
											  (others =>'0') when others;
									
with triplet14 select pp14<=
											  (others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
											  (others =>'0') when others;
									
with triplet15 select pp15<=
									(others =>'0') when "000",
											 a_ext when "001",
											 a_ext when "010",
										  a_shift when "011",
									 NOT a_shift when "100",
									   NOT a_ext when "101",
										NOT a_ext when "110",
									(others =>'0') when others;
									
with triplet16(0) select pp16<=
									(others =>'0') when '0',
														 A when others;

									
END ARCHITECTURE;
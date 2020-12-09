import os

###FUNCTIONS###
def need_adders(l, cpos):		#l is the level which needs adders
	count_non_empty = 0
	for rpos in range(0, pps_per_level[l]):	#scan from rpos=0 to rpos=pps_per_level[l]
		if bit[l][rpos][cpos] != 'empty':
			count_non_empty = count_non_empty + 1
			if count_non_empty > pps_per_level[l-1] - num_FAs[l][cpos-1] - num_HAs[l][cpos-1]:
				print("level", l, "column", cpos, "need adders")	# DEBUG
				return True
	return False

def instantiate_adders(l, cpos):		#l is the level which needs adders
	global num_FAs
	global num_HAs

	count_non_empty_l = 0
	for pp in range(0, pps_per_level[l]):	#scan from rpos=0 to rpos=pps_per_level[l]
		if bit[l][pp][cpos] != "empty":
			count_non_empty_l = count_non_empty_l + 1
	diff = count_non_empty_l - pps_per_level[l-1] + num_FAs[l][cpos-1] + num_HAs[l][cpos-1]
	print("diff " + str(diff)) #DEBUG
	num_FAs[l][cpos] = diff//2
	print("num_FAs " + str(num_FAs[l][cpos]) + " l " + str(l) + " cpos " + str(cpos)) #DEBUG
	# now add sum and cout to correct position in matrix "bits"
	num_HAs[l][cpos] = diff%2
	print("num_HAs " + str(num_HAs[l][cpos]) + " l " + str(l) + " cpos " + str(cpos)) #DEBUG
	# now add sum and cout to correct position in matrix "bits"

def generate_values(l, cpos):	# l is the level in which we generate values
	global bit
	bits_on_col_l = []

	for pp in range(0, pps_per_level[l+1]):
		if bit[l+1][pp][cpos] != 'empty':
			bits_on_col_l.append(bit[l+1][pp][cpos])
	print("INSERT OLD: n=" + str(len(bits_on_col_l)) + " " + str(bits_on_col_l)) #DEBUG

	for index in range(1, num_FAs[l+1][cpos]+1):
		generate_FA_vhdl(index, l+1, cpos, bits_on_col_l[0], bits_on_col_l[1], bits_on_col_l[2], "FA" + str(index) + "_l" + str(l+1) + "_c" + str(cpos) + "_S", "FA" + str(index) + "_l" + str(l+1) + "_c" + str(cpos) + "_Cout")
		bits_on_col_l = bits_on_col_l[3:]
	for index in range(1, num_HAs[l+1][cpos]+1):
		generate_HA_vhdl(index, l+1, cpos, bits_on_col_l[0], bits_on_col_l[1], "HA" + str(index) + "_l" + str(l+1) + "_c" + str(cpos) + "_S", "HA" + str(index) + "_l" + str(l+1) + "_c" + str(cpos) + "_Cout")
		bits_on_col_l = bits_on_col_l[2:]
	print("REMOVED ADDERS OPERANDS: n=" + str(len(bits_on_col_l)) + " " + str(bits_on_col_l)) #DEBUG

	for index in range(1, num_FAs[l+1][cpos]+1): # add Sout from FAs (in the same column cpos) of previous level
		bits_on_col_l.insert(0, "FA" + str(index) + "_l" + str(l+1) + "_c" + str(cpos) + "_S")
		#generate_FA_vhdl(index, l+1, cpos, to_be_removed[0], B, C, SUM, COUT)
	for index in range(1, num_HAs[l+1][cpos]+1): # add Sout from HAs (in the same column cpos) of previous level
		bits_on_col_l.insert(0, "HA" + str(index) + "_l" + str(l+1) + "_c" + str(cpos) + "_S")
	print("INSERT ADDERS SUMS: n=" + str(len(bits_on_col_l)) + " " + str(bits_on_col_l)) #DEBUG

	for index in range(1, num_FAs[l+1][cpos-1]+1): # add Cout from FAs (in column cpos-1) of previous level
		bits_on_col_l.insert(0, "FA" + str(index) + "_l" + str(l+1) + "_c" + str(cpos-1) + "_Cout")
	for index in range(1, num_HAs[l+1][cpos-1]+1): # add Cout from HAs (in column cpos-1) of previous level
		bits_on_col_l.insert(0, "HA" + str(index) + "_l" + str(l+1) + "_c" + str(cpos-1) + "_Cout")
	print("INSERT ADDERS CARRIES: n=" + str(len(bits_on_col_l)) + " " + str(bits_on_col_l)) #DEBUG

	print("n=" + str(len(bits_on_col_l)) + " " + str(bits_on_col_l)) #DEBUG
	for pp in range(0, pps_per_level[l]):
		if bit[l][pp][cpos] == 'empty':
			bit[l][pp][cpos] = bits_on_col_l.pop(0)
			if bits_on_col_l == []:
				break

	return not bits_on_col_l

def generate_FA_vhdl(num, l, col, A, B, C, SUM, COUT):
	name = "FA" + str(num) + "_l" + str(l) + "_c" + str(col)
	outfile1.write("	SIGNAL " + SUM + "		: STD_LOGIC;\n")
	outfile1.write("	SIGNAL " + COUT + "	: STD_LOGIC;\n")
	outfile2.write("	" + name + '''	:	full_adder
		PORT MAP (
			A 		=>	''' + A + ''',
			B 		=>	''' + B + ''',
			CIN 	=>	''' + C + ''',
			S 		=>	''' + SUM + ''',
			COUT 	=>	''' + COUT + '''
		);

''')

def generate_HA_vhdl(num, l, col, A, B, SUM, COUT):
	name = "HA" + str(num) + "_l" + str(l) + "_c" + str(col)
	outfile1.write("	SIGNAL " + SUM + "		: STD_LOGIC;\n")
	outfile1.write("	SIGNAL " + COUT + "	: STD_LOGIC;\n")
	outfile2.write("	" + name + '''	:	half_adder
		PORT MAP (
			A 		=>	''' + A + ''',
			B 		=>	''' + B + ''',
			S 		=>	''' + SUM + ''',
			COUT 	=>	''' + COUT + '''
		);

''')




###INIT###
pps_per_level = [2, 3, 4, 6, 9, 13, 17]

num_FAs = {}
num_HAs = {}
for level in range(1,7):
	num_FAs[level] = []
	num_HAs[level] = []
	for pos in range(0,64):
		num_FAs[level].append(0)
		num_HAs[level].append(0)
#print(num_FAs)	#DEBUG
#print(num_HAs)	#DEBUG

# init every bit from level 0 to 6 as empty
bit = {}
for level in range(0,7):
	bit[level] = {}
	for pp in range(0, pps_per_level[level]):
		bit[level][pp] = []
		for pos in range(0,64):
			bit[level][pp].append('empty')


# init level 6
for pp in range(0, pps_per_level[6]):
	if pp == 0:									# pp0
		for cpos in range(0, 64):
			if cpos < 33:
				bit[6][pp][cpos] = "pp0(" + str(cpos) + ")"
			elif cpos < 36:
				if cpos == 33 or cpos == 34:
					bit[6][pp][cpos] = 'pp0(32)'
				if cpos == 35:
					bit[6][pp][cpos] = 'pp0_Sneg'
	elif pp == pps_per_level[6]-1:				# pp16
		for cpos in range(0, 64):
			if cpos >= 32:
				bit[6][pp][cpos] = "pp" + str(pp) + "(" + str(cpos-2*pp) + ")"
		bit[6][pp][2*(pp-1)] = "pp" + str(pp-1) + "(32)"
	else:										# pp1 to pp15
		for cpos in range(0, 64):
			if 2*pp <= cpos <= 2*pp + 32:
				bit[6][pp][cpos] = "pp" + str(pp) + "(" + str(cpos-2*pp) + ")"
			elif cpos == 2*pp + 33:
				bit[6][pp][cpos] = 'pp' + str(pp) + "_Sneg"
			elif cpos == 2*pp + 34 and pp != 15:
				bit[6][pp][cpos] = "'1'"
		bit[6][pp][2*(pp-1)] = "pp" + str(pp-1) + "(32)"




###MAIN###
outfile1 = open("mbe_part1.vhd", "w")
outfile2 = open("mbe_part2.vhd", "w")
for l in range(5, -1, -1):						#scan from l=5 to l=0
	for cpos in range(0, 64):					#scan from cpos=0 to cpos=63
		if need_adders(l+1, cpos):
			instantiate_adders(l+1, cpos)
		if not generate_values(l, cpos):
			print("error")
outfile1.close()
outfile2.close()

with open("mbe.vhd", "w") as outfile:
	outfile.write('''LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY mbe IS
	PORT(
		A,B		: IN 	STD_LOGIC_VECTOR(31 DOWNTO 0);
		P 		: OUT 	STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END mbe;

ARCHITECTURE struct OF mbe IS

	COMPONENT full_adder IS
		PORT (
			A 		: IN STD_LOGIC;
			B 		: IN STD_LOGIC;
			CIN 	: IN STD_LOGIC;
			S 		: OUT STD_LOGIC;
			COUT 	: OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT half_adder IS
		PORT (
			A 		: IN STD_LOGIC;
			B 		: IN STD_LOGIC;
			S 		: OUT STD_LOGIC;
			COUT 	: OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT pp_gen IS
		PORT (
			A 		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			B 		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			pp0 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp1 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp2 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp3 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp4 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp5 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp6 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp7 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp8 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp9 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp10 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pP11 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp12 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp13 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp14 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp15 	: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
			pp16 	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL IN1_sum 			: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL IN2_sum 			: STD_LOGIC_VECTOR(63 DOWNTO 0);

	SIGNAL pp0				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp1				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp2				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp3				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp4				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp5				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp6				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp7				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp8				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp9				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp10				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp11				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp12				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp13				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp14				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp15				: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL pp16				: STD_LOGIC_VECTOR(31 DOWNTO 0);

	SIGNAL pp0_Sneg 		: STD_LOGIC;
	SIGNAL pp1_Sneg 		: STD_LOGIC;
	SIGNAL pp2_Sneg 		: STD_LOGIC;
	SIGNAL pp3_Sneg 		: STD_LOGIC;
	SIGNAL pp4_Sneg 		: STD_LOGIC;
	SIGNAL pp5_Sneg 		: STD_LOGIC;
	SIGNAL pp6_Sneg 		: STD_LOGIC;
	SIGNAL pp7_Sneg 		: STD_LOGIC;
	SIGNAL pp8_Sneg 		: STD_LOGIC;
	SIGNAL pp9_Sneg 		: STD_LOGIC;
	SIGNAL pp10_Sneg 		: STD_LOGIC;
	SIGNAL pp11_Sneg 		: STD_LOGIC;
	SIGNAL pp12_Sneg 		: STD_LOGIC;
	SIGNAL pp13_Sneg 		: STD_LOGIC;
	SIGNAL pp14_Sneg 		: STD_LOGIC;
	SIGNAL pp15_Sneg 		: STD_LOGIC;

''')

	with open("mbe_part1.vhd") as infile1:
		for line in infile1:
			outfile.write(line)
	outfile.write('''
BEGIN

	pp0_Sneg	<= NOT pp0(32);
	pp1_Sneg	<= NOT pp1(32);
	pp2_Sneg	<= NOT pp2(32);
	pp3_Sneg	<= NOT pp3(32);
	pp4_Sneg	<= NOT pp4(32);
	pp5_Sneg	<= NOT pp5(32);
	pp6_Sneg	<= NOT pp6(32);
	pp7_Sneg	<= NOT pp7(32);
	pp8_Sneg	<= NOT pp8(32);
	pp9_Sneg	<= NOT pp9(32);
	pp10_Sneg	<= NOT pp10(32);
	pp11_Sneg	<= NOT pp11(32);
	pp12_Sneg	<= NOT pp12(32);
	pp13_Sneg	<= NOT pp13(32);
	pp14_Sneg	<= NOT pp14(32);
	pp15_Sneg	<= NOT pp15(32);

	IN1_sum(1 DOWNTO 0) <= pp0(1 DOWNTO 0);
	IN1_sum(2) <= HA1_l1_c2_S;
	IN1_sum(3) <= HA1_l1_c3_S;
	IN1_sum(4) <= FA1_l1_c4_S;
	IN1_sum(5) <= FA1_l1_c5_S;
	IN1_sum(6) <= FA1_l1_c6_S;
	IN1_sum(7) <= FA1_l1_c7_S;
	IN1_sum(8) <= FA1_l1_c8_S;
	IN1_sum(9) <= FA1_l1_c9_S;
	IN1_sum(10) <= FA1_l1_c10_S;
	IN1_sum(11) <= FA1_l1_c11_S;
	IN1_sum(12) <= FA1_l1_c12_S;
	IN1_sum(13) <= FA1_l1_c13_S;
	IN1_sum(14) <= FA1_l1_c14_S;
	IN1_sum(15) <= FA1_l1_c15_S;
	IN1_sum(16) <= FA1_l1_c16_S;
	IN1_sum(17) <= FA1_l1_c17_S;
	IN1_sum(18) <= FA1_l1_c18_S;
	IN1_sum(19) <= FA1_l1_c19_S;
	IN1_sum(20) <= FA1_l1_c20_S;
	IN1_sum(21) <= FA1_l1_c21_S;
	IN1_sum(22) <= FA1_l1_c22_S;
	IN1_sum(23) <= FA1_l1_c23_S;
	IN1_sum(24) <= FA1_l1_c24_S;
	IN1_sum(25) <= FA1_l1_c25_S;
	IN1_sum(26) <= FA1_l1_c26_S;
	IN1_sum(27) <= FA1_l1_c27_S;
	IN1_sum(28) <= FA1_l1_c28_S;
	IN1_sum(29) <= FA1_l1_c29_S;
	IN1_sum(30) <= FA1_l1_c30_S;
	IN1_sum(31) <= FA1_l1_c31_S;
	IN1_sum(32) <= FA1_l1_c32_S;
	IN1_sum(33) <= FA1_l1_c33_S;
	IN1_sum(34) <= FA1_l1_c34_S;
	IN1_sum(35) <= FA1_l1_c35_S;
	IN1_sum(36) <= FA1_l1_c36_S;
	IN1_sum(37) <= FA1_l1_c37_S;
	IN1_sum(38) <= FA1_l1_c38_S;
	IN1_sum(39) <= FA1_l1_c39_S;
	IN1_sum(40) <= FA1_l1_c40_S;
	IN1_sum(41) <= FA1_l1_c41_S;
	IN1_sum(42) <= FA1_l1_c42_S;
	IN1_sum(43) <= FA1_l1_c43_S;
	IN1_sum(44) <= FA1_l1_c44_S;
	IN1_sum(45) <= FA1_l1_c45_S;
	IN1_sum(46) <= FA1_l1_c46_S;
	IN1_sum(47) <= FA1_l1_c47_S;
	IN1_sum(48) <= FA1_l1_c48_S;
	IN1_sum(49) <= FA1_l1_c49_S;
	IN1_sum(50) <= FA1_l1_c50_S;
	IN1_sum(51) <= FA1_l1_c51_S;
	IN1_sum(52) <= FA1_l1_c52_S;
	IN1_sum(53) <= FA1_l1_c53_S;
	IN1_sum(54) <= FA1_l1_c54_S;
	IN1_sum(55) <= FA1_l1_c55_S;
	IN1_sum(56) <= FA1_l1_c56_S;
	IN1_sum(57) <= FA1_l1_c57_S;
	IN1_sum(58) <= FA1_l1_c58_S;
	IN1_sum(59) <= FA1_l1_c59_S;
	IN1_sum(60) <= FA1_l1_c60_S;
	IN1_sum(61) <= FA1_l1_c61_S;
	IN1_sum(62) <= FA1_l1_c62_S;
	IN1_sum(63) <= FA1_l1_c63_S;

	IN2_sum(0) <= pp0(32);
	IN2_sum(1) <= '0';
	IN2_sum(2) <= pp1(32);
	IN2_sum(3) <= HA1_l1_c2_Cout;
	IN2_sum(4) <= HA1_l1_c3_Cout;
	IN2_sum(5) <= FA1_l1_c4_Cout;
	IN2_sum(6) <= FA1_l1_c5_Cout;
	IN2_sum(7) <= FA1_l1_c6_Cout;
	IN2_sum(8) <= FA1_l1_c7_Cout;
	IN2_sum(9) <= FA1_l1_c8_Cout;
	IN2_sum(10) <= FA1_l1_c9_Cout;
	IN2_sum(11) <= FA1_l1_c10_Cout;
	IN2_sum(12) <= FA1_l1_c11_Cout;
	IN2_sum(13) <= FA1_l1_c12_Cout;
	IN2_sum(14) <= FA1_l1_c13_Cout;
	IN2_sum(15) <= FA1_l1_c14_Cout;
	IN2_sum(16) <= FA1_l1_c15_Cout;
	IN2_sum(17) <= FA1_l1_c16_Cout;
	IN2_sum(18) <= FA1_l1_c17_Cout;
	IN2_sum(19) <= FA1_l1_c18_Cout;
	IN2_sum(20) <= FA1_l1_c19_Cout;
	IN2_sum(21) <= FA1_l1_c20_Cout;
	IN2_sum(22) <= FA1_l1_c21_Cout;
	IN2_sum(23) <= FA1_l1_c22_Cout;
	IN2_sum(24) <= FA1_l1_c23_Cout;
	IN2_sum(25) <= FA1_l1_c24_Cout;
	IN2_sum(26) <= FA1_l1_c25_Cout;
	IN2_sum(27) <= FA1_l1_c26_Cout;
	IN2_sum(28) <= FA1_l1_c27_Cout;
	IN2_sum(29) <= FA1_l1_c28_Cout;
	IN2_sum(30) <= FA1_l1_c29_Cout;
	IN2_sum(31) <= FA1_l1_c30_Cout;
	IN2_sum(32) <= FA1_l1_c31_Cout;
	IN2_sum(33) <= FA1_l1_c32_Cout;
	IN2_sum(34) <= FA1_l1_c33_Cout;
	IN2_sum(35) <= FA1_l1_c34_Cout;
	IN2_sum(36) <= FA1_l1_c35_Cout;
	IN2_sum(37) <= FA1_l1_c36_Cout;
	IN2_sum(38) <= FA1_l1_c37_Cout;
	IN2_sum(39) <= FA1_l1_c38_Cout;
	IN2_sum(40) <= FA1_l1_c39_Cout;
	IN2_sum(41) <= FA1_l1_c40_Cout;
	IN2_sum(42) <= FA1_l1_c41_Cout;
	IN2_sum(43) <= FA1_l1_c42_Cout;
	IN2_sum(44) <= FA1_l1_c43_Cout;
	IN2_sum(45) <= FA1_l1_c44_Cout;
	IN2_sum(46) <= FA1_l1_c45_Cout;
	IN2_sum(47) <= FA1_l1_c46_Cout;
	IN2_sum(48) <= FA1_l1_c47_Cout;
	IN2_sum(49) <= FA1_l1_c48_Cout;
	IN2_sum(50) <= FA1_l1_c49_Cout;
	IN2_sum(51) <= FA1_l1_c50_Cout;
	IN2_sum(52) <= FA1_l1_c51_Cout;
	IN2_sum(53) <= FA1_l1_c52_Cout;
	IN2_sum(54) <= FA1_l1_c53_Cout;
	IN2_sum(55) <= FA1_l1_c54_Cout;
	IN2_sum(56) <= FA1_l1_c55_Cout;
	IN2_sum(57) <= FA1_l1_c56_Cout;
	IN2_sum(58) <= FA1_l1_c57_Cout;
	IN2_sum(59) <= FA1_l1_c58_Cout;
	IN2_sum(60) <= FA1_l1_c59_Cout;
	IN2_sum(61) <= FA1_l1_c60_Cout;
	IN2_sum(62) <= FA1_l1_c61_Cout;
	IN2_sum(63) <= FA1_l1_c62_Cout;

	pp_generator	:	pp_gen
		PORT MAP (
			A 		=> A,
			B 		=> B,
			pp0		=> pp0,
			pp1		=> pp1,
			pp2		=> pp2,
			pp3		=> pp3,
			pp4		=> pp4,
			pp5		=> pp5,
			pp6		=> pp6,
			pp7		=> pp7,
			pp8		=> pp8,
			pp9		=> pp9,
			pp10	=> pp10,
			pp11	=> pp11,
			pp12	=> pp12,
			pp13	=> pp13,
			pp14	=> pp14,
			pp15	=> pp15,
			pp16	=> pp16
		);

''')
	with open("mbe_part2.vhd") as infile2:
		for line in infile2:
			outfile.write(line)

	outfile.write('''	final_sum : PROCESS (IN1_sum, IN2_sum)
	VARIABLE ptemp : UNSIGNED(63 DOWNTO 0);
	BEGIN
		ptemp 	:= (unsigned(IN1_sum) + unsigned(IN2_sum));
		P 		<= std_logic_vector(ptemp);
	END PROCESS final_sum;

END struct;''')

os.remove("mbe_part1.vhd")
os.remove("mbe_part2.vhd")
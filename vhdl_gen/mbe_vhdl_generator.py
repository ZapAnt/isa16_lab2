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
	outfile.write(name + '''	:	full_adder
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
	outfile.write(name + '''	:	half_adder
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
				bit[6][pp][cpos] = "p0_b" + str(cpos)
			elif cpos < 36:
				if cpos == 33 or cpos == 34:
					bit[6][pp][cpos] = 'S0'
				if cpos == 35:
					bit[6][pp][cpos] = 'S0_neg'
	elif pp == pps_per_level[6]-1:				# pp16
		for cpos in range(0, 64):
			if cpos >= 32:
				bit[6][pp][cpos] = "p" + str(pp) + "_b" + str(cpos-2*pp)
		bit[6][pp][2*(pp-1)] = "S" + str(pp-1)
	else:										# pp1 to pp15
		for cpos in range(0, 64):
			if 2*pp <= cpos <= 2*pp + 32:
				bit[6][pp][cpos] = "p" + str(pp) + "_b" + str(cpos-2*pp)
			elif cpos == 2*pp + 33:
				bit[6][pp][cpos] = 'S' + str(pp) + '_neg'
			elif cpos == 2*pp + 34 and pp != 15:
				bit[6][pp][cpos] = '1'
		bit[6][pp][2*(pp-1)] = "S" + str(pp-1)




###MAIN###
outfile = open("testfile.vhd", "w")
outfile.write('''COMPONENT full_adder IS
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

''')
for l in range(5, -1, -1):						#scan from l=5 to l=0
	for cpos in range(0, 64):					#scan from cpos=0 to cpos=63
		if need_adders(l+1, cpos):
			instantiate_adders(l+1, cpos)
		if not generate_values(l, cpos):
			print("error")

outfile.close()
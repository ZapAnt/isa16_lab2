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

HA1_l6_c24	:	half_adder
	PORT MAP (
		A 		=>	l6_p0_b24,
		B 		=>	l6_p1_b22,
		S 		=>	HA1_l6_c24_S,
		COUT 	=>	HA1_l6_c24_Cout
	);

HA1_l6_c25	:	half_adder
	PORT MAP (
		A 		=>	l6_p0_b25,
		B 		=>	l6_p1_b23,
		S 		=>	HA1_l6_c25_S,
		COUT 	=>	HA1_l6_c25_Cout
	);

FA1_l6_c26	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b26,
		B 		=>	l6_p1_b24,
		CIN 	=>	l6_p2_b22,
		S 		=>	FA1_l6_c26_S,
		COUT 	=>	FA1_l6_c26_Cout
	);

HA1_l6_c26	:	half_adder
	PORT MAP (
		A 		=>	l6_p3_b20,
		B 		=>	l6_p4_b18,
		S 		=>	HA1_l6_c26_S,
		COUT 	=>	HA1_l6_c26_Cout
	);

FA1_l6_c27	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b27,
		B 		=>	l6_p1_b25,
		CIN 	=>	l6_p2_b23,
		S 		=>	FA1_l6_c27_S,
		COUT 	=>	FA1_l6_c27_Cout
	);

HA1_l6_c27	:	half_adder
	PORT MAP (
		A 		=>	l6_p3_b21,
		B 		=>	l6_p4_b19,
		S 		=>	HA1_l6_c27_S,
		COUT 	=>	HA1_l6_c27_Cout
	);

FA1_l6_c28	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b28,
		B 		=>	l6_p1_b26,
		CIN 	=>	l6_p2_b24,
		S 		=>	FA1_l6_c28_S,
		COUT 	=>	FA1_l6_c28_Cout
	);

FA2_l6_c28	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b22,
		B 		=>	l6_p4_b20,
		CIN 	=>	l6_p5_b18,
		S 		=>	FA2_l6_c28_S,
		COUT 	=>	FA2_l6_c28_Cout
	);

HA1_l6_c28	:	half_adder
	PORT MAP (
		A 		=>	l6_p6_b16,
		B 		=>	l6_p7_b14,
		S 		=>	HA1_l6_c28_S,
		COUT 	=>	HA1_l6_c28_Cout
	);

FA1_l6_c29	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b29,
		B 		=>	l6_p1_b27,
		CIN 	=>	l6_p2_b25,
		S 		=>	FA1_l6_c29_S,
		COUT 	=>	FA1_l6_c29_Cout
	);

FA2_l6_c29	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b23,
		B 		=>	l6_p4_b21,
		CIN 	=>	l6_p5_b19,
		S 		=>	FA2_l6_c29_S,
		COUT 	=>	FA2_l6_c29_Cout
	);

HA1_l6_c29	:	half_adder
	PORT MAP (
		A 		=>	l6_p6_b17,
		B 		=>	l6_p7_b15,
		S 		=>	HA1_l6_c29_S,
		COUT 	=>	HA1_l6_c29_Cout
	);

FA1_l6_c30	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b30,
		B 		=>	l6_p1_b28,
		CIN 	=>	l6_p2_b26,
		S 		=>	FA1_l6_c30_S,
		COUT 	=>	FA1_l6_c30_Cout
	);

FA2_l6_c30	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b24,
		B 		=>	l6_p4_b22,
		CIN 	=>	l6_p5_b20,
		S 		=>	FA2_l6_c30_S,
		COUT 	=>	FA2_l6_c30_Cout
	);

FA3_l6_c30	:	full_adder
	PORT MAP (
		A 		=>	l6_p6_b18,
		B 		=>	l6_p7_b16,
		CIN 	=>	l6_p8_b14,
		S 		=>	FA3_l6_c30_S,
		COUT 	=>	FA3_l6_c30_Cout
	);

HA1_l6_c30	:	half_adder
	PORT MAP (
		A 		=>	l6_p9_b12,
		B 		=>	l6_p10_b10,
		S 		=>	HA1_l6_c30_S,
		COUT 	=>	HA1_l6_c30_Cout
	);

FA1_l6_c31	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b31,
		B 		=>	l6_p1_b29,
		CIN 	=>	l6_p2_b27,
		S 		=>	FA1_l6_c31_S,
		COUT 	=>	FA1_l6_c31_Cout
	);

FA2_l6_c31	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b25,
		B 		=>	l6_p4_b23,
		CIN 	=>	l6_p5_b21,
		S 		=>	FA2_l6_c31_S,
		COUT 	=>	FA2_l6_c31_Cout
	);

FA3_l6_c31	:	full_adder
	PORT MAP (
		A 		=>	l6_p6_b19,
		B 		=>	l6_p7_b17,
		CIN 	=>	l6_p8_b15,
		S 		=>	FA3_l6_c31_S,
		COUT 	=>	FA3_l6_c31_Cout
	);

HA1_l6_c31	:	half_adder
	PORT MAP (
		A 		=>	l6_p9_b13,
		B 		=>	l6_p10_b11,
		S 		=>	HA1_l6_c31_S,
		COUT 	=>	HA1_l6_c31_Cout
	);

FA1_l6_c32	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b32,
		B 		=>	l6_p1_b30,
		CIN 	=>	l6_p2_b28,
		S 		=>	FA1_l6_c32_S,
		COUT 	=>	FA1_l6_c32_Cout
	);

FA2_l6_c32	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b26,
		B 		=>	l6_p4_b24,
		CIN 	=>	l6_p5_b22,
		S 		=>	FA2_l6_c32_S,
		COUT 	=>	FA2_l6_c32_Cout
	);

FA3_l6_c32	:	full_adder
	PORT MAP (
		A 		=>	l6_p6_b20,
		B 		=>	l6_p7_b18,
		CIN 	=>	l6_p8_b16,
		S 		=>	FA3_l6_c32_S,
		COUT 	=>	FA3_l6_c32_Cout
	);

FA4_l6_c32	:	full_adder
	PORT MAP (
		A 		=>	l6_p9_b14,
		B 		=>	l6_p10_b12,
		CIN 	=>	l6_p11_b10,
		S 		=>	FA4_l6_c32_S,
		COUT 	=>	FA4_l6_c32_Cout
	);

FA1_l6_c33	:	full_adder
	PORT MAP (
		A 		=>	S0,
		B 		=>	l6_p1_b31,
		CIN 	=>	l6_p2_b29,
		S 		=>	FA1_l6_c33_S,
		COUT 	=>	FA1_l6_c33_Cout
	);

FA2_l6_c33	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b27,
		B 		=>	l6_p4_b25,
		CIN 	=>	l6_p5_b23,
		S 		=>	FA2_l6_c33_S,
		COUT 	=>	FA2_l6_c33_Cout
	);

FA3_l6_c33	:	full_adder
	PORT MAP (
		A 		=>	l6_p6_b21,
		B 		=>	l6_p7_b19,
		CIN 	=>	l6_p8_b17,
		S 		=>	FA3_l6_c33_S,
		COUT 	=>	FA3_l6_c33_Cout
	);

FA4_l6_c33	:	full_adder
	PORT MAP (
		A 		=>	l6_p9_b15,
		B 		=>	l6_p10_b13,
		CIN 	=>	l6_p11_b11,
		S 		=>	FA4_l6_c33_S,
		COUT 	=>	FA4_l6_c33_Cout
	);

FA1_l6_c34	:	full_adder
	PORT MAP (
		A 		=>	S0,
		B 		=>	l6_p1_b32,
		CIN 	=>	l6_p2_b30,
		S 		=>	FA1_l6_c34_S,
		COUT 	=>	FA1_l6_c34_Cout
	);

FA2_l6_c34	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b28,
		B 		=>	l6_p4_b26,
		CIN 	=>	l6_p5_b24,
		S 		=>	FA2_l6_c34_S,
		COUT 	=>	FA2_l6_c34_Cout
	);

FA3_l6_c34	:	full_adder
	PORT MAP (
		A 		=>	l6_p6_b22,
		B 		=>	l6_p7_b20,
		CIN 	=>	l6_p8_b18,
		S 		=>	FA3_l6_c34_S,
		COUT 	=>	FA3_l6_c34_Cout
	);

FA4_l6_c34	:	full_adder
	PORT MAP (
		A 		=>	l6_p9_b16,
		B 		=>	l6_p10_b14,
		CIN 	=>	l6_p11_b12,
		S 		=>	FA4_l6_c34_S,
		COUT 	=>	FA4_l6_c34_Cout
	);

FA1_l6_c35	:	full_adder
	PORT MAP (
		A 		=>	S0_neg,
		B 		=>	S1_neg,
		CIN 	=>	l6_p2_b31,
		S 		=>	FA1_l6_c35_S,
		COUT 	=>	FA1_l6_c35_Cout
	);

FA2_l6_c35	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b29,
		B 		=>	l6_p4_b27,
		CIN 	=>	l6_p5_b25,
		S 		=>	FA2_l6_c35_S,
		COUT 	=>	FA2_l6_c35_Cout
	);

FA3_l6_c35	:	full_adder
	PORT MAP (
		A 		=>	l6_p6_b23,
		B 		=>	l6_p7_b21,
		CIN 	=>	l6_p8_b19,
		S 		=>	FA3_l6_c35_S,
		COUT 	=>	FA3_l6_c35_Cout
	);

FA4_l6_c35	:	full_adder
	PORT MAP (
		A 		=>	l6_p9_b17,
		B 		=>	l6_p10_b15,
		CIN 	=>	l6_p11_b13,
		S 		=>	FA4_l6_c35_S,
		COUT 	=>	FA4_l6_c35_Cout
	);

FA1_l6_c36	:	full_adder
	PORT MAP (
		A 		=>	1,
		B 		=>	l6_p2_b32,
		CIN 	=>	l6_p3_b30,
		S 		=>	FA1_l6_c36_S,
		COUT 	=>	FA1_l6_c36_Cout
	);

FA2_l6_c36	:	full_adder
	PORT MAP (
		A 		=>	l6_p4_b28,
		B 		=>	l6_p5_b26,
		CIN 	=>	l6_p6_b24,
		S 		=>	FA2_l6_c36_S,
		COUT 	=>	FA2_l6_c36_Cout
	);

FA3_l6_c36	:	full_adder
	PORT MAP (
		A 		=>	l6_p7_b22,
		B 		=>	l6_p8_b20,
		CIN 	=>	l6_p9_b18,
		S 		=>	FA3_l6_c36_S,
		COUT 	=>	FA3_l6_c36_Cout
	);

HA1_l6_c36	:	half_adder
	PORT MAP (
		A 		=>	l6_p10_b16,
		B 		=>	l6_p11_b14,
		S 		=>	HA1_l6_c36_S,
		COUT 	=>	HA1_l6_c36_Cout
	);

FA1_l6_c37	:	full_adder
	PORT MAP (
		A 		=>	S2_neg,
		B 		=>	l6_p3_b31,
		CIN 	=>	l6_p4_b29,
		S 		=>	FA1_l6_c37_S,
		COUT 	=>	FA1_l6_c37_Cout
	);

FA2_l6_c37	:	full_adder
	PORT MAP (
		A 		=>	l6_p5_b27,
		B 		=>	l6_p6_b25,
		CIN 	=>	l6_p7_b23,
		S 		=>	FA2_l6_c37_S,
		COUT 	=>	FA2_l6_c37_Cout
	);

FA3_l6_c37	:	full_adder
	PORT MAP (
		A 		=>	l6_p8_b21,
		B 		=>	l6_p9_b19,
		CIN 	=>	l6_p10_b17,
		S 		=>	FA3_l6_c37_S,
		COUT 	=>	FA3_l6_c37_Cout
	);

FA1_l6_c38	:	full_adder
	PORT MAP (
		A 		=>	1,
		B 		=>	l6_p3_b32,
		CIN 	=>	l6_p4_b30,
		S 		=>	FA1_l6_c38_S,
		COUT 	=>	FA1_l6_c38_Cout
	);

FA2_l6_c38	:	full_adder
	PORT MAP (
		A 		=>	l6_p5_b28,
		B 		=>	l6_p6_b26,
		CIN 	=>	l6_p7_b24,
		S 		=>	FA2_l6_c38_S,
		COUT 	=>	FA2_l6_c38_Cout
	);

HA1_l6_c38	:	half_adder
	PORT MAP (
		A 		=>	l6_p8_b22,
		B 		=>	l6_p9_b20,
		S 		=>	HA1_l6_c38_S,
		COUT 	=>	HA1_l6_c38_Cout
	);

FA1_l6_c39	:	full_adder
	PORT MAP (
		A 		=>	S3_neg,
		B 		=>	l6_p4_b31,
		CIN 	=>	l6_p5_b29,
		S 		=>	FA1_l6_c39_S,
		COUT 	=>	FA1_l6_c39_Cout
	);

FA2_l6_c39	:	full_adder
	PORT MAP (
		A 		=>	l6_p6_b27,
		B 		=>	l6_p7_b25,
		CIN 	=>	l6_p8_b23,
		S 		=>	FA2_l6_c39_S,
		COUT 	=>	FA2_l6_c39_Cout
	);

FA1_l6_c40	:	full_adder
	PORT MAP (
		A 		=>	1,
		B 		=>	l6_p4_b32,
		CIN 	=>	l6_p5_b30,
		S 		=>	FA1_l6_c40_S,
		COUT 	=>	FA1_l6_c40_Cout
	);

HA1_l6_c40	:	half_adder
	PORT MAP (
		A 		=>	l6_p6_b28,
		B 		=>	l6_p7_b26,
		S 		=>	HA1_l6_c40_S,
		COUT 	=>	HA1_l6_c40_Cout
	);

FA1_l6_c41	:	full_adder
	PORT MAP (
		A 		=>	S4_neg,
		B 		=>	l6_p5_b31,
		CIN 	=>	l6_p6_b29,
		S 		=>	FA1_l6_c41_S,
		COUT 	=>	FA1_l6_c41_Cout
	);

HA1_l6_c42	:	half_adder
	PORT MAP (
		A 		=>	1,
		B 		=>	l6_p5_b32,
		S 		=>	HA1_l6_c42_S,
		COUT 	=>	HA1_l6_c42_Cout
	);

HA1_l5_c16	:	half_adder
	PORT MAP (
		A 		=>	l6_p0_b16,
		B 		=>	l6_p1_b14,
		S 		=>	HA1_l5_c16_S,
		COUT 	=>	HA1_l5_c16_Cout
	);

HA1_l5_c17	:	half_adder
	PORT MAP (
		A 		=>	l6_p0_b17,
		B 		=>	l6_p1_b15,
		S 		=>	HA1_l5_c17_S,
		COUT 	=>	HA1_l5_c17_Cout
	);

FA1_l5_c18	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b18,
		B 		=>	l6_p1_b16,
		CIN 	=>	l6_p2_b14,
		S 		=>	FA1_l5_c18_S,
		COUT 	=>	FA1_l5_c18_Cout
	);

HA1_l5_c18	:	half_adder
	PORT MAP (
		A 		=>	l6_p3_b12,
		B 		=>	l6_p4_b10,
		S 		=>	HA1_l5_c18_S,
		COUT 	=>	HA1_l5_c18_Cout
	);

FA1_l5_c19	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b19,
		B 		=>	l6_p1_b17,
		CIN 	=>	l6_p2_b15,
		S 		=>	FA1_l5_c19_S,
		COUT 	=>	FA1_l5_c19_Cout
	);

HA1_l5_c19	:	half_adder
	PORT MAP (
		A 		=>	l6_p3_b13,
		B 		=>	l6_p4_b11,
		S 		=>	HA1_l5_c19_S,
		COUT 	=>	HA1_l5_c19_Cout
	);

FA1_l5_c20	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b20,
		B 		=>	l6_p1_b18,
		CIN 	=>	l6_p2_b16,
		S 		=>	FA1_l5_c20_S,
		COUT 	=>	FA1_l5_c20_Cout
	);

FA2_l5_c20	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b14,
		B 		=>	l6_p4_b12,
		CIN 	=>	l6_p5_b10,
		S 		=>	FA2_l5_c20_S,
		COUT 	=>	FA2_l5_c20_Cout
	);

HA1_l5_c20	:	half_adder
	PORT MAP (
		A 		=>	l6_p6_b8,
		B 		=>	l6_p7_b6,
		S 		=>	HA1_l5_c20_S,
		COUT 	=>	HA1_l5_c20_Cout
	);

FA1_l5_c21	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b21,
		B 		=>	l6_p1_b19,
		CIN 	=>	l6_p2_b17,
		S 		=>	FA1_l5_c21_S,
		COUT 	=>	FA1_l5_c21_Cout
	);

FA2_l5_c21	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b15,
		B 		=>	l6_p4_b13,
		CIN 	=>	l6_p5_b11,
		S 		=>	FA2_l5_c21_S,
		COUT 	=>	FA2_l5_c21_Cout
	);

HA1_l5_c21	:	half_adder
	PORT MAP (
		A 		=>	l6_p6_b9,
		B 		=>	l6_p7_b7,
		S 		=>	HA1_l5_c21_S,
		COUT 	=>	HA1_l5_c21_Cout
	);

FA1_l5_c22	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b22,
		B 		=>	l6_p1_b20,
		CIN 	=>	l6_p2_b18,
		S 		=>	FA1_l5_c22_S,
		COUT 	=>	FA1_l5_c22_Cout
	);

FA2_l5_c22	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b16,
		B 		=>	l6_p4_b14,
		CIN 	=>	l6_p5_b12,
		S 		=>	FA2_l5_c22_S,
		COUT 	=>	FA2_l5_c22_Cout
	);

FA3_l5_c22	:	full_adder
	PORT MAP (
		A 		=>	l6_p6_b10,
		B 		=>	l6_p7_b8,
		CIN 	=>	l6_p8_b6,
		S 		=>	FA3_l5_c22_S,
		COUT 	=>	FA3_l5_c22_Cout
	);

HA1_l5_c22	:	half_adder
	PORT MAP (
		A 		=>	l6_p9_b4,
		B 		=>	l6_p10_b2,
		S 		=>	HA1_l5_c22_S,
		COUT 	=>	HA1_l5_c22_Cout
	);

FA1_l5_c23	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b23,
		B 		=>	l6_p1_b21,
		CIN 	=>	l6_p2_b19,
		S 		=>	FA1_l5_c23_S,
		COUT 	=>	FA1_l5_c23_Cout
	);

FA2_l5_c23	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b17,
		B 		=>	l6_p4_b15,
		CIN 	=>	l6_p5_b13,
		S 		=>	FA2_l5_c23_S,
		COUT 	=>	FA2_l5_c23_Cout
	);

FA3_l5_c23	:	full_adder
	PORT MAP (
		A 		=>	l6_p6_b11,
		B 		=>	l6_p7_b9,
		CIN 	=>	l6_p8_b7,
		S 		=>	FA3_l5_c23_S,
		COUT 	=>	FA3_l5_c23_Cout
	);

HA1_l5_c23	:	half_adder
	PORT MAP (
		A 		=>	l6_p9_b5,
		B 		=>	l6_p10_b3,
		S 		=>	HA1_l5_c23_S,
		COUT 	=>	HA1_l5_c23_Cout
	);

FA1_l5_c24	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c24_S,
		B 		=>	l6_p2_b20,
		CIN 	=>	l6_p3_b18,
		S 		=>	FA1_l5_c24_S,
		COUT 	=>	FA1_l5_c24_Cout
	);

FA2_l5_c24	:	full_adder
	PORT MAP (
		A 		=>	l6_p4_b16,
		B 		=>	l6_p5_b14,
		CIN 	=>	l6_p6_b12,
		S 		=>	FA2_l5_c24_S,
		COUT 	=>	FA2_l5_c24_Cout
	);

FA3_l5_c24	:	full_adder
	PORT MAP (
		A 		=>	l6_p7_b10,
		B 		=>	l6_p8_b8,
		CIN 	=>	l6_p9_b6,
		S 		=>	FA3_l5_c24_S,
		COUT 	=>	FA3_l5_c24_Cout
	);

FA4_l5_c24	:	full_adder
	PORT MAP (
		A 		=>	l6_p10_b4,
		B 		=>	l6_p11_b2,
		CIN 	=>	l6_p12_b0,
		S 		=>	FA4_l5_c24_S,
		COUT 	=>	FA4_l5_c24_Cout
	);

FA1_l5_c25	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c24_Cout,
		B 		=>	HA1_l6_c25_S,
		CIN 	=>	l6_p2_b21,
		S 		=>	FA1_l5_c25_S,
		COUT 	=>	FA1_l5_c25_Cout
	);

FA2_l5_c25	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b19,
		B 		=>	l6_p4_b17,
		CIN 	=>	l6_p5_b15,
		S 		=>	FA2_l5_c25_S,
		COUT 	=>	FA2_l5_c25_Cout
	);

FA3_l5_c25	:	full_adder
	PORT MAP (
		A 		=>	l6_p6_b13,
		B 		=>	l6_p7_b11,
		CIN 	=>	l6_p8_b9,
		S 		=>	FA3_l5_c25_S,
		COUT 	=>	FA3_l5_c25_Cout
	);

FA4_l5_c25	:	full_adder
	PORT MAP (
		A 		=>	l6_p9_b7,
		B 		=>	l6_p10_b5,
		CIN 	=>	l6_p11_b3,
		S 		=>	FA4_l5_c25_S,
		COUT 	=>	FA4_l5_c25_Cout
	);

FA1_l5_c26	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c25_Cout,
		B 		=>	HA1_l6_c26_S,
		CIN 	=>	FA1_l6_c26_S,
		S 		=>	FA1_l5_c26_S,
		COUT 	=>	FA1_l5_c26_Cout
	);

FA2_l5_c26	:	full_adder
	PORT MAP (
		A 		=>	l6_p5_b16,
		B 		=>	l6_p6_b14,
		CIN 	=>	l6_p7_b12,
		S 		=>	FA2_l5_c26_S,
		COUT 	=>	FA2_l5_c26_Cout
	);

FA3_l5_c26	:	full_adder
	PORT MAP (
		A 		=>	l6_p8_b10,
		B 		=>	l6_p9_b8,
		CIN 	=>	l6_p10_b6,
		S 		=>	FA3_l5_c26_S,
		COUT 	=>	FA3_l5_c26_Cout
	);

FA4_l5_c26	:	full_adder
	PORT MAP (
		A 		=>	l6_p11_b4,
		B 		=>	l6_p12_b2,
		CIN 	=>	l6_p13_b0,
		S 		=>	FA4_l5_c26_S,
		COUT 	=>	FA4_l5_c26_Cout
	);

FA1_l5_c27	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c26_Cout,
		B 		=>	FA1_l6_c26_Cout,
		CIN 	=>	HA1_l6_c27_S,
		S 		=>	FA1_l5_c27_S,
		COUT 	=>	FA1_l5_c27_Cout
	);

FA2_l5_c27	:	full_adder
	PORT MAP (
		A 		=>	FA1_l6_c27_S,
		B 		=>	l6_p5_b17,
		CIN 	=>	l6_p6_b15,
		S 		=>	FA2_l5_c27_S,
		COUT 	=>	FA2_l5_c27_Cout
	);

FA3_l5_c27	:	full_adder
	PORT MAP (
		A 		=>	l6_p7_b13,
		B 		=>	l6_p8_b11,
		CIN 	=>	l6_p9_b9,
		S 		=>	FA3_l5_c27_S,
		COUT 	=>	FA3_l5_c27_Cout
	);

FA4_l5_c27	:	full_adder
	PORT MAP (
		A 		=>	l6_p10_b7,
		B 		=>	l6_p11_b5,
		CIN 	=>	l6_p12_b3,
		S 		=>	FA4_l5_c27_S,
		COUT 	=>	FA4_l5_c27_Cout
	);

FA1_l5_c28	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c27_Cout,
		B 		=>	FA1_l6_c27_Cout,
		CIN 	=>	HA1_l6_c28_S,
		S 		=>	FA1_l5_c28_S,
		COUT 	=>	FA1_l5_c28_Cout
	);

FA2_l5_c28	:	full_adder
	PORT MAP (
		A 		=>	FA2_l6_c28_S,
		B 		=>	FA1_l6_c28_S,
		CIN 	=>	l6_p8_b12,
		S 		=>	FA2_l5_c28_S,
		COUT 	=>	FA2_l5_c28_Cout
	);

FA3_l5_c28	:	full_adder
	PORT MAP (
		A 		=>	l6_p9_b10,
		B 		=>	l6_p10_b8,
		CIN 	=>	l6_p11_b6,
		S 		=>	FA3_l5_c28_S,
		COUT 	=>	FA3_l5_c28_Cout
	);

FA4_l5_c28	:	full_adder
	PORT MAP (
		A 		=>	l6_p12_b4,
		B 		=>	l6_p13_b2,
		CIN 	=>	l6_p14_b0,
		S 		=>	FA4_l5_c28_S,
		COUT 	=>	FA4_l5_c28_Cout
	);

FA1_l5_c29	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c28_Cout,
		B 		=>	FA2_l6_c28_Cout,
		CIN 	=>	FA1_l6_c28_Cout,
		S 		=>	FA1_l5_c29_S,
		COUT 	=>	FA1_l5_c29_Cout
	);

FA2_l5_c29	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c29_S,
		B 		=>	FA2_l6_c29_S,
		CIN 	=>	FA1_l6_c29_S,
		S 		=>	FA2_l5_c29_S,
		COUT 	=>	FA2_l5_c29_Cout
	);

FA3_l5_c29	:	full_adder
	PORT MAP (
		A 		=>	l6_p8_b13,
		B 		=>	l6_p9_b11,
		CIN 	=>	l6_p10_b9,
		S 		=>	FA3_l5_c29_S,
		COUT 	=>	FA3_l5_c29_Cout
	);

FA4_l5_c29	:	full_adder
	PORT MAP (
		A 		=>	l6_p11_b7,
		B 		=>	l6_p12_b5,
		CIN 	=>	l6_p13_b3,
		S 		=>	FA4_l5_c29_S,
		COUT 	=>	FA4_l5_c29_Cout
	);

FA1_l5_c30	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c29_Cout,
		B 		=>	FA2_l6_c29_Cout,
		CIN 	=>	FA1_l6_c29_Cout,
		S 		=>	FA1_l5_c30_S,
		COUT 	=>	FA1_l5_c30_Cout
	);

FA2_l5_c30	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c30_S,
		B 		=>	FA3_l6_c30_S,
		CIN 	=>	FA2_l6_c30_S,
		S 		=>	FA2_l5_c30_S,
		COUT 	=>	FA2_l5_c30_Cout
	);

FA3_l5_c30	:	full_adder
	PORT MAP (
		A 		=>	FA1_l6_c30_S,
		B 		=>	l6_p11_b8,
		CIN 	=>	l6_p12_b6,
		S 		=>	FA3_l5_c30_S,
		COUT 	=>	FA3_l5_c30_Cout
	);

FA4_l5_c30	:	full_adder
	PORT MAP (
		A 		=>	l6_p13_b4,
		B 		=>	l6_p14_b2,
		CIN 	=>	l6_p15_b0,
		S 		=>	FA4_l5_c30_S,
		COUT 	=>	FA4_l5_c30_Cout
	);

FA1_l5_c31	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c30_Cout,
		B 		=>	FA3_l6_c30_Cout,
		CIN 	=>	FA2_l6_c30_Cout,
		S 		=>	FA1_l5_c31_S,
		COUT 	=>	FA1_l5_c31_Cout
	);

FA2_l5_c31	:	full_adder
	PORT MAP (
		A 		=>	FA1_l6_c30_Cout,
		B 		=>	HA1_l6_c31_S,
		CIN 	=>	FA3_l6_c31_S,
		S 		=>	FA2_l5_c31_S,
		COUT 	=>	FA2_l5_c31_Cout
	);

FA3_l5_c31	:	full_adder
	PORT MAP (
		A 		=>	FA2_l6_c31_S,
		B 		=>	FA1_l6_c31_S,
		CIN 	=>	l6_p11_b9,
		S 		=>	FA3_l5_c31_S,
		COUT 	=>	FA3_l5_c31_Cout
	);

FA4_l5_c31	:	full_adder
	PORT MAP (
		A 		=>	l6_p12_b7,
		B 		=>	l6_p13_b5,
		CIN 	=>	l6_p14_b3,
		S 		=>	FA4_l5_c31_S,
		COUT 	=>	FA4_l5_c31_Cout
	);

FA1_l5_c32	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c31_Cout,
		B 		=>	FA3_l6_c31_Cout,
		CIN 	=>	FA2_l6_c31_Cout,
		S 		=>	FA1_l5_c32_S,
		COUT 	=>	FA1_l5_c32_Cout
	);

FA2_l5_c32	:	full_adder
	PORT MAP (
		A 		=>	FA1_l6_c31_Cout,
		B 		=>	FA4_l6_c32_S,
		CIN 	=>	FA3_l6_c32_S,
		S 		=>	FA2_l5_c32_S,
		COUT 	=>	FA2_l5_c32_Cout
	);

FA3_l5_c32	:	full_adder
	PORT MAP (
		A 		=>	FA2_l6_c32_S,
		B 		=>	FA1_l6_c32_S,
		CIN 	=>	l6_p12_b8,
		S 		=>	FA3_l5_c32_S,
		COUT 	=>	FA3_l5_c32_Cout
	);

FA4_l5_c32	:	full_adder
	PORT MAP (
		A 		=>	l6_p13_b6,
		B 		=>	l6_p14_b4,
		CIN 	=>	l6_p15_b2,
		S 		=>	FA4_l5_c32_S,
		COUT 	=>	FA4_l5_c32_Cout
	);

FA1_l5_c33	:	full_adder
	PORT MAP (
		A 		=>	FA4_l6_c32_Cout,
		B 		=>	FA3_l6_c32_Cout,
		CIN 	=>	FA2_l6_c32_Cout,
		S 		=>	FA1_l5_c33_S,
		COUT 	=>	FA1_l5_c33_Cout
	);

FA2_l5_c33	:	full_adder
	PORT MAP (
		A 		=>	FA1_l6_c32_Cout,
		B 		=>	FA4_l6_c33_S,
		CIN 	=>	FA3_l6_c33_S,
		S 		=>	FA2_l5_c33_S,
		COUT 	=>	FA2_l5_c33_Cout
	);

FA3_l5_c33	:	full_adder
	PORT MAP (
		A 		=>	FA2_l6_c33_S,
		B 		=>	FA1_l6_c33_S,
		CIN 	=>	l6_p12_b9,
		S 		=>	FA3_l5_c33_S,
		COUT 	=>	FA3_l5_c33_Cout
	);

FA4_l5_c33	:	full_adder
	PORT MAP (
		A 		=>	l6_p13_b7,
		B 		=>	l6_p14_b5,
		CIN 	=>	l6_p15_b3,
		S 		=>	FA4_l5_c33_S,
		COUT 	=>	FA4_l5_c33_Cout
	);

FA1_l5_c34	:	full_adder
	PORT MAP (
		A 		=>	FA4_l6_c33_Cout,
		B 		=>	FA3_l6_c33_Cout,
		CIN 	=>	FA2_l6_c33_Cout,
		S 		=>	FA1_l5_c34_S,
		COUT 	=>	FA1_l5_c34_Cout
	);

FA2_l5_c34	:	full_adder
	PORT MAP (
		A 		=>	FA1_l6_c33_Cout,
		B 		=>	FA4_l6_c34_S,
		CIN 	=>	FA3_l6_c34_S,
		S 		=>	FA2_l5_c34_S,
		COUT 	=>	FA2_l5_c34_Cout
	);

FA3_l5_c34	:	full_adder
	PORT MAP (
		A 		=>	FA2_l6_c34_S,
		B 		=>	FA1_l6_c34_S,
		CIN 	=>	l6_p12_b10,
		S 		=>	FA3_l5_c34_S,
		COUT 	=>	FA3_l5_c34_Cout
	);

FA4_l5_c34	:	full_adder
	PORT MAP (
		A 		=>	l6_p13_b8,
		B 		=>	l6_p14_b6,
		CIN 	=>	l6_p15_b4,
		S 		=>	FA4_l5_c34_S,
		COUT 	=>	FA4_l5_c34_Cout
	);

FA1_l5_c35	:	full_adder
	PORT MAP (
		A 		=>	FA4_l6_c34_Cout,
		B 		=>	FA3_l6_c34_Cout,
		CIN 	=>	FA2_l6_c34_Cout,
		S 		=>	FA1_l5_c35_S,
		COUT 	=>	FA1_l5_c35_Cout
	);

FA2_l5_c35	:	full_adder
	PORT MAP (
		A 		=>	FA1_l6_c34_Cout,
		B 		=>	FA4_l6_c35_S,
		CIN 	=>	FA3_l6_c35_S,
		S 		=>	FA2_l5_c35_S,
		COUT 	=>	FA2_l5_c35_Cout
	);

FA3_l5_c35	:	full_adder
	PORT MAP (
		A 		=>	FA2_l6_c35_S,
		B 		=>	FA1_l6_c35_S,
		CIN 	=>	l6_p12_b11,
		S 		=>	FA3_l5_c35_S,
		COUT 	=>	FA3_l5_c35_Cout
	);

FA4_l5_c35	:	full_adder
	PORT MAP (
		A 		=>	l6_p13_b9,
		B 		=>	l6_p14_b7,
		CIN 	=>	l6_p15_b5,
		S 		=>	FA4_l5_c35_S,
		COUT 	=>	FA4_l5_c35_Cout
	);

FA1_l5_c36	:	full_adder
	PORT MAP (
		A 		=>	FA4_l6_c35_Cout,
		B 		=>	FA3_l6_c35_Cout,
		CIN 	=>	FA2_l6_c35_Cout,
		S 		=>	FA1_l5_c36_S,
		COUT 	=>	FA1_l5_c36_Cout
	);

FA2_l5_c36	:	full_adder
	PORT MAP (
		A 		=>	FA1_l6_c35_Cout,
		B 		=>	HA1_l6_c36_S,
		CIN 	=>	FA3_l6_c36_S,
		S 		=>	FA2_l5_c36_S,
		COUT 	=>	FA2_l5_c36_Cout
	);

FA3_l5_c36	:	full_adder
	PORT MAP (
		A 		=>	FA2_l6_c36_S,
		B 		=>	FA1_l6_c36_S,
		CIN 	=>	l6_p12_b12,
		S 		=>	FA3_l5_c36_S,
		COUT 	=>	FA3_l5_c36_Cout
	);

FA4_l5_c36	:	full_adder
	PORT MAP (
		A 		=>	l6_p13_b10,
		B 		=>	l6_p14_b8,
		CIN 	=>	l6_p15_b6,
		S 		=>	FA4_l5_c36_S,
		COUT 	=>	FA4_l5_c36_Cout
	);

FA1_l5_c37	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c36_Cout,
		B 		=>	FA3_l6_c36_Cout,
		CIN 	=>	FA2_l6_c36_Cout,
		S 		=>	FA1_l5_c37_S,
		COUT 	=>	FA1_l5_c37_Cout
	);

FA2_l5_c37	:	full_adder
	PORT MAP (
		A 		=>	FA1_l6_c36_Cout,
		B 		=>	FA3_l6_c37_S,
		CIN 	=>	FA2_l6_c37_S,
		S 		=>	FA2_l5_c37_S,
		COUT 	=>	FA2_l5_c37_Cout
	);

FA3_l5_c37	:	full_adder
	PORT MAP (
		A 		=>	FA1_l6_c37_S,
		B 		=>	l6_p11_b15,
		CIN 	=>	l6_p12_b13,
		S 		=>	FA3_l5_c37_S,
		COUT 	=>	FA3_l5_c37_Cout
	);

FA4_l5_c37	:	full_adder
	PORT MAP (
		A 		=>	l6_p13_b11,
		B 		=>	l6_p14_b9,
		CIN 	=>	l6_p15_b7,
		S 		=>	FA4_l5_c37_S,
		COUT 	=>	FA4_l5_c37_Cout
	);

FA1_l5_c38	:	full_adder
	PORT MAP (
		A 		=>	FA3_l6_c37_Cout,
		B 		=>	FA2_l6_c37_Cout,
		CIN 	=>	FA1_l6_c37_Cout,
		S 		=>	FA1_l5_c38_S,
		COUT 	=>	FA1_l5_c38_Cout
	);

FA2_l5_c38	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c38_S,
		B 		=>	FA2_l6_c38_S,
		CIN 	=>	FA1_l6_c38_S,
		S 		=>	FA2_l5_c38_S,
		COUT 	=>	FA2_l5_c38_Cout
	);

FA3_l5_c38	:	full_adder
	PORT MAP (
		A 		=>	l6_p10_b18,
		B 		=>	l6_p11_b16,
		CIN 	=>	l6_p12_b14,
		S 		=>	FA3_l5_c38_S,
		COUT 	=>	FA3_l5_c38_Cout
	);

FA4_l5_c38	:	full_adder
	PORT MAP (
		A 		=>	l6_p13_b12,
		B 		=>	l6_p14_b10,
		CIN 	=>	l6_p15_b8,
		S 		=>	FA4_l5_c38_S,
		COUT 	=>	FA4_l5_c38_Cout
	);

FA1_l5_c39	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c38_Cout,
		B 		=>	FA2_l6_c38_Cout,
		CIN 	=>	FA1_l6_c38_Cout,
		S 		=>	FA1_l5_c39_S,
		COUT 	=>	FA1_l5_c39_Cout
	);

FA2_l5_c39	:	full_adder
	PORT MAP (
		A 		=>	FA2_l6_c39_S,
		B 		=>	FA1_l6_c39_S,
		CIN 	=>	l6_p9_b21,
		S 		=>	FA2_l5_c39_S,
		COUT 	=>	FA2_l5_c39_Cout
	);

FA3_l5_c39	:	full_adder
	PORT MAP (
		A 		=>	l6_p10_b19,
		B 		=>	l6_p11_b17,
		CIN 	=>	l6_p12_b15,
		S 		=>	FA3_l5_c39_S,
		COUT 	=>	FA3_l5_c39_Cout
	);

FA4_l5_c39	:	full_adder
	PORT MAP (
		A 		=>	l6_p13_b13,
		B 		=>	l6_p14_b11,
		CIN 	=>	l6_p15_b9,
		S 		=>	FA4_l5_c39_S,
		COUT 	=>	FA4_l5_c39_Cout
	);

FA1_l5_c40	:	full_adder
	PORT MAP (
		A 		=>	FA2_l6_c39_Cout,
		B 		=>	FA1_l6_c39_Cout,
		CIN 	=>	HA1_l6_c40_S,
		S 		=>	FA1_l5_c40_S,
		COUT 	=>	FA1_l5_c40_Cout
	);

FA2_l5_c40	:	full_adder
	PORT MAP (
		A 		=>	FA1_l6_c40_S,
		B 		=>	l6_p8_b24,
		CIN 	=>	l6_p9_b22,
		S 		=>	FA2_l5_c40_S,
		COUT 	=>	FA2_l5_c40_Cout
	);

FA3_l5_c40	:	full_adder
	PORT MAP (
		A 		=>	l6_p10_b20,
		B 		=>	l6_p11_b18,
		CIN 	=>	l6_p12_b16,
		S 		=>	FA3_l5_c40_S,
		COUT 	=>	FA3_l5_c40_Cout
	);

FA4_l5_c40	:	full_adder
	PORT MAP (
		A 		=>	l6_p13_b14,
		B 		=>	l6_p14_b12,
		CIN 	=>	l6_p15_b10,
		S 		=>	FA4_l5_c40_S,
		COUT 	=>	FA4_l5_c40_Cout
	);

FA1_l5_c41	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c40_Cout,
		B 		=>	FA1_l6_c40_Cout,
		CIN 	=>	FA1_l6_c41_S,
		S 		=>	FA1_l5_c41_S,
		COUT 	=>	FA1_l5_c41_Cout
	);

FA2_l5_c41	:	full_adder
	PORT MAP (
		A 		=>	l6_p7_b27,
		B 		=>	l6_p8_b25,
		CIN 	=>	l6_p9_b23,
		S 		=>	FA2_l5_c41_S,
		COUT 	=>	FA2_l5_c41_Cout
	);

FA3_l5_c41	:	full_adder
	PORT MAP (
		A 		=>	l6_p10_b21,
		B 		=>	l6_p11_b19,
		CIN 	=>	l6_p12_b17,
		S 		=>	FA3_l5_c41_S,
		COUT 	=>	FA3_l5_c41_Cout
	);

FA4_l5_c41	:	full_adder
	PORT MAP (
		A 		=>	l6_p13_b15,
		B 		=>	l6_p14_b13,
		CIN 	=>	l6_p15_b11,
		S 		=>	FA4_l5_c41_S,
		COUT 	=>	FA4_l5_c41_Cout
	);

FA1_l5_c42	:	full_adder
	PORT MAP (
		A 		=>	FA1_l6_c41_Cout,
		B 		=>	HA1_l6_c42_S,
		CIN 	=>	l6_p6_b30,
		S 		=>	FA1_l5_c42_S,
		COUT 	=>	FA1_l5_c42_Cout
	);

FA2_l5_c42	:	full_adder
	PORT MAP (
		A 		=>	l6_p7_b28,
		B 		=>	l6_p8_b26,
		CIN 	=>	l6_p9_b24,
		S 		=>	FA2_l5_c42_S,
		COUT 	=>	FA2_l5_c42_Cout
	);

FA3_l5_c42	:	full_adder
	PORT MAP (
		A 		=>	l6_p10_b22,
		B 		=>	l6_p11_b20,
		CIN 	=>	l6_p12_b18,
		S 		=>	FA3_l5_c42_S,
		COUT 	=>	FA3_l5_c42_Cout
	);

FA4_l5_c42	:	full_adder
	PORT MAP (
		A 		=>	l6_p13_b16,
		B 		=>	l6_p14_b14,
		CIN 	=>	l6_p15_b12,
		S 		=>	FA4_l5_c42_S,
		COUT 	=>	FA4_l5_c42_Cout
	);

FA1_l5_c43	:	full_adder
	PORT MAP (
		A 		=>	HA1_l6_c42_Cout,
		B 		=>	S5_neg,
		CIN 	=>	l6_p6_b31,
		S 		=>	FA1_l5_c43_S,
		COUT 	=>	FA1_l5_c43_Cout
	);

FA2_l5_c43	:	full_adder
	PORT MAP (
		A 		=>	l6_p7_b29,
		B 		=>	l6_p8_b27,
		CIN 	=>	l6_p9_b25,
		S 		=>	FA2_l5_c43_S,
		COUT 	=>	FA2_l5_c43_Cout
	);

FA3_l5_c43	:	full_adder
	PORT MAP (
		A 		=>	l6_p10_b23,
		B 		=>	l6_p11_b21,
		CIN 	=>	l6_p12_b19,
		S 		=>	FA3_l5_c43_S,
		COUT 	=>	FA3_l5_c43_Cout
	);

FA4_l5_c43	:	full_adder
	PORT MAP (
		A 		=>	l6_p13_b17,
		B 		=>	l6_p14_b15,
		CIN 	=>	l6_p15_b13,
		S 		=>	FA4_l5_c43_S,
		COUT 	=>	FA4_l5_c43_Cout
	);

FA1_l5_c44	:	full_adder
	PORT MAP (
		A 		=>	1,
		B 		=>	l6_p6_b32,
		CIN 	=>	l6_p7_b30,
		S 		=>	FA1_l5_c44_S,
		COUT 	=>	FA1_l5_c44_Cout
	);

FA2_l5_c44	:	full_adder
	PORT MAP (
		A 		=>	l6_p8_b28,
		B 		=>	l6_p9_b26,
		CIN 	=>	l6_p10_b24,
		S 		=>	FA2_l5_c44_S,
		COUT 	=>	FA2_l5_c44_Cout
	);

FA3_l5_c44	:	full_adder
	PORT MAP (
		A 		=>	l6_p11_b22,
		B 		=>	l6_p12_b20,
		CIN 	=>	l6_p13_b18,
		S 		=>	FA3_l5_c44_S,
		COUT 	=>	FA3_l5_c44_Cout
	);

HA1_l5_c44	:	half_adder
	PORT MAP (
		A 		=>	l6_p14_b16,
		B 		=>	l6_p15_b14,
		S 		=>	HA1_l5_c44_S,
		COUT 	=>	HA1_l5_c44_Cout
	);

FA1_l5_c45	:	full_adder
	PORT MAP (
		A 		=>	S6_neg,
		B 		=>	l6_p7_b31,
		CIN 	=>	l6_p8_b29,
		S 		=>	FA1_l5_c45_S,
		COUT 	=>	FA1_l5_c45_Cout
	);

FA2_l5_c45	:	full_adder
	PORT MAP (
		A 		=>	l6_p9_b27,
		B 		=>	l6_p10_b25,
		CIN 	=>	l6_p11_b23,
		S 		=>	FA2_l5_c45_S,
		COUT 	=>	FA2_l5_c45_Cout
	);

FA3_l5_c45	:	full_adder
	PORT MAP (
		A 		=>	l6_p12_b21,
		B 		=>	l6_p13_b19,
		CIN 	=>	l6_p14_b17,
		S 		=>	FA3_l5_c45_S,
		COUT 	=>	FA3_l5_c45_Cout
	);

FA1_l5_c46	:	full_adder
	PORT MAP (
		A 		=>	1,
		B 		=>	l6_p7_b32,
		CIN 	=>	l6_p8_b30,
		S 		=>	FA1_l5_c46_S,
		COUT 	=>	FA1_l5_c46_Cout
	);

FA2_l5_c46	:	full_adder
	PORT MAP (
		A 		=>	l6_p9_b28,
		B 		=>	l6_p10_b26,
		CIN 	=>	l6_p11_b24,
		S 		=>	FA2_l5_c46_S,
		COUT 	=>	FA2_l5_c46_Cout
	);

HA1_l5_c46	:	half_adder
	PORT MAP (
		A 		=>	l6_p12_b22,
		B 		=>	l6_p13_b20,
		S 		=>	HA1_l5_c46_S,
		COUT 	=>	HA1_l5_c46_Cout
	);

FA1_l5_c47	:	full_adder
	PORT MAP (
		A 		=>	S7_neg,
		B 		=>	l6_p8_b31,
		CIN 	=>	l6_p9_b29,
		S 		=>	FA1_l5_c47_S,
		COUT 	=>	FA1_l5_c47_Cout
	);

FA2_l5_c47	:	full_adder
	PORT MAP (
		A 		=>	l6_p10_b27,
		B 		=>	l6_p11_b25,
		CIN 	=>	l6_p12_b23,
		S 		=>	FA2_l5_c47_S,
		COUT 	=>	FA2_l5_c47_Cout
	);

FA1_l5_c48	:	full_adder
	PORT MAP (
		A 		=>	1,
		B 		=>	l6_p8_b32,
		CIN 	=>	l6_p9_b30,
		S 		=>	FA1_l5_c48_S,
		COUT 	=>	FA1_l5_c48_Cout
	);

HA1_l5_c48	:	half_adder
	PORT MAP (
		A 		=>	l6_p10_b28,
		B 		=>	l6_p11_b26,
		S 		=>	HA1_l5_c48_S,
		COUT 	=>	HA1_l5_c48_Cout
	);

FA1_l5_c49	:	full_adder
	PORT MAP (
		A 		=>	S8_neg,
		B 		=>	l6_p9_b31,
		CIN 	=>	l6_p10_b29,
		S 		=>	FA1_l5_c49_S,
		COUT 	=>	FA1_l5_c49_Cout
	);

HA1_l5_c50	:	half_adder
	PORT MAP (
		A 		=>	1,
		B 		=>	l6_p9_b32,
		S 		=>	HA1_l5_c50_S,
		COUT 	=>	HA1_l5_c50_Cout
	);

HA1_l4_c10	:	half_adder
	PORT MAP (
		A 		=>	l6_p0_b10,
		B 		=>	l6_p1_b8,
		S 		=>	HA1_l4_c10_S,
		COUT 	=>	HA1_l4_c10_Cout
	);

HA1_l4_c11	:	half_adder
	PORT MAP (
		A 		=>	l6_p0_b11,
		B 		=>	l6_p1_b9,
		S 		=>	HA1_l4_c11_S,
		COUT 	=>	HA1_l4_c11_Cout
	);

FA1_l4_c12	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b12,
		B 		=>	l6_p1_b10,
		CIN 	=>	l6_p2_b8,
		S 		=>	FA1_l4_c12_S,
		COUT 	=>	FA1_l4_c12_Cout
	);

HA1_l4_c12	:	half_adder
	PORT MAP (
		A 		=>	l6_p3_b6,
		B 		=>	l6_p4_b4,
		S 		=>	HA1_l4_c12_S,
		COUT 	=>	HA1_l4_c12_Cout
	);

FA1_l4_c13	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b13,
		B 		=>	l6_p1_b11,
		CIN 	=>	l6_p2_b9,
		S 		=>	FA1_l4_c13_S,
		COUT 	=>	FA1_l4_c13_Cout
	);

HA1_l4_c13	:	half_adder
	PORT MAP (
		A 		=>	l6_p3_b7,
		B 		=>	l6_p4_b5,
		S 		=>	HA1_l4_c13_S,
		COUT 	=>	HA1_l4_c13_Cout
	);

FA1_l4_c14	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b14,
		B 		=>	l6_p1_b12,
		CIN 	=>	l6_p2_b10,
		S 		=>	FA1_l4_c14_S,
		COUT 	=>	FA1_l4_c14_Cout
	);

FA2_l4_c14	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b8,
		B 		=>	l6_p4_b6,
		CIN 	=>	l6_p5_b4,
		S 		=>	FA2_l4_c14_S,
		COUT 	=>	FA2_l4_c14_Cout
	);

HA1_l4_c14	:	half_adder
	PORT MAP (
		A 		=>	l6_p6_b2,
		B 		=>	l6_p7_b0,
		S 		=>	HA1_l4_c14_S,
		COUT 	=>	HA1_l4_c14_Cout
	);

FA1_l4_c15	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b15,
		B 		=>	l6_p1_b13,
		CIN 	=>	l6_p2_b11,
		S 		=>	FA1_l4_c15_S,
		COUT 	=>	FA1_l4_c15_Cout
	);

FA2_l4_c15	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b9,
		B 		=>	l6_p4_b7,
		CIN 	=>	l6_p5_b5,
		S 		=>	FA2_l4_c15_S,
		COUT 	=>	FA2_l4_c15_Cout
	);

HA1_l4_c15	:	half_adder
	PORT MAP (
		A 		=>	l6_p6_b3,
		B 		=>	l6_p7_b1,
		S 		=>	HA1_l4_c15_S,
		COUT 	=>	HA1_l4_c15_Cout
	);

FA1_l4_c16	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c16_S,
		B 		=>	l6_p2_b12,
		CIN 	=>	l6_p3_b10,
		S 		=>	FA1_l4_c16_S,
		COUT 	=>	FA1_l4_c16_Cout
	);

FA2_l4_c16	:	full_adder
	PORT MAP (
		A 		=>	l6_p4_b8,
		B 		=>	l6_p5_b6,
		CIN 	=>	l6_p6_b4,
		S 		=>	FA2_l4_c16_S,
		COUT 	=>	FA2_l4_c16_Cout
	);

FA3_l4_c16	:	full_adder
	PORT MAP (
		A 		=>	l6_p7_b2,
		B 		=>	l6_p8_b0,
		CIN 	=>	S8,
		S 		=>	FA3_l4_c16_S,
		COUT 	=>	FA3_l4_c16_Cout
	);

FA1_l4_c17	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c16_Cout,
		B 		=>	HA1_l5_c17_S,
		CIN 	=>	l6_p2_b13,
		S 		=>	FA1_l4_c17_S,
		COUT 	=>	FA1_l4_c17_Cout
	);

FA2_l4_c17	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b11,
		B 		=>	l6_p4_b9,
		CIN 	=>	l6_p5_b7,
		S 		=>	FA2_l4_c17_S,
		COUT 	=>	FA2_l4_c17_Cout
	);

FA3_l4_c17	:	full_adder
	PORT MAP (
		A 		=>	l6_p6_b5,
		B 		=>	l6_p7_b3,
		CIN 	=>	l6_p8_b1,
		S 		=>	FA3_l4_c17_S,
		COUT 	=>	FA3_l4_c17_Cout
	);

FA1_l4_c18	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c17_Cout,
		B 		=>	HA1_l5_c18_S,
		CIN 	=>	FA1_l5_c18_S,
		S 		=>	FA1_l4_c18_S,
		COUT 	=>	FA1_l4_c18_Cout
	);

FA2_l4_c18	:	full_adder
	PORT MAP (
		A 		=>	l6_p5_b8,
		B 		=>	l6_p6_b6,
		CIN 	=>	l6_p7_b4,
		S 		=>	FA2_l4_c18_S,
		COUT 	=>	FA2_l4_c18_Cout
	);

FA3_l4_c18	:	full_adder
	PORT MAP (
		A 		=>	l6_p8_b2,
		B 		=>	l6_p9_b0,
		CIN 	=>	S9,
		S 		=>	FA3_l4_c18_S,
		COUT 	=>	FA3_l4_c18_Cout
	);

FA1_l4_c19	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c18_Cout,
		B 		=>	FA1_l5_c18_Cout,
		CIN 	=>	HA1_l5_c19_S,
		S 		=>	FA1_l4_c19_S,
		COUT 	=>	FA1_l4_c19_Cout
	);

FA2_l4_c19	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c19_S,
		B 		=>	l6_p5_b9,
		CIN 	=>	l6_p6_b7,
		S 		=>	FA2_l4_c19_S,
		COUT 	=>	FA2_l4_c19_Cout
	);

FA3_l4_c19	:	full_adder
	PORT MAP (
		A 		=>	l6_p7_b5,
		B 		=>	l6_p8_b3,
		CIN 	=>	l6_p9_b1,
		S 		=>	FA3_l4_c19_S,
		COUT 	=>	FA3_l4_c19_Cout
	);

FA1_l4_c20	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c19_Cout,
		B 		=>	FA1_l5_c19_Cout,
		CIN 	=>	HA1_l5_c20_S,
		S 		=>	FA1_l4_c20_S,
		COUT 	=>	FA1_l4_c20_Cout
	);

FA2_l4_c20	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c20_S,
		B 		=>	FA1_l5_c20_S,
		CIN 	=>	l6_p8_b4,
		S 		=>	FA2_l4_c20_S,
		COUT 	=>	FA2_l4_c20_Cout
	);

FA3_l4_c20	:	full_adder
	PORT MAP (
		A 		=>	l6_p9_b2,
		B 		=>	l6_p10_b0,
		CIN 	=>	S10,
		S 		=>	FA3_l4_c20_S,
		COUT 	=>	FA3_l4_c20_Cout
	);

FA1_l4_c21	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c20_Cout,
		B 		=>	FA2_l5_c20_Cout,
		CIN 	=>	FA1_l5_c20_Cout,
		S 		=>	FA1_l4_c21_S,
		COUT 	=>	FA1_l4_c21_Cout
	);

FA2_l4_c21	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c21_S,
		B 		=>	FA2_l5_c21_S,
		CIN 	=>	FA1_l5_c21_S,
		S 		=>	FA2_l4_c21_S,
		COUT 	=>	FA2_l4_c21_Cout
	);

FA3_l4_c21	:	full_adder
	PORT MAP (
		A 		=>	l6_p8_b5,
		B 		=>	l6_p9_b3,
		CIN 	=>	l6_p10_b1,
		S 		=>	FA3_l4_c21_S,
		COUT 	=>	FA3_l4_c21_Cout
	);

FA1_l4_c22	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c21_Cout,
		B 		=>	FA2_l5_c21_Cout,
		CIN 	=>	FA1_l5_c21_Cout,
		S 		=>	FA1_l4_c22_S,
		COUT 	=>	FA1_l4_c22_Cout
	);

FA2_l4_c22	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c22_S,
		B 		=>	FA3_l5_c22_S,
		CIN 	=>	FA2_l5_c22_S,
		S 		=>	FA2_l4_c22_S,
		COUT 	=>	FA2_l4_c22_Cout
	);

FA3_l4_c22	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c22_S,
		B 		=>	l6_p11_b0,
		CIN 	=>	S11,
		S 		=>	FA3_l4_c22_S,
		COUT 	=>	FA3_l4_c22_Cout
	);

FA1_l4_c23	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c22_Cout,
		B 		=>	FA3_l5_c22_Cout,
		CIN 	=>	FA2_l5_c22_Cout,
		S 		=>	FA1_l4_c23_S,
		COUT 	=>	FA1_l4_c23_Cout
	);

FA2_l4_c23	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c22_Cout,
		B 		=>	HA1_l5_c23_S,
		CIN 	=>	FA3_l5_c23_S,
		S 		=>	FA2_l4_c23_S,
		COUT 	=>	FA2_l4_c23_Cout
	);

FA3_l4_c23	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c23_S,
		B 		=>	FA1_l5_c23_S,
		CIN 	=>	l6_p11_b1,
		S 		=>	FA3_l4_c23_S,
		COUT 	=>	FA3_l4_c23_Cout
	);

FA1_l4_c24	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c23_Cout,
		B 		=>	FA3_l5_c23_Cout,
		CIN 	=>	FA2_l5_c23_Cout,
		S 		=>	FA1_l4_c24_S,
		COUT 	=>	FA1_l4_c24_Cout
	);

FA2_l4_c24	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c23_Cout,
		B 		=>	FA4_l5_c24_S,
		CIN 	=>	FA3_l5_c24_S,
		S 		=>	FA2_l4_c24_S,
		COUT 	=>	FA2_l4_c24_Cout
	);

FA3_l4_c24	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c24_S,
		B 		=>	FA1_l5_c24_S,
		CIN 	=>	S12,
		S 		=>	FA3_l4_c24_S,
		COUT 	=>	FA3_l4_c24_Cout
	);

FA1_l4_c25	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c24_Cout,
		B 		=>	FA3_l5_c24_Cout,
		CIN 	=>	FA2_l5_c24_Cout,
		S 		=>	FA1_l4_c25_S,
		COUT 	=>	FA1_l4_c25_Cout
	);

FA2_l4_c25	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c24_Cout,
		B 		=>	FA4_l5_c25_S,
		CIN 	=>	FA3_l5_c25_S,
		S 		=>	FA2_l4_c25_S,
		COUT 	=>	FA2_l4_c25_Cout
	);

FA3_l4_c25	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c25_S,
		B 		=>	FA1_l5_c25_S,
		CIN 	=>	l6_p12_b1,
		S 		=>	FA3_l4_c25_S,
		COUT 	=>	FA3_l4_c25_Cout
	);

FA1_l4_c26	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c25_Cout,
		B 		=>	FA3_l5_c25_Cout,
		CIN 	=>	FA2_l5_c25_Cout,
		S 		=>	FA1_l4_c26_S,
		COUT 	=>	FA1_l4_c26_Cout
	);

FA2_l4_c26	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c25_Cout,
		B 		=>	FA4_l5_c26_S,
		CIN 	=>	FA3_l5_c26_S,
		S 		=>	FA2_l4_c26_S,
		COUT 	=>	FA2_l4_c26_Cout
	);

FA3_l4_c26	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c26_S,
		B 		=>	FA1_l5_c26_S,
		CIN 	=>	S13,
		S 		=>	FA3_l4_c26_S,
		COUT 	=>	FA3_l4_c26_Cout
	);

FA1_l4_c27	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c26_Cout,
		B 		=>	FA3_l5_c26_Cout,
		CIN 	=>	FA2_l5_c26_Cout,
		S 		=>	FA1_l4_c27_S,
		COUT 	=>	FA1_l4_c27_Cout
	);

FA2_l4_c27	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c26_Cout,
		B 		=>	FA4_l5_c27_S,
		CIN 	=>	FA3_l5_c27_S,
		S 		=>	FA2_l4_c27_S,
		COUT 	=>	FA2_l4_c27_Cout
	);

FA3_l4_c27	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c27_S,
		B 		=>	FA1_l5_c27_S,
		CIN 	=>	l6_p13_b1,
		S 		=>	FA3_l4_c27_S,
		COUT 	=>	FA3_l4_c27_Cout
	);

FA1_l4_c28	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c27_Cout,
		B 		=>	FA3_l5_c27_Cout,
		CIN 	=>	FA2_l5_c27_Cout,
		S 		=>	FA1_l4_c28_S,
		COUT 	=>	FA1_l4_c28_Cout
	);

FA2_l4_c28	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c27_Cout,
		B 		=>	FA4_l5_c28_S,
		CIN 	=>	FA3_l5_c28_S,
		S 		=>	FA2_l4_c28_S,
		COUT 	=>	FA2_l4_c28_Cout
	);

FA3_l4_c28	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c28_S,
		B 		=>	FA1_l5_c28_S,
		CIN 	=>	S14,
		S 		=>	FA3_l4_c28_S,
		COUT 	=>	FA3_l4_c28_Cout
	);

FA1_l4_c29	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c28_Cout,
		B 		=>	FA3_l5_c28_Cout,
		CIN 	=>	FA2_l5_c28_Cout,
		S 		=>	FA1_l4_c29_S,
		COUT 	=>	FA1_l4_c29_Cout
	);

FA2_l4_c29	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c28_Cout,
		B 		=>	FA4_l5_c29_S,
		CIN 	=>	FA3_l5_c29_S,
		S 		=>	FA2_l4_c29_S,
		COUT 	=>	FA2_l4_c29_Cout
	);

FA3_l4_c29	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c29_S,
		B 		=>	FA1_l5_c29_S,
		CIN 	=>	l6_p14_b1,
		S 		=>	FA3_l4_c29_S,
		COUT 	=>	FA3_l4_c29_Cout
	);

FA1_l4_c30	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c29_Cout,
		B 		=>	FA3_l5_c29_Cout,
		CIN 	=>	FA2_l5_c29_Cout,
		S 		=>	FA1_l4_c30_S,
		COUT 	=>	FA1_l4_c30_Cout
	);

FA2_l4_c30	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c29_Cout,
		B 		=>	FA4_l5_c30_S,
		CIN 	=>	FA3_l5_c30_S,
		S 		=>	FA2_l4_c30_S,
		COUT 	=>	FA2_l4_c30_Cout
	);

FA3_l4_c30	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c30_S,
		B 		=>	FA1_l5_c30_S,
		CIN 	=>	S15,
		S 		=>	FA3_l4_c30_S,
		COUT 	=>	FA3_l4_c30_Cout
	);

FA1_l4_c31	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c30_Cout,
		B 		=>	FA3_l5_c30_Cout,
		CIN 	=>	FA2_l5_c30_Cout,
		S 		=>	FA1_l4_c31_S,
		COUT 	=>	FA1_l4_c31_Cout
	);

FA2_l4_c31	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c30_Cout,
		B 		=>	FA4_l5_c31_S,
		CIN 	=>	FA3_l5_c31_S,
		S 		=>	FA2_l4_c31_S,
		COUT 	=>	FA2_l4_c31_Cout
	);

FA3_l4_c31	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c31_S,
		B 		=>	FA1_l5_c31_S,
		CIN 	=>	l6_p15_b1,
		S 		=>	FA3_l4_c31_S,
		COUT 	=>	FA3_l4_c31_Cout
	);

FA1_l4_c32	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c31_Cout,
		B 		=>	FA3_l5_c31_Cout,
		CIN 	=>	FA2_l5_c31_Cout,
		S 		=>	FA1_l4_c32_S,
		COUT 	=>	FA1_l4_c32_Cout
	);

FA2_l4_c32	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c31_Cout,
		B 		=>	FA4_l5_c32_S,
		CIN 	=>	FA3_l5_c32_S,
		S 		=>	FA2_l4_c32_S,
		COUT 	=>	FA2_l4_c32_Cout
	);

FA3_l4_c32	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c32_S,
		B 		=>	FA1_l5_c32_S,
		CIN 	=>	l6_p16_b0,
		S 		=>	FA3_l4_c32_S,
		COUT 	=>	FA3_l4_c32_Cout
	);

FA1_l4_c33	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c32_Cout,
		B 		=>	FA3_l5_c32_Cout,
		CIN 	=>	FA2_l5_c32_Cout,
		S 		=>	FA1_l4_c33_S,
		COUT 	=>	FA1_l4_c33_Cout
	);

FA2_l4_c33	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c32_Cout,
		B 		=>	FA4_l5_c33_S,
		CIN 	=>	FA3_l5_c33_S,
		S 		=>	FA2_l4_c33_S,
		COUT 	=>	FA2_l4_c33_Cout
	);

FA3_l4_c33	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c33_S,
		B 		=>	FA1_l5_c33_S,
		CIN 	=>	l6_p16_b1,
		S 		=>	FA3_l4_c33_S,
		COUT 	=>	FA3_l4_c33_Cout
	);

FA1_l4_c34	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c33_Cout,
		B 		=>	FA3_l5_c33_Cout,
		CIN 	=>	FA2_l5_c33_Cout,
		S 		=>	FA1_l4_c34_S,
		COUT 	=>	FA1_l4_c34_Cout
	);

FA2_l4_c34	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c33_Cout,
		B 		=>	FA4_l5_c34_S,
		CIN 	=>	FA3_l5_c34_S,
		S 		=>	FA2_l4_c34_S,
		COUT 	=>	FA2_l4_c34_Cout
	);

FA3_l4_c34	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c34_S,
		B 		=>	FA1_l5_c34_S,
		CIN 	=>	l6_p16_b2,
		S 		=>	FA3_l4_c34_S,
		COUT 	=>	FA3_l4_c34_Cout
	);

FA1_l4_c35	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c34_Cout,
		B 		=>	FA3_l5_c34_Cout,
		CIN 	=>	FA2_l5_c34_Cout,
		S 		=>	FA1_l4_c35_S,
		COUT 	=>	FA1_l4_c35_Cout
	);

FA2_l4_c35	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c34_Cout,
		B 		=>	FA4_l5_c35_S,
		CIN 	=>	FA3_l5_c35_S,
		S 		=>	FA2_l4_c35_S,
		COUT 	=>	FA2_l4_c35_Cout
	);

FA3_l4_c35	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c35_S,
		B 		=>	FA1_l5_c35_S,
		CIN 	=>	l6_p16_b3,
		S 		=>	FA3_l4_c35_S,
		COUT 	=>	FA3_l4_c35_Cout
	);

FA1_l4_c36	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c35_Cout,
		B 		=>	FA3_l5_c35_Cout,
		CIN 	=>	FA2_l5_c35_Cout,
		S 		=>	FA1_l4_c36_S,
		COUT 	=>	FA1_l4_c36_Cout
	);

FA2_l4_c36	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c35_Cout,
		B 		=>	FA4_l5_c36_S,
		CIN 	=>	FA3_l5_c36_S,
		S 		=>	FA2_l4_c36_S,
		COUT 	=>	FA2_l4_c36_Cout
	);

FA3_l4_c36	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c36_S,
		B 		=>	FA1_l5_c36_S,
		CIN 	=>	l6_p16_b4,
		S 		=>	FA3_l4_c36_S,
		COUT 	=>	FA3_l4_c36_Cout
	);

FA1_l4_c37	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c36_Cout,
		B 		=>	FA3_l5_c36_Cout,
		CIN 	=>	FA2_l5_c36_Cout,
		S 		=>	FA1_l4_c37_S,
		COUT 	=>	FA1_l4_c37_Cout
	);

FA2_l4_c37	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c36_Cout,
		B 		=>	FA4_l5_c37_S,
		CIN 	=>	FA3_l5_c37_S,
		S 		=>	FA2_l4_c37_S,
		COUT 	=>	FA2_l4_c37_Cout
	);

FA3_l4_c37	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c37_S,
		B 		=>	FA1_l5_c37_S,
		CIN 	=>	l6_p16_b5,
		S 		=>	FA3_l4_c37_S,
		COUT 	=>	FA3_l4_c37_Cout
	);

FA1_l4_c38	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c37_Cout,
		B 		=>	FA3_l5_c37_Cout,
		CIN 	=>	FA2_l5_c37_Cout,
		S 		=>	FA1_l4_c38_S,
		COUT 	=>	FA1_l4_c38_Cout
	);

FA2_l4_c38	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c37_Cout,
		B 		=>	FA4_l5_c38_S,
		CIN 	=>	FA3_l5_c38_S,
		S 		=>	FA2_l4_c38_S,
		COUT 	=>	FA2_l4_c38_Cout
	);

FA3_l4_c38	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c38_S,
		B 		=>	FA1_l5_c38_S,
		CIN 	=>	l6_p16_b6,
		S 		=>	FA3_l4_c38_S,
		COUT 	=>	FA3_l4_c38_Cout
	);

FA1_l4_c39	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c38_Cout,
		B 		=>	FA3_l5_c38_Cout,
		CIN 	=>	FA2_l5_c38_Cout,
		S 		=>	FA1_l4_c39_S,
		COUT 	=>	FA1_l4_c39_Cout
	);

FA2_l4_c39	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c38_Cout,
		B 		=>	FA4_l5_c39_S,
		CIN 	=>	FA3_l5_c39_S,
		S 		=>	FA2_l4_c39_S,
		COUT 	=>	FA2_l4_c39_Cout
	);

FA3_l4_c39	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c39_S,
		B 		=>	FA1_l5_c39_S,
		CIN 	=>	l6_p16_b7,
		S 		=>	FA3_l4_c39_S,
		COUT 	=>	FA3_l4_c39_Cout
	);

FA1_l4_c40	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c39_Cout,
		B 		=>	FA3_l5_c39_Cout,
		CIN 	=>	FA2_l5_c39_Cout,
		S 		=>	FA1_l4_c40_S,
		COUT 	=>	FA1_l4_c40_Cout
	);

FA2_l4_c40	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c39_Cout,
		B 		=>	FA4_l5_c40_S,
		CIN 	=>	FA3_l5_c40_S,
		S 		=>	FA2_l4_c40_S,
		COUT 	=>	FA2_l4_c40_Cout
	);

FA3_l4_c40	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c40_S,
		B 		=>	FA1_l5_c40_S,
		CIN 	=>	l6_p16_b8,
		S 		=>	FA3_l4_c40_S,
		COUT 	=>	FA3_l4_c40_Cout
	);

FA1_l4_c41	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c40_Cout,
		B 		=>	FA3_l5_c40_Cout,
		CIN 	=>	FA2_l5_c40_Cout,
		S 		=>	FA1_l4_c41_S,
		COUT 	=>	FA1_l4_c41_Cout
	);

FA2_l4_c41	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c40_Cout,
		B 		=>	FA4_l5_c41_S,
		CIN 	=>	FA3_l5_c41_S,
		S 		=>	FA2_l4_c41_S,
		COUT 	=>	FA2_l4_c41_Cout
	);

FA3_l4_c41	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c41_S,
		B 		=>	FA1_l5_c41_S,
		CIN 	=>	l6_p16_b9,
		S 		=>	FA3_l4_c41_S,
		COUT 	=>	FA3_l4_c41_Cout
	);

FA1_l4_c42	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c41_Cout,
		B 		=>	FA3_l5_c41_Cout,
		CIN 	=>	FA2_l5_c41_Cout,
		S 		=>	FA1_l4_c42_S,
		COUT 	=>	FA1_l4_c42_Cout
	);

FA2_l4_c42	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c41_Cout,
		B 		=>	FA4_l5_c42_S,
		CIN 	=>	FA3_l5_c42_S,
		S 		=>	FA2_l4_c42_S,
		COUT 	=>	FA2_l4_c42_Cout
	);

FA3_l4_c42	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c42_S,
		B 		=>	FA1_l5_c42_S,
		CIN 	=>	l6_p16_b10,
		S 		=>	FA3_l4_c42_S,
		COUT 	=>	FA3_l4_c42_Cout
	);

FA1_l4_c43	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c42_Cout,
		B 		=>	FA3_l5_c42_Cout,
		CIN 	=>	FA2_l5_c42_Cout,
		S 		=>	FA1_l4_c43_S,
		COUT 	=>	FA1_l4_c43_Cout
	);

FA2_l4_c43	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c42_Cout,
		B 		=>	FA4_l5_c43_S,
		CIN 	=>	FA3_l5_c43_S,
		S 		=>	FA2_l4_c43_S,
		COUT 	=>	FA2_l4_c43_Cout
	);

FA3_l4_c43	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c43_S,
		B 		=>	FA1_l5_c43_S,
		CIN 	=>	l6_p16_b11,
		S 		=>	FA3_l4_c43_S,
		COUT 	=>	FA3_l4_c43_Cout
	);

FA1_l4_c44	:	full_adder
	PORT MAP (
		A 		=>	FA4_l5_c43_Cout,
		B 		=>	FA3_l5_c43_Cout,
		CIN 	=>	FA2_l5_c43_Cout,
		S 		=>	FA1_l4_c44_S,
		COUT 	=>	FA1_l4_c44_Cout
	);

FA2_l4_c44	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c43_Cout,
		B 		=>	HA1_l5_c44_S,
		CIN 	=>	FA3_l5_c44_S,
		S 		=>	FA2_l4_c44_S,
		COUT 	=>	FA2_l4_c44_Cout
	);

FA3_l4_c44	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c44_S,
		B 		=>	FA1_l5_c44_S,
		CIN 	=>	l6_p16_b12,
		S 		=>	FA3_l4_c44_S,
		COUT 	=>	FA3_l4_c44_Cout
	);

FA1_l4_c45	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c44_Cout,
		B 		=>	FA3_l5_c44_Cout,
		CIN 	=>	FA2_l5_c44_Cout,
		S 		=>	FA1_l4_c45_S,
		COUT 	=>	FA1_l4_c45_Cout
	);

FA2_l4_c45	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c44_Cout,
		B 		=>	FA3_l5_c45_S,
		CIN 	=>	FA2_l5_c45_S,
		S 		=>	FA2_l4_c45_S,
		COUT 	=>	FA2_l4_c45_Cout
	);

FA3_l4_c45	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c45_S,
		B 		=>	l6_p15_b15,
		CIN 	=>	l6_p16_b13,
		S 		=>	FA3_l4_c45_S,
		COUT 	=>	FA3_l4_c45_Cout
	);

FA1_l4_c46	:	full_adder
	PORT MAP (
		A 		=>	FA3_l5_c45_Cout,
		B 		=>	FA2_l5_c45_Cout,
		CIN 	=>	FA1_l5_c45_Cout,
		S 		=>	FA1_l4_c46_S,
		COUT 	=>	FA1_l4_c46_Cout
	);

FA2_l4_c46	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c46_S,
		B 		=>	FA2_l5_c46_S,
		CIN 	=>	FA1_l5_c46_S,
		S 		=>	FA2_l4_c46_S,
		COUT 	=>	FA2_l4_c46_Cout
	);

FA3_l4_c46	:	full_adder
	PORT MAP (
		A 		=>	l6_p14_b18,
		B 		=>	l6_p15_b16,
		CIN 	=>	l6_p16_b14,
		S 		=>	FA3_l4_c46_S,
		COUT 	=>	FA3_l4_c46_Cout
	);

FA1_l4_c47	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c46_Cout,
		B 		=>	FA2_l5_c46_Cout,
		CIN 	=>	FA1_l5_c46_Cout,
		S 		=>	FA1_l4_c47_S,
		COUT 	=>	FA1_l4_c47_Cout
	);

FA2_l4_c47	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c47_S,
		B 		=>	FA1_l5_c47_S,
		CIN 	=>	l6_p13_b21,
		S 		=>	FA2_l4_c47_S,
		COUT 	=>	FA2_l4_c47_Cout
	);

FA3_l4_c47	:	full_adder
	PORT MAP (
		A 		=>	l6_p14_b19,
		B 		=>	l6_p15_b17,
		CIN 	=>	l6_p16_b15,
		S 		=>	FA3_l4_c47_S,
		COUT 	=>	FA3_l4_c47_Cout
	);

FA1_l4_c48	:	full_adder
	PORT MAP (
		A 		=>	FA2_l5_c47_Cout,
		B 		=>	FA1_l5_c47_Cout,
		CIN 	=>	HA1_l5_c48_S,
		S 		=>	FA1_l4_c48_S,
		COUT 	=>	FA1_l4_c48_Cout
	);

FA2_l4_c48	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c48_S,
		B 		=>	l6_p12_b24,
		CIN 	=>	l6_p13_b22,
		S 		=>	FA2_l4_c48_S,
		COUT 	=>	FA2_l4_c48_Cout
	);

FA3_l4_c48	:	full_adder
	PORT MAP (
		A 		=>	l6_p14_b20,
		B 		=>	l6_p15_b18,
		CIN 	=>	l6_p16_b16,
		S 		=>	FA3_l4_c48_S,
		COUT 	=>	FA3_l4_c48_Cout
	);

FA1_l4_c49	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c48_Cout,
		B 		=>	FA1_l5_c48_Cout,
		CIN 	=>	FA1_l5_c49_S,
		S 		=>	FA1_l4_c49_S,
		COUT 	=>	FA1_l4_c49_Cout
	);

FA2_l4_c49	:	full_adder
	PORT MAP (
		A 		=>	l6_p11_b27,
		B 		=>	l6_p12_b25,
		CIN 	=>	l6_p13_b23,
		S 		=>	FA2_l4_c49_S,
		COUT 	=>	FA2_l4_c49_Cout
	);

FA3_l4_c49	:	full_adder
	PORT MAP (
		A 		=>	l6_p14_b21,
		B 		=>	l6_p15_b19,
		CIN 	=>	l6_p16_b17,
		S 		=>	FA3_l4_c49_S,
		COUT 	=>	FA3_l4_c49_Cout
	);

FA1_l4_c50	:	full_adder
	PORT MAP (
		A 		=>	FA1_l5_c49_Cout,
		B 		=>	HA1_l5_c50_S,
		CIN 	=>	l6_p10_b30,
		S 		=>	FA1_l4_c50_S,
		COUT 	=>	FA1_l4_c50_Cout
	);

FA2_l4_c50	:	full_adder
	PORT MAP (
		A 		=>	l6_p11_b28,
		B 		=>	l6_p12_b26,
		CIN 	=>	l6_p13_b24,
		S 		=>	FA2_l4_c50_S,
		COUT 	=>	FA2_l4_c50_Cout
	);

FA3_l4_c50	:	full_adder
	PORT MAP (
		A 		=>	l6_p14_b22,
		B 		=>	l6_p15_b20,
		CIN 	=>	l6_p16_b18,
		S 		=>	FA3_l4_c50_S,
		COUT 	=>	FA3_l4_c50_Cout
	);

FA1_l4_c51	:	full_adder
	PORT MAP (
		A 		=>	HA1_l5_c50_Cout,
		B 		=>	S9_neg,
		CIN 	=>	l6_p10_b31,
		S 		=>	FA1_l4_c51_S,
		COUT 	=>	FA1_l4_c51_Cout
	);

FA2_l4_c51	:	full_adder
	PORT MAP (
		A 		=>	l6_p11_b29,
		B 		=>	l6_p12_b27,
		CIN 	=>	l6_p13_b25,
		S 		=>	FA2_l4_c51_S,
		COUT 	=>	FA2_l4_c51_Cout
	);

FA3_l4_c51	:	full_adder
	PORT MAP (
		A 		=>	l6_p14_b23,
		B 		=>	l6_p15_b21,
		CIN 	=>	l6_p16_b19,
		S 		=>	FA3_l4_c51_S,
		COUT 	=>	FA3_l4_c51_Cout
	);

FA1_l4_c52	:	full_adder
	PORT MAP (
		A 		=>	1,
		B 		=>	l6_p10_b32,
		CIN 	=>	l6_p11_b30,
		S 		=>	FA1_l4_c52_S,
		COUT 	=>	FA1_l4_c52_Cout
	);

FA2_l4_c52	:	full_adder
	PORT MAP (
		A 		=>	l6_p12_b28,
		B 		=>	l6_p13_b26,
		CIN 	=>	l6_p14_b24,
		S 		=>	FA2_l4_c52_S,
		COUT 	=>	FA2_l4_c52_Cout
	);

HA1_l4_c52	:	half_adder
	PORT MAP (
		A 		=>	l6_p15_b22,
		B 		=>	l6_p16_b20,
		S 		=>	HA1_l4_c52_S,
		COUT 	=>	HA1_l4_c52_Cout
	);

FA1_l4_c53	:	full_adder
	PORT MAP (
		A 		=>	S10_neg,
		B 		=>	l6_p11_b31,
		CIN 	=>	l6_p12_b29,
		S 		=>	FA1_l4_c53_S,
		COUT 	=>	FA1_l4_c53_Cout
	);

FA2_l4_c53	:	full_adder
	PORT MAP (
		A 		=>	l6_p13_b27,
		B 		=>	l6_p14_b25,
		CIN 	=>	l6_p15_b23,
		S 		=>	FA2_l4_c53_S,
		COUT 	=>	FA2_l4_c53_Cout
	);

FA1_l4_c54	:	full_adder
	PORT MAP (
		A 		=>	1,
		B 		=>	l6_p11_b32,
		CIN 	=>	l6_p12_b30,
		S 		=>	FA1_l4_c54_S,
		COUT 	=>	FA1_l4_c54_Cout
	);

HA1_l4_c54	:	half_adder
	PORT MAP (
		A 		=>	l6_p13_b28,
		B 		=>	l6_p14_b26,
		S 		=>	HA1_l4_c54_S,
		COUT 	=>	HA1_l4_c54_Cout
	);

FA1_l4_c55	:	full_adder
	PORT MAP (
		A 		=>	S11_neg,
		B 		=>	l6_p12_b31,
		CIN 	=>	l6_p13_b29,
		S 		=>	FA1_l4_c55_S,
		COUT 	=>	FA1_l4_c55_Cout
	);

HA1_l4_c56	:	half_adder
	PORT MAP (
		A 		=>	1,
		B 		=>	l6_p12_b32,
		S 		=>	HA1_l4_c56_S,
		COUT 	=>	HA1_l4_c56_Cout
	);

HA1_l3_c6	:	half_adder
	PORT MAP (
		A 		=>	l6_p0_b6,
		B 		=>	l6_p1_b4,
		S 		=>	HA1_l3_c6_S,
		COUT 	=>	HA1_l3_c6_Cout
	);

HA1_l3_c7	:	half_adder
	PORT MAP (
		A 		=>	l6_p0_b7,
		B 		=>	l6_p1_b5,
		S 		=>	HA1_l3_c7_S,
		COUT 	=>	HA1_l3_c7_Cout
	);

FA1_l3_c8	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b8,
		B 		=>	l6_p1_b6,
		CIN 	=>	l6_p2_b4,
		S 		=>	FA1_l3_c8_S,
		COUT 	=>	FA1_l3_c8_Cout
	);

HA1_l3_c8	:	half_adder
	PORT MAP (
		A 		=>	l6_p3_b2,
		B 		=>	l6_p4_b0,
		S 		=>	HA1_l3_c8_S,
		COUT 	=>	HA1_l3_c8_Cout
	);

FA1_l3_c9	:	full_adder
	PORT MAP (
		A 		=>	l6_p0_b9,
		B 		=>	l6_p1_b7,
		CIN 	=>	l6_p2_b5,
		S 		=>	FA1_l3_c9_S,
		COUT 	=>	FA1_l3_c9_Cout
	);

HA1_l3_c9	:	half_adder
	PORT MAP (
		A 		=>	l6_p3_b3,
		B 		=>	l6_p4_b1,
		S 		=>	HA1_l3_c9_S,
		COUT 	=>	HA1_l3_c9_Cout
	);

FA1_l3_c10	:	full_adder
	PORT MAP (
		A 		=>	HA1_l4_c10_S,
		B 		=>	l6_p2_b6,
		CIN 	=>	l6_p3_b4,
		S 		=>	FA1_l3_c10_S,
		COUT 	=>	FA1_l3_c10_Cout
	);

FA2_l3_c10	:	full_adder
	PORT MAP (
		A 		=>	l6_p4_b2,
		B 		=>	l6_p5_b0,
		CIN 	=>	S5,
		S 		=>	FA2_l3_c10_S,
		COUT 	=>	FA2_l3_c10_Cout
	);

FA1_l3_c11	:	full_adder
	PORT MAP (
		A 		=>	HA1_l4_c10_Cout,
		B 		=>	HA1_l4_c11_S,
		CIN 	=>	l6_p2_b7,
		S 		=>	FA1_l3_c11_S,
		COUT 	=>	FA1_l3_c11_Cout
	);

FA2_l3_c11	:	full_adder
	PORT MAP (
		A 		=>	l6_p3_b5,
		B 		=>	l6_p4_b3,
		CIN 	=>	l6_p5_b1,
		S 		=>	FA2_l3_c11_S,
		COUT 	=>	FA2_l3_c11_Cout
	);

FA1_l3_c12	:	full_adder
	PORT MAP (
		A 		=>	HA1_l4_c11_Cout,
		B 		=>	HA1_l4_c12_S,
		CIN 	=>	FA1_l4_c12_S,
		S 		=>	FA1_l3_c12_S,
		COUT 	=>	FA1_l3_c12_Cout
	);

FA2_l3_c12	:	full_adder
	PORT MAP (
		A 		=>	l6_p5_b2,
		B 		=>	l6_p6_b0,
		CIN 	=>	S6,
		S 		=>	FA2_l3_c12_S,
		COUT 	=>	FA2_l3_c12_Cout
	);

FA1_l3_c13	:	full_adder
	PORT MAP (
		A 		=>	HA1_l4_c12_Cout,
		B 		=>	FA1_l4_c12_Cout,
		CIN 	=>	HA1_l4_c13_S,
		S 		=>	FA1_l3_c13_S,
		COUT 	=>	FA1_l3_c13_Cout
	);

FA2_l3_c13	:	full_adder
	PORT MAP (
		A 		=>	FA1_l4_c13_S,
		B 		=>	l6_p5_b3,
		CIN 	=>	l6_p6_b1,
		S 		=>	FA2_l3_c13_S,
		COUT 	=>	FA2_l3_c13_Cout
	);

FA1_l3_c14	:	full_adder
	PORT MAP (
		A 		=>	HA1_l4_c13_Cout,
		B 		=>	FA1_l4_c13_Cout,
		CIN 	=>	HA1_l4_c14_S,
		S 		=>	FA1_l3_c14_S,
		COUT 	=>	FA1_l3_c14_Cout
	);

FA2_l3_c14	:	full_adder
	PORT MAP (
		A 		=>	FA2_l4_c14_S,
		B 		=>	FA1_l4_c14_S,
		CIN 	=>	S7,
		S 		=>	FA2_l3_c14_S,
		COUT 	=>	FA2_l3_c14_Cout
	);

FA1_l3_c15	:	full_adder
	PORT MAP (
		A 		=>	HA1_l4_c14_Cout,
		B 		=>	FA2_l4_c14_Cout,
		CIN 	=>	FA1_l4_c14_Cout,
		S 		=>	FA1_l3_c15_S,
		COUT 	=>	FA1_l3_c15_Cout
	);

FA2_l3_c15	:	full_adder
	PORT MAP (
		A 		=>	HA1_l4_c15_S,
		B 		=>	FA2_l4_c15_S,
		CIN 	=>	FA1_l4_c15_S,
		S 		=>	FA2_l3_c15_S,
		COUT 	=>	FA2_l3_c15_Cout
	);

FA1_l3_c16	:	full_adder
	PORT MAP (
		A 		=>	HA1_l4_c15_Cout,
		B 		=>	FA2_l4_c15_Cout,
		CIN 	=>	FA1_l4_c15_Cout,
		S 		=>	FA1_l3_c16_S,
		COUT 	=>	FA1_l3_c16_Cout
	);

FA2_l3_c16	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c16_S,
		B 		=>	FA2_l4_c16_S,
		CIN 	=>	FA1_l4_c16_S,
		S 		=>	FA2_l3_c16_S,
		COUT 	=>	FA2_l3_c16_Cout
	);

FA1_l3_c17	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c16_Cout,
		B 		=>	FA2_l4_c16_Cout,
		CIN 	=>	FA1_l4_c16_Cout,
		S 		=>	FA1_l3_c17_S,
		COUT 	=>	FA1_l3_c17_Cout
	);

FA2_l3_c17	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c17_S,
		B 		=>	FA2_l4_c17_S,
		CIN 	=>	FA1_l4_c17_S,
		S 		=>	FA2_l3_c17_S,
		COUT 	=>	FA2_l3_c17_Cout
	);

FA1_l3_c18	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c17_Cout,
		B 		=>	FA2_l4_c17_Cout,
		CIN 	=>	FA1_l4_c17_Cout,
		S 		=>	FA1_l3_c18_S,
		COUT 	=>	FA1_l3_c18_Cout
	);

FA2_l3_c18	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c18_S,
		B 		=>	FA2_l4_c18_S,
		CIN 	=>	FA1_l4_c18_S,
		S 		=>	FA2_l3_c18_S,
		COUT 	=>	FA2_l3_c18_Cout
	);

FA1_l3_c19	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c18_Cout,
		B 		=>	FA2_l4_c18_Cout,
		CIN 	=>	FA1_l4_c18_Cout,
		S 		=>	FA1_l3_c19_S,
		COUT 	=>	FA1_l3_c19_Cout
	);

FA2_l3_c19	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c19_S,
		B 		=>	FA2_l4_c19_S,
		CIN 	=>	FA1_l4_c19_S,
		S 		=>	FA2_l3_c19_S,
		COUT 	=>	FA2_l3_c19_Cout
	);

FA1_l3_c20	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c19_Cout,
		B 		=>	FA2_l4_c19_Cout,
		CIN 	=>	FA1_l4_c19_Cout,
		S 		=>	FA1_l3_c20_S,
		COUT 	=>	FA1_l3_c20_Cout
	);

FA2_l3_c20	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c20_S,
		B 		=>	FA2_l4_c20_S,
		CIN 	=>	FA1_l4_c20_S,
		S 		=>	FA2_l3_c20_S,
		COUT 	=>	FA2_l3_c20_Cout
	);

FA1_l3_c21	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c20_Cout,
		B 		=>	FA2_l4_c20_Cout,
		CIN 	=>	FA1_l4_c20_Cout,
		S 		=>	FA1_l3_c21_S,
		COUT 	=>	FA1_l3_c21_Cout
	);

FA2_l3_c21	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c21_S,
		B 		=>	FA2_l4_c21_S,
		CIN 	=>	FA1_l4_c21_S,
		S 		=>	FA2_l3_c21_S,
		COUT 	=>	FA2_l3_c21_Cout
	);

FA1_l3_c22	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c21_Cout,
		B 		=>	FA2_l4_c21_Cout,
		CIN 	=>	FA1_l4_c21_Cout,
		S 		=>	FA1_l3_c22_S,
		COUT 	=>	FA1_l3_c22_Cout
	);

FA2_l3_c22	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c22_S,
		B 		=>	FA2_l4_c22_S,
		CIN 	=>	FA1_l4_c22_S,
		S 		=>	FA2_l3_c22_S,
		COUT 	=>	FA2_l3_c22_Cout
	);

FA1_l3_c23	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c22_Cout,
		B 		=>	FA2_l4_c22_Cout,
		CIN 	=>	FA1_l4_c22_Cout,
		S 		=>	FA1_l3_c23_S,
		COUT 	=>	FA1_l3_c23_Cout
	);

FA2_l3_c23	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c23_S,
		B 		=>	FA2_l4_c23_S,
		CIN 	=>	FA1_l4_c23_S,
		S 		=>	FA2_l3_c23_S,
		COUT 	=>	FA2_l3_c23_Cout
	);

FA1_l3_c24	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c23_Cout,
		B 		=>	FA2_l4_c23_Cout,
		CIN 	=>	FA1_l4_c23_Cout,
		S 		=>	FA1_l3_c24_S,
		COUT 	=>	FA1_l3_c24_Cout
	);

FA2_l3_c24	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c24_S,
		B 		=>	FA2_l4_c24_S,
		CIN 	=>	FA1_l4_c24_S,
		S 		=>	FA2_l3_c24_S,
		COUT 	=>	FA2_l3_c24_Cout
	);

FA1_l3_c25	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c24_Cout,
		B 		=>	FA2_l4_c24_Cout,
		CIN 	=>	FA1_l4_c24_Cout,
		S 		=>	FA1_l3_c25_S,
		COUT 	=>	FA1_l3_c25_Cout
	);

FA2_l3_c25	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c25_S,
		B 		=>	FA2_l4_c25_S,
		CIN 	=>	FA1_l4_c25_S,
		S 		=>	FA2_l3_c25_S,
		COUT 	=>	FA2_l3_c25_Cout
	);

FA1_l3_c26	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c25_Cout,
		B 		=>	FA2_l4_c25_Cout,
		CIN 	=>	FA1_l4_c25_Cout,
		S 		=>	FA1_l3_c26_S,
		COUT 	=>	FA1_l3_c26_Cout
	);

FA2_l3_c26	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c26_S,
		B 		=>	FA2_l4_c26_S,
		CIN 	=>	FA1_l4_c26_S,
		S 		=>	FA2_l3_c26_S,
		COUT 	=>	FA2_l3_c26_Cout
	);

FA1_l3_c27	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c26_Cout,
		B 		=>	FA2_l4_c26_Cout,
		CIN 	=>	FA1_l4_c26_Cout,
		S 		=>	FA1_l3_c27_S,
		COUT 	=>	FA1_l3_c27_Cout
	);

FA2_l3_c27	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c27_S,
		B 		=>	FA2_l4_c27_S,
		CIN 	=>	FA1_l4_c27_S,
		S 		=>	FA2_l3_c27_S,
		COUT 	=>	FA2_l3_c27_Cout
	);

FA1_l3_c28	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c27_Cout,
		B 		=>	FA2_l4_c27_Cout,
		CIN 	=>	FA1_l4_c27_Cout,
		S 		=>	FA1_l3_c28_S,
		COUT 	=>	FA1_l3_c28_Cout
	);

FA2_l3_c28	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c28_S,
		B 		=>	FA2_l4_c28_S,
		CIN 	=>	FA1_l4_c28_S,
		S 		=>	FA2_l3_c28_S,
		COUT 	=>	FA2_l3_c28_Cout
	);

FA1_l3_c29	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c28_Cout,
		B 		=>	FA2_l4_c28_Cout,
		CIN 	=>	FA1_l4_c28_Cout,
		S 		=>	FA1_l3_c29_S,
		COUT 	=>	FA1_l3_c29_Cout
	);

FA2_l3_c29	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c29_S,
		B 		=>	FA2_l4_c29_S,
		CIN 	=>	FA1_l4_c29_S,
		S 		=>	FA2_l3_c29_S,
		COUT 	=>	FA2_l3_c29_Cout
	);

FA1_l3_c30	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c29_Cout,
		B 		=>	FA2_l4_c29_Cout,
		CIN 	=>	FA1_l4_c29_Cout,
		S 		=>	FA1_l3_c30_S,
		COUT 	=>	FA1_l3_c30_Cout
	);

FA2_l3_c30	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c30_S,
		B 		=>	FA2_l4_c30_S,
		CIN 	=>	FA1_l4_c30_S,
		S 		=>	FA2_l3_c30_S,
		COUT 	=>	FA2_l3_c30_Cout
	);

FA1_l3_c31	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c30_Cout,
		B 		=>	FA2_l4_c30_Cout,
		CIN 	=>	FA1_l4_c30_Cout,
		S 		=>	FA1_l3_c31_S,
		COUT 	=>	FA1_l3_c31_Cout
	);

FA2_l3_c31	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c31_S,
		B 		=>	FA2_l4_c31_S,
		CIN 	=>	FA1_l4_c31_S,
		S 		=>	FA2_l3_c31_S,
		COUT 	=>	FA2_l3_c31_Cout
	);

FA1_l3_c32	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c31_Cout,
		B 		=>	FA2_l4_c31_Cout,
		CIN 	=>	FA1_l4_c31_Cout,
		S 		=>	FA1_l3_c32_S,
		COUT 	=>	FA1_l3_c32_Cout
	);

FA2_l3_c32	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c32_S,
		B 		=>	FA2_l4_c32_S,
		CIN 	=>	FA1_l4_c32_S,
		S 		=>	FA2_l3_c32_S,
		COUT 	=>	FA2_l3_c32_Cout
	);

FA1_l3_c33	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c32_Cout,
		B 		=>	FA2_l4_c32_Cout,
		CIN 	=>	FA1_l4_c32_Cout,
		S 		=>	FA1_l3_c33_S,
		COUT 	=>	FA1_l3_c33_Cout
	);

FA2_l3_c33	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c33_S,
		B 		=>	FA2_l4_c33_S,
		CIN 	=>	FA1_l4_c33_S,
		S 		=>	FA2_l3_c33_S,
		COUT 	=>	FA2_l3_c33_Cout
	);

FA1_l3_c34	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c33_Cout,
		B 		=>	FA2_l4_c33_Cout,
		CIN 	=>	FA1_l4_c33_Cout,
		S 		=>	FA1_l3_c34_S,
		COUT 	=>	FA1_l3_c34_Cout
	);

FA2_l3_c34	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c34_S,
		B 		=>	FA2_l4_c34_S,
		CIN 	=>	FA1_l4_c34_S,
		S 		=>	FA2_l3_c34_S,
		COUT 	=>	FA2_l3_c34_Cout
	);

FA1_l3_c35	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c34_Cout,
		B 		=>	FA2_l4_c34_Cout,
		CIN 	=>	FA1_l4_c34_Cout,
		S 		=>	FA1_l3_c35_S,
		COUT 	=>	FA1_l3_c35_Cout
	);

FA2_l3_c35	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c35_S,
		B 		=>	FA2_l4_c35_S,
		CIN 	=>	FA1_l4_c35_S,
		S 		=>	FA2_l3_c35_S,
		COUT 	=>	FA2_l3_c35_Cout
	);

FA1_l3_c36	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c35_Cout,
		B 		=>	FA2_l4_c35_Cout,
		CIN 	=>	FA1_l4_c35_Cout,
		S 		=>	FA1_l3_c36_S,
		COUT 	=>	FA1_l3_c36_Cout
	);

FA2_l3_c36	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c36_S,
		B 		=>	FA2_l4_c36_S,
		CIN 	=>	FA1_l4_c36_S,
		S 		=>	FA2_l3_c36_S,
		COUT 	=>	FA2_l3_c36_Cout
	);

FA1_l3_c37	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c36_Cout,
		B 		=>	FA2_l4_c36_Cout,
		CIN 	=>	FA1_l4_c36_Cout,
		S 		=>	FA1_l3_c37_S,
		COUT 	=>	FA1_l3_c37_Cout
	);

FA2_l3_c37	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c37_S,
		B 		=>	FA2_l4_c37_S,
		CIN 	=>	FA1_l4_c37_S,
		S 		=>	FA2_l3_c37_S,
		COUT 	=>	FA2_l3_c37_Cout
	);

FA1_l3_c38	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c37_Cout,
		B 		=>	FA2_l4_c37_Cout,
		CIN 	=>	FA1_l4_c37_Cout,
		S 		=>	FA1_l3_c38_S,
		COUT 	=>	FA1_l3_c38_Cout
	);

FA2_l3_c38	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c38_S,
		B 		=>	FA2_l4_c38_S,
		CIN 	=>	FA1_l4_c38_S,
		S 		=>	FA2_l3_c38_S,
		COUT 	=>	FA2_l3_c38_Cout
	);

FA1_l3_c39	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c38_Cout,
		B 		=>	FA2_l4_c38_Cout,
		CIN 	=>	FA1_l4_c38_Cout,
		S 		=>	FA1_l3_c39_S,
		COUT 	=>	FA1_l3_c39_Cout
	);

FA2_l3_c39	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c39_S,
		B 		=>	FA2_l4_c39_S,
		CIN 	=>	FA1_l4_c39_S,
		S 		=>	FA2_l3_c39_S,
		COUT 	=>	FA2_l3_c39_Cout
	);

FA1_l3_c40	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c39_Cout,
		B 		=>	FA2_l4_c39_Cout,
		CIN 	=>	FA1_l4_c39_Cout,
		S 		=>	FA1_l3_c40_S,
		COUT 	=>	FA1_l3_c40_Cout
	);

FA2_l3_c40	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c40_S,
		B 		=>	FA2_l4_c40_S,
		CIN 	=>	FA1_l4_c40_S,
		S 		=>	FA2_l3_c40_S,
		COUT 	=>	FA2_l3_c40_Cout
	);

FA1_l3_c41	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c40_Cout,
		B 		=>	FA2_l4_c40_Cout,
		CIN 	=>	FA1_l4_c40_Cout,
		S 		=>	FA1_l3_c41_S,
		COUT 	=>	FA1_l3_c41_Cout
	);

FA2_l3_c41	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c41_S,
		B 		=>	FA2_l4_c41_S,
		CIN 	=>	FA1_l4_c41_S,
		S 		=>	FA2_l3_c41_S,
		COUT 	=>	FA2_l3_c41_Cout
	);

FA1_l3_c42	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c41_Cout,
		B 		=>	FA2_l4_c41_Cout,
		CIN 	=>	FA1_l4_c41_Cout,
		S 		=>	FA1_l3_c42_S,
		COUT 	=>	FA1_l3_c42_Cout
	);

FA2_l3_c42	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c42_S,
		B 		=>	FA2_l4_c42_S,
		CIN 	=>	FA1_l4_c42_S,
		S 		=>	FA2_l3_c42_S,
		COUT 	=>	FA2_l3_c42_Cout
	);

FA1_l3_c43	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c42_Cout,
		B 		=>	FA2_l4_c42_Cout,
		CIN 	=>	FA1_l4_c42_Cout,
		S 		=>	FA1_l3_c43_S,
		COUT 	=>	FA1_l3_c43_Cout
	);

FA2_l3_c43	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c43_S,
		B 		=>	FA2_l4_c43_S,
		CIN 	=>	FA1_l4_c43_S,
		S 		=>	FA2_l3_c43_S,
		COUT 	=>	FA2_l3_c43_Cout
	);

FA1_l3_c44	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c43_Cout,
		B 		=>	FA2_l4_c43_Cout,
		CIN 	=>	FA1_l4_c43_Cout,
		S 		=>	FA1_l3_c44_S,
		COUT 	=>	FA1_l3_c44_Cout
	);

FA2_l3_c44	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c44_S,
		B 		=>	FA2_l4_c44_S,
		CIN 	=>	FA1_l4_c44_S,
		S 		=>	FA2_l3_c44_S,
		COUT 	=>	FA2_l3_c44_Cout
	);

FA1_l3_c45	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c44_Cout,
		B 		=>	FA2_l4_c44_Cout,
		CIN 	=>	FA1_l4_c44_Cout,
		S 		=>	FA1_l3_c45_S,
		COUT 	=>	FA1_l3_c45_Cout
	);

FA2_l3_c45	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c45_S,
		B 		=>	FA2_l4_c45_S,
		CIN 	=>	FA1_l4_c45_S,
		S 		=>	FA2_l3_c45_S,
		COUT 	=>	FA2_l3_c45_Cout
	);

FA1_l3_c46	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c45_Cout,
		B 		=>	FA2_l4_c45_Cout,
		CIN 	=>	FA1_l4_c45_Cout,
		S 		=>	FA1_l3_c46_S,
		COUT 	=>	FA1_l3_c46_Cout
	);

FA2_l3_c46	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c46_S,
		B 		=>	FA2_l4_c46_S,
		CIN 	=>	FA1_l4_c46_S,
		S 		=>	FA2_l3_c46_S,
		COUT 	=>	FA2_l3_c46_Cout
	);

FA1_l3_c47	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c46_Cout,
		B 		=>	FA2_l4_c46_Cout,
		CIN 	=>	FA1_l4_c46_Cout,
		S 		=>	FA1_l3_c47_S,
		COUT 	=>	FA1_l3_c47_Cout
	);

FA2_l3_c47	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c47_S,
		B 		=>	FA2_l4_c47_S,
		CIN 	=>	FA1_l4_c47_S,
		S 		=>	FA2_l3_c47_S,
		COUT 	=>	FA2_l3_c47_Cout
	);

FA1_l3_c48	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c47_Cout,
		B 		=>	FA2_l4_c47_Cout,
		CIN 	=>	FA1_l4_c47_Cout,
		S 		=>	FA1_l3_c48_S,
		COUT 	=>	FA1_l3_c48_Cout
	);

FA2_l3_c48	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c48_S,
		B 		=>	FA2_l4_c48_S,
		CIN 	=>	FA1_l4_c48_S,
		S 		=>	FA2_l3_c48_S,
		COUT 	=>	FA2_l3_c48_Cout
	);

FA1_l3_c49	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c48_Cout,
		B 		=>	FA2_l4_c48_Cout,
		CIN 	=>	FA1_l4_c48_Cout,
		S 		=>	FA1_l3_c49_S,
		COUT 	=>	FA1_l3_c49_Cout
	);

FA2_l3_c49	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c49_S,
		B 		=>	FA2_l4_c49_S,
		CIN 	=>	FA1_l4_c49_S,
		S 		=>	FA2_l3_c49_S,
		COUT 	=>	FA2_l3_c49_Cout
	);

FA1_l3_c50	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c49_Cout,
		B 		=>	FA2_l4_c49_Cout,
		CIN 	=>	FA1_l4_c49_Cout,
		S 		=>	FA1_l3_c50_S,
		COUT 	=>	FA1_l3_c50_Cout
	);

FA2_l3_c50	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c50_S,
		B 		=>	FA2_l4_c50_S,
		CIN 	=>	FA1_l4_c50_S,
		S 		=>	FA2_l3_c50_S,
		COUT 	=>	FA2_l3_c50_Cout
	);

FA1_l3_c51	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c50_Cout,
		B 		=>	FA2_l4_c50_Cout,
		CIN 	=>	FA1_l4_c50_Cout,
		S 		=>	FA1_l3_c51_S,
		COUT 	=>	FA1_l3_c51_Cout
	);

FA2_l3_c51	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c51_S,
		B 		=>	FA2_l4_c51_S,
		CIN 	=>	FA1_l4_c51_S,
		S 		=>	FA2_l3_c51_S,
		COUT 	=>	FA2_l3_c51_Cout
	);

FA1_l3_c52	:	full_adder
	PORT MAP (
		A 		=>	FA3_l4_c51_Cout,
		B 		=>	FA2_l4_c51_Cout,
		CIN 	=>	FA1_l4_c51_Cout,
		S 		=>	FA1_l3_c52_S,
		COUT 	=>	FA1_l3_c52_Cout
	);

FA2_l3_c52	:	full_adder
	PORT MAP (
		A 		=>	HA1_l4_c52_S,
		B 		=>	FA2_l4_c52_S,
		CIN 	=>	FA1_l4_c52_S,
		S 		=>	FA2_l3_c52_S,
		COUT 	=>	FA2_l3_c52_Cout
	);

FA1_l3_c53	:	full_adder
	PORT MAP (
		A 		=>	HA1_l4_c52_Cout,
		B 		=>	FA2_l4_c52_Cout,
		CIN 	=>	FA1_l4_c52_Cout,
		S 		=>	FA1_l3_c53_S,
		COUT 	=>	FA1_l3_c53_Cout
	);

FA2_l3_c53	:	full_adder
	PORT MAP (
		A 		=>	FA2_l4_c53_S,
		B 		=>	FA1_l4_c53_S,
		CIN 	=>	l6_p16_b21,
		S 		=>	FA2_l3_c53_S,
		COUT 	=>	FA2_l3_c53_Cout
	);

FA1_l3_c54	:	full_adder
	PORT MAP (
		A 		=>	FA2_l4_c53_Cout,
		B 		=>	FA1_l4_c53_Cout,
		CIN 	=>	HA1_l4_c54_S,
		S 		=>	FA1_l3_c54_S,
		COUT 	=>	FA1_l3_c54_Cout
	);

FA2_l3_c54	:	full_adder
	PORT MAP (
		A 		=>	FA1_l4_c54_S,
		B 		=>	l6_p15_b24,
		CIN 	=>	l6_p16_b22,
		S 		=>	FA2_l3_c54_S,
		COUT 	=>	FA2_l3_c54_Cout
	);

FA1_l3_c55	:	full_adder
	PORT MAP (
		A 		=>	HA1_l4_c54_Cout,
		B 		=>	FA1_l4_c54_Cout,
		CIN 	=>	FA1_l4_c55_S,
		S 		=>	FA1_l3_c55_S,
		COUT 	=>	FA1_l3_c55_Cout
	);

FA2_l3_c55	:	full_adder
	PORT MAP (
		A 		=>	l6_p14_b27,
		B 		=>	l6_p15_b25,
		CIN 	=>	l6_p16_b23,
		S 		=>	FA2_l3_c55_S,
		COUT 	=>	FA2_l3_c55_Cout
	);

FA1_l3_c56	:	full_adder
	PORT MAP (
		A 		=>	FA1_l4_c55_Cout,
		B 		=>	HA1_l4_c56_S,
		CIN 	=>	l6_p13_b30,
		S 		=>	FA1_l3_c56_S,
		COUT 	=>	FA1_l3_c56_Cout
	);

FA2_l3_c56	:	full_adder
	PORT MAP (
		A 		=>	l6_p14_b28,
		B 		=>	l6_p15_b26,
		CIN 	=>	l6_p16_b24,
		S 		=>	FA2_l3_c56_S,
		COUT 	=>	FA2_l3_c56_Cout
	);

FA1_l3_c57	:	full_adder
	PORT MAP (
		A 		=>	HA1_l4_c56_Cout,
		B 		=>	S12_neg,
		CIN 	=>	l6_p13_b31,
		S 		=>	FA1_l3_c57_S,
		COUT 	=>	FA1_l3_c57_Cout
	);

FA2_l3_c57	:	full_adder
	PORT MAP (
		A 		=>	l6_p14_b29,
		B 		=>	l6_p15_b27,
		CIN 	=>	l6_p16_b25,
		S 		=>	FA2_l3_c57_S,
		COUT 	=>	FA2_l3_c57_Cout
	);

FA1_l3_c58	:	full_adder
	PORT MAP (
		A 		=>	1,
		B 		=>	l6_p13_b32,
		CIN 	=>	l6_p14_b30,
		S 		=>	FA1_l3_c58_S,
		COUT 	=>	FA1_l3_c58_Cout
	);

HA1_l3_c58	:	half_adder
	PORT MAP (
		A 		=>	l6_p15_b28,
		B 		=>	l6_p16_b26,
		S 		=>	HA1_l3_c58_S,
		COUT 	=>	HA1_l3_c58_Cout
	);

FA1_l3_c59	:	full_adder
	PORT MAP (
		A 		=>	S13_neg,
		B 		=>	l6_p14_b31,
		CIN 	=>	l6_p15_b29,
		S 		=>	FA1_l3_c59_S,
		COUT 	=>	FA1_l3_c59_Cout
	);

HA1_l3_c60	:	half_adder
	PORT MAP (
		A 		=>	1,
		B 		=>	l6_p14_b32,
		S 		=>	HA1_l3_c60_S,
		COUT 	=>	HA1_l3_c60_Cout
	);

HA1_l2_c4	:	half_adder
	PORT MAP (
		A 		=>	l6_p0_b4,
		B 		=>	l6_p1_b2,
		S 		=>	HA1_l2_c4_S,
		COUT 	=>	HA1_l2_c4_Cout
	);

HA1_l2_c5	:	half_adder
	PORT MAP (
		A 		=>	l6_p0_b5,
		B 		=>	l6_p1_b3,
		S 		=>	HA1_l2_c5_S,
		COUT 	=>	HA1_l2_c5_Cout
	);

FA1_l2_c6	:	full_adder
	PORT MAP (
		A 		=>	HA1_l3_c6_S,
		B 		=>	l6_p2_b2,
		CIN 	=>	l6_p3_b0,
		S 		=>	FA1_l2_c6_S,
		COUT 	=>	FA1_l2_c6_Cout
	);

FA1_l2_c7	:	full_adder
	PORT MAP (
		A 		=>	HA1_l3_c6_Cout,
		B 		=>	HA1_l3_c7_S,
		CIN 	=>	l6_p2_b3,
		S 		=>	FA1_l2_c7_S,
		COUT 	=>	FA1_l2_c7_Cout
	);

FA1_l2_c8	:	full_adder
	PORT MAP (
		A 		=>	HA1_l3_c7_Cout,
		B 		=>	HA1_l3_c8_S,
		CIN 	=>	FA1_l3_c8_S,
		S 		=>	FA1_l2_c8_S,
		COUT 	=>	FA1_l2_c8_Cout
	);

FA1_l2_c9	:	full_adder
	PORT MAP (
		A 		=>	HA1_l3_c8_Cout,
		B 		=>	FA1_l3_c8_Cout,
		CIN 	=>	HA1_l3_c9_S,
		S 		=>	FA1_l2_c9_S,
		COUT 	=>	FA1_l2_c9_Cout
	);

FA1_l2_c10	:	full_adder
	PORT MAP (
		A 		=>	HA1_l3_c9_Cout,
		B 		=>	FA1_l3_c9_Cout,
		CIN 	=>	FA2_l3_c10_S,
		S 		=>	FA1_l2_c10_S,
		COUT 	=>	FA1_l2_c10_Cout
	);

FA1_l2_c11	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c10_Cout,
		B 		=>	FA1_l3_c10_Cout,
		CIN 	=>	FA2_l3_c11_S,
		S 		=>	FA1_l2_c11_S,
		COUT 	=>	FA1_l2_c11_Cout
	);

FA1_l2_c12	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c11_Cout,
		B 		=>	FA1_l3_c11_Cout,
		CIN 	=>	FA2_l3_c12_S,
		S 		=>	FA1_l2_c12_S,
		COUT 	=>	FA1_l2_c12_Cout
	);

FA1_l2_c13	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c12_Cout,
		B 		=>	FA1_l3_c12_Cout,
		CIN 	=>	FA2_l3_c13_S,
		S 		=>	FA1_l2_c13_S,
		COUT 	=>	FA1_l2_c13_Cout
	);

FA1_l2_c14	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c13_Cout,
		B 		=>	FA1_l3_c13_Cout,
		CIN 	=>	FA2_l3_c14_S,
		S 		=>	FA1_l2_c14_S,
		COUT 	=>	FA1_l2_c14_Cout
	);

FA1_l2_c15	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c14_Cout,
		B 		=>	FA1_l3_c14_Cout,
		CIN 	=>	FA2_l3_c15_S,
		S 		=>	FA1_l2_c15_S,
		COUT 	=>	FA1_l2_c15_Cout
	);

FA1_l2_c16	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c15_Cout,
		B 		=>	FA1_l3_c15_Cout,
		CIN 	=>	FA2_l3_c16_S,
		S 		=>	FA1_l2_c16_S,
		COUT 	=>	FA1_l2_c16_Cout
	);

FA1_l2_c17	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c16_Cout,
		B 		=>	FA1_l3_c16_Cout,
		CIN 	=>	FA2_l3_c17_S,
		S 		=>	FA1_l2_c17_S,
		COUT 	=>	FA1_l2_c17_Cout
	);

FA1_l2_c18	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c17_Cout,
		B 		=>	FA1_l3_c17_Cout,
		CIN 	=>	FA2_l3_c18_S,
		S 		=>	FA1_l2_c18_S,
		COUT 	=>	FA1_l2_c18_Cout
	);

FA1_l2_c19	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c18_Cout,
		B 		=>	FA1_l3_c18_Cout,
		CIN 	=>	FA2_l3_c19_S,
		S 		=>	FA1_l2_c19_S,
		COUT 	=>	FA1_l2_c19_Cout
	);

FA1_l2_c20	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c19_Cout,
		B 		=>	FA1_l3_c19_Cout,
		CIN 	=>	FA2_l3_c20_S,
		S 		=>	FA1_l2_c20_S,
		COUT 	=>	FA1_l2_c20_Cout
	);

FA1_l2_c21	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c20_Cout,
		B 		=>	FA1_l3_c20_Cout,
		CIN 	=>	FA2_l3_c21_S,
		S 		=>	FA1_l2_c21_S,
		COUT 	=>	FA1_l2_c21_Cout
	);

FA1_l2_c22	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c21_Cout,
		B 		=>	FA1_l3_c21_Cout,
		CIN 	=>	FA2_l3_c22_S,
		S 		=>	FA1_l2_c22_S,
		COUT 	=>	FA1_l2_c22_Cout
	);

FA1_l2_c23	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c22_Cout,
		B 		=>	FA1_l3_c22_Cout,
		CIN 	=>	FA2_l3_c23_S,
		S 		=>	FA1_l2_c23_S,
		COUT 	=>	FA1_l2_c23_Cout
	);

FA1_l2_c24	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c23_Cout,
		B 		=>	FA1_l3_c23_Cout,
		CIN 	=>	FA2_l3_c24_S,
		S 		=>	FA1_l2_c24_S,
		COUT 	=>	FA1_l2_c24_Cout
	);

FA1_l2_c25	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c24_Cout,
		B 		=>	FA1_l3_c24_Cout,
		CIN 	=>	FA2_l3_c25_S,
		S 		=>	FA1_l2_c25_S,
		COUT 	=>	FA1_l2_c25_Cout
	);

FA1_l2_c26	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c25_Cout,
		B 		=>	FA1_l3_c25_Cout,
		CIN 	=>	FA2_l3_c26_S,
		S 		=>	FA1_l2_c26_S,
		COUT 	=>	FA1_l2_c26_Cout
	);

FA1_l2_c27	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c26_Cout,
		B 		=>	FA1_l3_c26_Cout,
		CIN 	=>	FA2_l3_c27_S,
		S 		=>	FA1_l2_c27_S,
		COUT 	=>	FA1_l2_c27_Cout
	);

FA1_l2_c28	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c27_Cout,
		B 		=>	FA1_l3_c27_Cout,
		CIN 	=>	FA2_l3_c28_S,
		S 		=>	FA1_l2_c28_S,
		COUT 	=>	FA1_l2_c28_Cout
	);

FA1_l2_c29	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c28_Cout,
		B 		=>	FA1_l3_c28_Cout,
		CIN 	=>	FA2_l3_c29_S,
		S 		=>	FA1_l2_c29_S,
		COUT 	=>	FA1_l2_c29_Cout
	);

FA1_l2_c30	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c29_Cout,
		B 		=>	FA1_l3_c29_Cout,
		CIN 	=>	FA2_l3_c30_S,
		S 		=>	FA1_l2_c30_S,
		COUT 	=>	FA1_l2_c30_Cout
	);

FA1_l2_c31	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c30_Cout,
		B 		=>	FA1_l3_c30_Cout,
		CIN 	=>	FA2_l3_c31_S,
		S 		=>	FA1_l2_c31_S,
		COUT 	=>	FA1_l2_c31_Cout
	);

FA1_l2_c32	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c31_Cout,
		B 		=>	FA1_l3_c31_Cout,
		CIN 	=>	FA2_l3_c32_S,
		S 		=>	FA1_l2_c32_S,
		COUT 	=>	FA1_l2_c32_Cout
	);

FA1_l2_c33	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c32_Cout,
		B 		=>	FA1_l3_c32_Cout,
		CIN 	=>	FA2_l3_c33_S,
		S 		=>	FA1_l2_c33_S,
		COUT 	=>	FA1_l2_c33_Cout
	);

FA1_l2_c34	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c33_Cout,
		B 		=>	FA1_l3_c33_Cout,
		CIN 	=>	FA2_l3_c34_S,
		S 		=>	FA1_l2_c34_S,
		COUT 	=>	FA1_l2_c34_Cout
	);

FA1_l2_c35	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c34_Cout,
		B 		=>	FA1_l3_c34_Cout,
		CIN 	=>	FA2_l3_c35_S,
		S 		=>	FA1_l2_c35_S,
		COUT 	=>	FA1_l2_c35_Cout
	);

FA1_l2_c36	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c35_Cout,
		B 		=>	FA1_l3_c35_Cout,
		CIN 	=>	FA2_l3_c36_S,
		S 		=>	FA1_l2_c36_S,
		COUT 	=>	FA1_l2_c36_Cout
	);

FA1_l2_c37	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c36_Cout,
		B 		=>	FA1_l3_c36_Cout,
		CIN 	=>	FA2_l3_c37_S,
		S 		=>	FA1_l2_c37_S,
		COUT 	=>	FA1_l2_c37_Cout
	);

FA1_l2_c38	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c37_Cout,
		B 		=>	FA1_l3_c37_Cout,
		CIN 	=>	FA2_l3_c38_S,
		S 		=>	FA1_l2_c38_S,
		COUT 	=>	FA1_l2_c38_Cout
	);

FA1_l2_c39	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c38_Cout,
		B 		=>	FA1_l3_c38_Cout,
		CIN 	=>	FA2_l3_c39_S,
		S 		=>	FA1_l2_c39_S,
		COUT 	=>	FA1_l2_c39_Cout
	);

FA1_l2_c40	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c39_Cout,
		B 		=>	FA1_l3_c39_Cout,
		CIN 	=>	FA2_l3_c40_S,
		S 		=>	FA1_l2_c40_S,
		COUT 	=>	FA1_l2_c40_Cout
	);

FA1_l2_c41	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c40_Cout,
		B 		=>	FA1_l3_c40_Cout,
		CIN 	=>	FA2_l3_c41_S,
		S 		=>	FA1_l2_c41_S,
		COUT 	=>	FA1_l2_c41_Cout
	);

FA1_l2_c42	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c41_Cout,
		B 		=>	FA1_l3_c41_Cout,
		CIN 	=>	FA2_l3_c42_S,
		S 		=>	FA1_l2_c42_S,
		COUT 	=>	FA1_l2_c42_Cout
	);

FA1_l2_c43	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c42_Cout,
		B 		=>	FA1_l3_c42_Cout,
		CIN 	=>	FA2_l3_c43_S,
		S 		=>	FA1_l2_c43_S,
		COUT 	=>	FA1_l2_c43_Cout
	);

FA1_l2_c44	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c43_Cout,
		B 		=>	FA1_l3_c43_Cout,
		CIN 	=>	FA2_l3_c44_S,
		S 		=>	FA1_l2_c44_S,
		COUT 	=>	FA1_l2_c44_Cout
	);

FA1_l2_c45	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c44_Cout,
		B 		=>	FA1_l3_c44_Cout,
		CIN 	=>	FA2_l3_c45_S,
		S 		=>	FA1_l2_c45_S,
		COUT 	=>	FA1_l2_c45_Cout
	);

FA1_l2_c46	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c45_Cout,
		B 		=>	FA1_l3_c45_Cout,
		CIN 	=>	FA2_l3_c46_S,
		S 		=>	FA1_l2_c46_S,
		COUT 	=>	FA1_l2_c46_Cout
	);

FA1_l2_c47	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c46_Cout,
		B 		=>	FA1_l3_c46_Cout,
		CIN 	=>	FA2_l3_c47_S,
		S 		=>	FA1_l2_c47_S,
		COUT 	=>	FA1_l2_c47_Cout
	);

FA1_l2_c48	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c47_Cout,
		B 		=>	FA1_l3_c47_Cout,
		CIN 	=>	FA2_l3_c48_S,
		S 		=>	FA1_l2_c48_S,
		COUT 	=>	FA1_l2_c48_Cout
	);

FA1_l2_c49	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c48_Cout,
		B 		=>	FA1_l3_c48_Cout,
		CIN 	=>	FA2_l3_c49_S,
		S 		=>	FA1_l2_c49_S,
		COUT 	=>	FA1_l2_c49_Cout
	);

FA1_l2_c50	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c49_Cout,
		B 		=>	FA1_l3_c49_Cout,
		CIN 	=>	FA2_l3_c50_S,
		S 		=>	FA1_l2_c50_S,
		COUT 	=>	FA1_l2_c50_Cout
	);

FA1_l2_c51	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c50_Cout,
		B 		=>	FA1_l3_c50_Cout,
		CIN 	=>	FA2_l3_c51_S,
		S 		=>	FA1_l2_c51_S,
		COUT 	=>	FA1_l2_c51_Cout
	);

FA1_l2_c52	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c51_Cout,
		B 		=>	FA1_l3_c51_Cout,
		CIN 	=>	FA2_l3_c52_S,
		S 		=>	FA1_l2_c52_S,
		COUT 	=>	FA1_l2_c52_Cout
	);

FA1_l2_c53	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c52_Cout,
		B 		=>	FA1_l3_c52_Cout,
		CIN 	=>	FA2_l3_c53_S,
		S 		=>	FA1_l2_c53_S,
		COUT 	=>	FA1_l2_c53_Cout
	);

FA1_l2_c54	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c53_Cout,
		B 		=>	FA1_l3_c53_Cout,
		CIN 	=>	FA2_l3_c54_S,
		S 		=>	FA1_l2_c54_S,
		COUT 	=>	FA1_l2_c54_Cout
	);

FA1_l2_c55	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c54_Cout,
		B 		=>	FA1_l3_c54_Cout,
		CIN 	=>	FA2_l3_c55_S,
		S 		=>	FA1_l2_c55_S,
		COUT 	=>	FA1_l2_c55_Cout
	);

FA1_l2_c56	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c55_Cout,
		B 		=>	FA1_l3_c55_Cout,
		CIN 	=>	FA2_l3_c56_S,
		S 		=>	FA1_l2_c56_S,
		COUT 	=>	FA1_l2_c56_Cout
	);

FA1_l2_c57	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c56_Cout,
		B 		=>	FA1_l3_c56_Cout,
		CIN 	=>	FA2_l3_c57_S,
		S 		=>	FA1_l2_c57_S,
		COUT 	=>	FA1_l2_c57_Cout
	);

FA1_l2_c58	:	full_adder
	PORT MAP (
		A 		=>	FA2_l3_c57_Cout,
		B 		=>	FA1_l3_c57_Cout,
		CIN 	=>	HA1_l3_c58_S,
		S 		=>	FA1_l2_c58_S,
		COUT 	=>	FA1_l2_c58_Cout
	);

FA1_l2_c59	:	full_adder
	PORT MAP (
		A 		=>	HA1_l3_c58_Cout,
		B 		=>	FA1_l3_c58_Cout,
		CIN 	=>	FA1_l3_c59_S,
		S 		=>	FA1_l2_c59_S,
		COUT 	=>	FA1_l2_c59_Cout
	);

FA1_l2_c60	:	full_adder
	PORT MAP (
		A 		=>	FA1_l3_c59_Cout,
		B 		=>	HA1_l3_c60_S,
		CIN 	=>	l6_p15_b30,
		S 		=>	FA1_l2_c60_S,
		COUT 	=>	FA1_l2_c60_Cout
	);

FA1_l2_c61	:	full_adder
	PORT MAP (
		A 		=>	HA1_l3_c60_Cout,
		B 		=>	S14_neg,
		CIN 	=>	l6_p15_b31,
		S 		=>	FA1_l2_c61_S,
		COUT 	=>	FA1_l2_c61_Cout
	);

HA1_l2_c62	:	half_adder
	PORT MAP (
		A 		=>	1,
		B 		=>	l6_p15_b32,
		S 		=>	HA1_l2_c62_S,
		COUT 	=>	HA1_l2_c62_Cout
	);

HA1_l1_c2	:	half_adder
	PORT MAP (
		A 		=>	l6_p0_b2,
		B 		=>	l6_p1_b0,
		S 		=>	HA1_l1_c2_S,
		COUT 	=>	HA1_l1_c2_Cout
	);

HA1_l1_c3	:	half_adder
	PORT MAP (
		A 		=>	l6_p0_b3,
		B 		=>	l6_p1_b1,
		S 		=>	HA1_l1_c3_S,
		COUT 	=>	HA1_l1_c3_Cout
	);

FA1_l1_c4	:	full_adder
	PORT MAP (
		A 		=>	HA1_l2_c4_S,
		B 		=>	l6_p2_b0,
		CIN 	=>	S2,
		S 		=>	FA1_l1_c4_S,
		COUT 	=>	FA1_l1_c4_Cout
	);

FA1_l1_c5	:	full_adder
	PORT MAP (
		A 		=>	HA1_l2_c4_Cout,
		B 		=>	HA1_l2_c5_S,
		CIN 	=>	l6_p2_b1,
		S 		=>	FA1_l1_c5_S,
		COUT 	=>	FA1_l1_c5_Cout
	);

FA1_l1_c6	:	full_adder
	PORT MAP (
		A 		=>	HA1_l2_c5_Cout,
		B 		=>	FA1_l2_c6_S,
		CIN 	=>	S3,
		S 		=>	FA1_l1_c6_S,
		COUT 	=>	FA1_l1_c6_Cout
	);

FA1_l1_c7	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c6_Cout,
		B 		=>	FA1_l2_c7_S,
		CIN 	=>	l6_p3_b1,
		S 		=>	FA1_l1_c7_S,
		COUT 	=>	FA1_l1_c7_Cout
	);

FA1_l1_c8	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c7_Cout,
		B 		=>	FA1_l2_c8_S,
		CIN 	=>	S4,
		S 		=>	FA1_l1_c8_S,
		COUT 	=>	FA1_l1_c8_Cout
	);

FA1_l1_c9	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c8_Cout,
		B 		=>	FA1_l2_c9_S,
		CIN 	=>	FA1_l3_c9_S,
		S 		=>	FA1_l1_c9_S,
		COUT 	=>	FA1_l1_c9_Cout
	);

FA1_l1_c10	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c9_Cout,
		B 		=>	FA1_l2_c10_S,
		CIN 	=>	FA1_l3_c10_S,
		S 		=>	FA1_l1_c10_S,
		COUT 	=>	FA1_l1_c10_Cout
	);

FA1_l1_c11	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c10_Cout,
		B 		=>	FA1_l2_c11_S,
		CIN 	=>	FA1_l3_c11_S,
		S 		=>	FA1_l1_c11_S,
		COUT 	=>	FA1_l1_c11_Cout
	);

FA1_l1_c12	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c11_Cout,
		B 		=>	FA1_l2_c12_S,
		CIN 	=>	FA1_l3_c12_S,
		S 		=>	FA1_l1_c12_S,
		COUT 	=>	FA1_l1_c12_Cout
	);

FA1_l1_c13	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c12_Cout,
		B 		=>	FA1_l2_c13_S,
		CIN 	=>	FA1_l3_c13_S,
		S 		=>	FA1_l1_c13_S,
		COUT 	=>	FA1_l1_c13_Cout
	);

FA1_l1_c14	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c13_Cout,
		B 		=>	FA1_l2_c14_S,
		CIN 	=>	FA1_l3_c14_S,
		S 		=>	FA1_l1_c14_S,
		COUT 	=>	FA1_l1_c14_Cout
	);

FA1_l1_c15	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c14_Cout,
		B 		=>	FA1_l2_c15_S,
		CIN 	=>	FA1_l3_c15_S,
		S 		=>	FA1_l1_c15_S,
		COUT 	=>	FA1_l1_c15_Cout
	);

FA1_l1_c16	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c15_Cout,
		B 		=>	FA1_l2_c16_S,
		CIN 	=>	FA1_l3_c16_S,
		S 		=>	FA1_l1_c16_S,
		COUT 	=>	FA1_l1_c16_Cout
	);

FA1_l1_c17	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c16_Cout,
		B 		=>	FA1_l2_c17_S,
		CIN 	=>	FA1_l3_c17_S,
		S 		=>	FA1_l1_c17_S,
		COUT 	=>	FA1_l1_c17_Cout
	);

FA1_l1_c18	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c17_Cout,
		B 		=>	FA1_l2_c18_S,
		CIN 	=>	FA1_l3_c18_S,
		S 		=>	FA1_l1_c18_S,
		COUT 	=>	FA1_l1_c18_Cout
	);

FA1_l1_c19	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c18_Cout,
		B 		=>	FA1_l2_c19_S,
		CIN 	=>	FA1_l3_c19_S,
		S 		=>	FA1_l1_c19_S,
		COUT 	=>	FA1_l1_c19_Cout
	);

FA1_l1_c20	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c19_Cout,
		B 		=>	FA1_l2_c20_S,
		CIN 	=>	FA1_l3_c20_S,
		S 		=>	FA1_l1_c20_S,
		COUT 	=>	FA1_l1_c20_Cout
	);

FA1_l1_c21	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c20_Cout,
		B 		=>	FA1_l2_c21_S,
		CIN 	=>	FA1_l3_c21_S,
		S 		=>	FA1_l1_c21_S,
		COUT 	=>	FA1_l1_c21_Cout
	);

FA1_l1_c22	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c21_Cout,
		B 		=>	FA1_l2_c22_S,
		CIN 	=>	FA1_l3_c22_S,
		S 		=>	FA1_l1_c22_S,
		COUT 	=>	FA1_l1_c22_Cout
	);

FA1_l1_c23	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c22_Cout,
		B 		=>	FA1_l2_c23_S,
		CIN 	=>	FA1_l3_c23_S,
		S 		=>	FA1_l1_c23_S,
		COUT 	=>	FA1_l1_c23_Cout
	);

FA1_l1_c24	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c23_Cout,
		B 		=>	FA1_l2_c24_S,
		CIN 	=>	FA1_l3_c24_S,
		S 		=>	FA1_l1_c24_S,
		COUT 	=>	FA1_l1_c24_Cout
	);

FA1_l1_c25	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c24_Cout,
		B 		=>	FA1_l2_c25_S,
		CIN 	=>	FA1_l3_c25_S,
		S 		=>	FA1_l1_c25_S,
		COUT 	=>	FA1_l1_c25_Cout
	);

FA1_l1_c26	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c25_Cout,
		B 		=>	FA1_l2_c26_S,
		CIN 	=>	FA1_l3_c26_S,
		S 		=>	FA1_l1_c26_S,
		COUT 	=>	FA1_l1_c26_Cout
	);

FA1_l1_c27	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c26_Cout,
		B 		=>	FA1_l2_c27_S,
		CIN 	=>	FA1_l3_c27_S,
		S 		=>	FA1_l1_c27_S,
		COUT 	=>	FA1_l1_c27_Cout
	);

FA1_l1_c28	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c27_Cout,
		B 		=>	FA1_l2_c28_S,
		CIN 	=>	FA1_l3_c28_S,
		S 		=>	FA1_l1_c28_S,
		COUT 	=>	FA1_l1_c28_Cout
	);

FA1_l1_c29	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c28_Cout,
		B 		=>	FA1_l2_c29_S,
		CIN 	=>	FA1_l3_c29_S,
		S 		=>	FA1_l1_c29_S,
		COUT 	=>	FA1_l1_c29_Cout
	);

FA1_l1_c30	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c29_Cout,
		B 		=>	FA1_l2_c30_S,
		CIN 	=>	FA1_l3_c30_S,
		S 		=>	FA1_l1_c30_S,
		COUT 	=>	FA1_l1_c30_Cout
	);

FA1_l1_c31	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c30_Cout,
		B 		=>	FA1_l2_c31_S,
		CIN 	=>	FA1_l3_c31_S,
		S 		=>	FA1_l1_c31_S,
		COUT 	=>	FA1_l1_c31_Cout
	);

FA1_l1_c32	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c31_Cout,
		B 		=>	FA1_l2_c32_S,
		CIN 	=>	FA1_l3_c32_S,
		S 		=>	FA1_l1_c32_S,
		COUT 	=>	FA1_l1_c32_Cout
	);

FA1_l1_c33	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c32_Cout,
		B 		=>	FA1_l2_c33_S,
		CIN 	=>	FA1_l3_c33_S,
		S 		=>	FA1_l1_c33_S,
		COUT 	=>	FA1_l1_c33_Cout
	);

FA1_l1_c34	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c33_Cout,
		B 		=>	FA1_l2_c34_S,
		CIN 	=>	FA1_l3_c34_S,
		S 		=>	FA1_l1_c34_S,
		COUT 	=>	FA1_l1_c34_Cout
	);

FA1_l1_c35	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c34_Cout,
		B 		=>	FA1_l2_c35_S,
		CIN 	=>	FA1_l3_c35_S,
		S 		=>	FA1_l1_c35_S,
		COUT 	=>	FA1_l1_c35_Cout
	);

FA1_l1_c36	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c35_Cout,
		B 		=>	FA1_l2_c36_S,
		CIN 	=>	FA1_l3_c36_S,
		S 		=>	FA1_l1_c36_S,
		COUT 	=>	FA1_l1_c36_Cout
	);

FA1_l1_c37	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c36_Cout,
		B 		=>	FA1_l2_c37_S,
		CIN 	=>	FA1_l3_c37_S,
		S 		=>	FA1_l1_c37_S,
		COUT 	=>	FA1_l1_c37_Cout
	);

FA1_l1_c38	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c37_Cout,
		B 		=>	FA1_l2_c38_S,
		CIN 	=>	FA1_l3_c38_S,
		S 		=>	FA1_l1_c38_S,
		COUT 	=>	FA1_l1_c38_Cout
	);

FA1_l1_c39	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c38_Cout,
		B 		=>	FA1_l2_c39_S,
		CIN 	=>	FA1_l3_c39_S,
		S 		=>	FA1_l1_c39_S,
		COUT 	=>	FA1_l1_c39_Cout
	);

FA1_l1_c40	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c39_Cout,
		B 		=>	FA1_l2_c40_S,
		CIN 	=>	FA1_l3_c40_S,
		S 		=>	FA1_l1_c40_S,
		COUT 	=>	FA1_l1_c40_Cout
	);

FA1_l1_c41	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c40_Cout,
		B 		=>	FA1_l2_c41_S,
		CIN 	=>	FA1_l3_c41_S,
		S 		=>	FA1_l1_c41_S,
		COUT 	=>	FA1_l1_c41_Cout
	);

FA1_l1_c42	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c41_Cout,
		B 		=>	FA1_l2_c42_S,
		CIN 	=>	FA1_l3_c42_S,
		S 		=>	FA1_l1_c42_S,
		COUT 	=>	FA1_l1_c42_Cout
	);

FA1_l1_c43	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c42_Cout,
		B 		=>	FA1_l2_c43_S,
		CIN 	=>	FA1_l3_c43_S,
		S 		=>	FA1_l1_c43_S,
		COUT 	=>	FA1_l1_c43_Cout
	);

FA1_l1_c44	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c43_Cout,
		B 		=>	FA1_l2_c44_S,
		CIN 	=>	FA1_l3_c44_S,
		S 		=>	FA1_l1_c44_S,
		COUT 	=>	FA1_l1_c44_Cout
	);

FA1_l1_c45	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c44_Cout,
		B 		=>	FA1_l2_c45_S,
		CIN 	=>	FA1_l3_c45_S,
		S 		=>	FA1_l1_c45_S,
		COUT 	=>	FA1_l1_c45_Cout
	);

FA1_l1_c46	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c45_Cout,
		B 		=>	FA1_l2_c46_S,
		CIN 	=>	FA1_l3_c46_S,
		S 		=>	FA1_l1_c46_S,
		COUT 	=>	FA1_l1_c46_Cout
	);

FA1_l1_c47	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c46_Cout,
		B 		=>	FA1_l2_c47_S,
		CIN 	=>	FA1_l3_c47_S,
		S 		=>	FA1_l1_c47_S,
		COUT 	=>	FA1_l1_c47_Cout
	);

FA1_l1_c48	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c47_Cout,
		B 		=>	FA1_l2_c48_S,
		CIN 	=>	FA1_l3_c48_S,
		S 		=>	FA1_l1_c48_S,
		COUT 	=>	FA1_l1_c48_Cout
	);

FA1_l1_c49	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c48_Cout,
		B 		=>	FA1_l2_c49_S,
		CIN 	=>	FA1_l3_c49_S,
		S 		=>	FA1_l1_c49_S,
		COUT 	=>	FA1_l1_c49_Cout
	);

FA1_l1_c50	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c49_Cout,
		B 		=>	FA1_l2_c50_S,
		CIN 	=>	FA1_l3_c50_S,
		S 		=>	FA1_l1_c50_S,
		COUT 	=>	FA1_l1_c50_Cout
	);

FA1_l1_c51	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c50_Cout,
		B 		=>	FA1_l2_c51_S,
		CIN 	=>	FA1_l3_c51_S,
		S 		=>	FA1_l1_c51_S,
		COUT 	=>	FA1_l1_c51_Cout
	);

FA1_l1_c52	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c51_Cout,
		B 		=>	FA1_l2_c52_S,
		CIN 	=>	FA1_l3_c52_S,
		S 		=>	FA1_l1_c52_S,
		COUT 	=>	FA1_l1_c52_Cout
	);

FA1_l1_c53	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c52_Cout,
		B 		=>	FA1_l2_c53_S,
		CIN 	=>	FA1_l3_c53_S,
		S 		=>	FA1_l1_c53_S,
		COUT 	=>	FA1_l1_c53_Cout
	);

FA1_l1_c54	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c53_Cout,
		B 		=>	FA1_l2_c54_S,
		CIN 	=>	FA1_l3_c54_S,
		S 		=>	FA1_l1_c54_S,
		COUT 	=>	FA1_l1_c54_Cout
	);

FA1_l1_c55	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c54_Cout,
		B 		=>	FA1_l2_c55_S,
		CIN 	=>	FA1_l3_c55_S,
		S 		=>	FA1_l1_c55_S,
		COUT 	=>	FA1_l1_c55_Cout
	);

FA1_l1_c56	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c55_Cout,
		B 		=>	FA1_l2_c56_S,
		CIN 	=>	FA1_l3_c56_S,
		S 		=>	FA1_l1_c56_S,
		COUT 	=>	FA1_l1_c56_Cout
	);

FA1_l1_c57	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c56_Cout,
		B 		=>	FA1_l2_c57_S,
		CIN 	=>	FA1_l3_c57_S,
		S 		=>	FA1_l1_c57_S,
		COUT 	=>	FA1_l1_c57_Cout
	);

FA1_l1_c58	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c57_Cout,
		B 		=>	FA1_l2_c58_S,
		CIN 	=>	FA1_l3_c58_S,
		S 		=>	FA1_l1_c58_S,
		COUT 	=>	FA1_l1_c58_Cout
	);

FA1_l1_c59	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c58_Cout,
		B 		=>	FA1_l2_c59_S,
		CIN 	=>	l6_p16_b27,
		S 		=>	FA1_l1_c59_S,
		COUT 	=>	FA1_l1_c59_Cout
	);

FA1_l1_c60	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c59_Cout,
		B 		=>	FA1_l2_c60_S,
		CIN 	=>	l6_p16_b28,
		S 		=>	FA1_l1_c60_S,
		COUT 	=>	FA1_l1_c60_Cout
	);

FA1_l1_c61	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c60_Cout,
		B 		=>	FA1_l2_c61_S,
		CIN 	=>	l6_p16_b29,
		S 		=>	FA1_l1_c61_S,
		COUT 	=>	FA1_l1_c61_Cout
	);

FA1_l1_c62	:	full_adder
	PORT MAP (
		A 		=>	FA1_l2_c61_Cout,
		B 		=>	HA1_l2_c62_S,
		CIN 	=>	l6_p16_b30,
		S 		=>	FA1_l1_c62_S,
		COUT 	=>	FA1_l1_c62_Cout
	);

FA1_l1_c63	:	full_adder
	PORT MAP (
		A 		=>	HA1_l2_c62_Cout,
		B 		=>	S15_neg,
		CIN 	=>	l6_p16_b31,
		S 		=>	FA1_l1_c63_S,
		COUT 	=>	FA1_l1_c63_Cout
	);


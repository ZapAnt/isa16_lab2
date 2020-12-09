//`timescale 1ns

module tb_fpmul_inreg;

	wire CLK_i;
	wire SMPL_STAT_i;
	wire [31:0] DATA_in;
	wire [31:0] DATA_out;

	clk_gen CG (
		.CLK(CLK_i)
	);

	data_maker DM (
		.CLK(CLK_i),
		.DATA_OUT(DATA_in),
		.SMPL_STAT(SMPL_STAT_i)
	);

	FPmul_inreg UUT (
   		.FP_A(DATA_in),
   		.FP_B(DATA_in),
   		.clk(CLK_i),
   		.FP_Z(DATA_out)
   	);

	data_sink_inreg DS (
		.CLK(CLK_i),
		.DATA_IN(DATA_out),
		.SMPL_STAT(SMPL_STAT_i)
	);

endmodule
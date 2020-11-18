# cd "C:/Users/Anto/Documents/GitHub/isa16_lab2/sim"

vlib work
vcom -work work {../src/common/fpnormalize_fpnormalize.vhd}
vcom -work work {../src/common/fpround_fpround.vhd}
vcom -work work {../src/common/packfp_packfp.vhd}
vcom -work work {../src/common/unpackfp_unpackfp.vhd}
vcom -work work {../src/multiplier/fpmul_stage1_struct.vhd}
vcom -work work {../src/multiplier/fpmul_stage2_struct.vhd}
vcom -work work {../src/multiplier/fpmul_stage3_struct.vhd}
vcom -work work {../src/multiplier/fpmul_stage4_struct.vhd}
vcom -work work {../tb/clock_gen.vhd}
vcom -work work {../tb/data_maker.vhd}
vcom -work work {../tb/data_sink.vhd}

vcom -work work {../src/multiplier/fpmul_pipeline.vhd}
vlog -work work {../tb/tb_fpmul.v}
vsim work.tb_fpmul

do wave.do

run 200 ns
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

vcom -work work {../src/reg_nbit.vhd}
vcom -work work {../src/multiplier/fpmul_pipeline_inreg.vhd}
vcom -work work {../tb/data_sink_inreg.vhd}
vlog -work work {../tb/tb_fpmul_inreg.v}

vsim work.tb_fpmul_inreg

add wave -noupdate -divider {Clock Generate}
add wave -noupdate -radix decimal /tb_fpmul_inreg/CG/*
add wave -noupdate -divider {Data Maker}
add wave -noupdate -radix hexadecimal /tb_fpmul_inreg/DM/*
add wave -noupdate -divider {UUT}
add wave -noupdate -radix hexadecimal /tb_fpmul_inreg/UUT/*
add wave -noupdate -divider {Data Sink}
add wave -noupdate -radix hexadecimal /tb_fpmul_inreg/DS/*
configure wave -timelineunits ns
update

run 200 ns

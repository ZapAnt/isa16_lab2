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

add wave -noupdate -divider {Clock Generate}
add wave -noupdate -radix decimal /tb_fpmul/CG/*
add wave -noupdate -divider {Data Maker}
add wave -noupdate -radix hexadecimal /tb_fpmul/DM/*
add wave -noupdate -divider {UUT}
add wave -noupdate -radix hexadecimal /tb_fpmul/UUT/*
add wave -noupdate -divider {Data Sink}
add wave -noupdate -radix hexadecimall /tb_fpmul/DS/*
configure wave -timelineunits ns
update

run 200 ns
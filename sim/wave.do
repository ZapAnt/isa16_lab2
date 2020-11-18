onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal /tb_fpmul/CG/CLK
add wave -noupdate -radix decimal /tb_fpmul/CG/CLK_i
add wave -noupdate -radix decimal /tb_fpmul/DM/CLK
add wave -noupdate -radix decimal /tb_fpmul/UUT/clk
add wave -noupdate -divider {New Divider}
add wave -noupdate -radix hexadecimal /tb_fpmul/DM/DATA_OUT
add wave -noupdate -radix decimal /tb_fpmul/DM/SMPL_STAT
add wave -noupdate -radix hexadecimal /tb_fpmul/UUT/FP_A
add wave -noupdate -radix hexadecimal /tb_fpmul/UUT/FP_B
add wave -noupdate -radix hexadecimal /tb_fpmul/UUT/FP_Z
add wave -noupdate -radix decimal /tb_fpmul/UUT/A_EXP
add wave -noupdate -radix decimal /tb_fpmul/UUT/A_SIG
add wave -noupdate -radix decimal /tb_fpmul/UUT/B_EXP
add wave -noupdate -radix decimal /tb_fpmul/UUT/B_SIG
add wave -noupdate -radix decimal /tb_fpmul/UUT/EXP_in
add wave -noupdate -radix decimal /tb_fpmul/UUT/EXP_neg
add wave -noupdate -radix decimal /tb_fpmul/UUT/EXP_neg_stage2
add wave -noupdate -radix decimal /tb_fpmul/UUT/EXP_out_round
add wave -noupdate -radix decimal /tb_fpmul/UUT/EXP_pos
add wave -noupdate -radix decimal /tb_fpmul/UUT/EXP_pos_stage2
add wave -noupdate -radix decimal /tb_fpmul/UUT/SIGN_out
add wave -noupdate -radix decimal /tb_fpmul/UUT/SIGN_out_stage1
add wave -noupdate -radix decimal /tb_fpmul/UUT/SIGN_out_stage2
add wave -noupdate -radix decimal /tb_fpmul/UUT/SIG_in
add wave -noupdate -radix decimal /tb_fpmul/UUT/SIG_out_round
add wave -noupdate -radix decimal /tb_fpmul/UUT/isINF_stage1
add wave -noupdate -radix decimal /tb_fpmul/UUT/isINF_stage2
add wave -noupdate -radix decimal /tb_fpmul/UUT/isINF_tab
add wave -noupdate -radix decimal /tb_fpmul/UUT/isNaN
add wave -noupdate -radix decimal /tb_fpmul/UUT/isNaN_stage1
add wave -noupdate -radix decimal /tb_fpmul/UUT/isNaN_stage2
add wave -noupdate -radix decimal /tb_fpmul/UUT/isZ_tab
add wave -noupdate -radix decimal /tb_fpmul/UUT/isZ_tab_stage1
add wave -noupdate -radix decimal /tb_fpmul/UUT/isZ_tab_stage2
add wave -noupdate -divider {New Divider}
add wave -noupdate /tb_fpmul/DS/CLK
add wave -noupdate -radix hexadecimal /tb_fpmul/DS/DATA_IN
add wave -noupdate /tb_fpmul/DS/SMPL_STAT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {12623 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 189
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {256192 ps}

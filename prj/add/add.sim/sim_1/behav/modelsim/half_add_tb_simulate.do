######################################################################
#
# File name : half_add_tb_simulate.do
# Created on: Tue Jan 31 22:34:19 +0800 2023
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.half_add_tb xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {half_add_tb_wave.do}

view wave
view structure
view signals

do {half_add_tb.udo}

run 1000ns

transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+buildup  -L xil_defaultlib -L xlconstant_v1_1_8 -L xlconcat_v2_1_5 -L xlslice_v1_0_3 -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.buildup xil_defaultlib.glbl

do {buildup.udo}

run

endsim

quit -force

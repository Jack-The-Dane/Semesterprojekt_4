transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+buildup  -L xil_defaultlib -L xlconstant_v1_1_8 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.buildup xil_defaultlib.glbl

do {buildup.udo}

run 1000ns

endsim

quit -force

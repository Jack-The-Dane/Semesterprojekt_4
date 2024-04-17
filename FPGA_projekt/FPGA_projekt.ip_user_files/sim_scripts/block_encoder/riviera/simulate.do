transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+block_encoder  -L xil_defaultlib -L secureip -O5 xil_defaultlib.block_encoder

do {block_encoder.udo}

run 1000ns

endsim

quit -force

transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+pwm_generator  -L xil_defaultlib -L secureip -O5 xil_defaultlib.pwm_generator

do {pwm_generator.udo}

run 1000ns

endsim

quit -force

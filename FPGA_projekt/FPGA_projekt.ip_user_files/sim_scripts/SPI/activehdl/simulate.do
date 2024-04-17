transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+SPI  -L xil_defaultlib -L secureip -O2 xil_defaultlib.SPI

do {SPI.udo}

run

endsim

quit -force

vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93  \
"../../../bd/SPI/ip/SPI_shift_register_input_1/sim/SPI_shift_register_input_1.vhd" \
"../../../bd/SPI/ip/SPI_latch_0_0/sim/SPI_latch_0_0.vhd" \
"../../../bd/SPI/ip/SPI_enable_counter_0_0_1/sim/SPI_enable_counter_0_0.vhd" \
"../../../bd/SPI/ip/SPI_NOT_gate_0_0/sim/SPI_NOT_gate_0_0.vhd" \
"../../../bd/SPI/sim/SPI.vhd" \



transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_8

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_8 riviera/xlconstant_v1_1_8

vcom -work xil_defaultlib -93  -incr \
"../../../bd/buildup/ipshared/f442/src/edge_detector.vhd" \
"../../../bd/buildup/ipshared/f442/sim/block_encoder_edge_detector_0_0.vhd" \
"../../../bd/buildup/ipshared/f442/src/uo_down_counter.vhd" \
"../../../bd/buildup/ipshared/f442/sim/block_encoder_up_down_counter_0_0.vhd" \
"../../../bd/buildup/ipshared/f442/sim/block_encoder_edge_detector_0_1.vhd" \
"../../../bd/buildup/ipshared/f442/src/NOT_gate.vhd" \
"../../../bd/buildup/ipshared/f442/sim/block_encoder_NOT_gate_0_0.vhd" \
"../../../bd/buildup/ipshared/f442/src/AND_gate.vhd" \
"../../../bd/buildup/ipshared/f442/sim/block_encoder_AND_gate_0_0.vhd" \
"../../../bd/buildup/ipshared/f442/sim/block_encoder_NOT_gate_0_1.vhd" \
"../../../bd/buildup/ipshared/f442/sim/block_encoder_AND_gate_1_0.vhd" \
"../../../bd/buildup/ipshared/f442/sim/block_encoder.vhd" \
"../../../bd/buildup/ip/buildup_block_encoder_0_0/sim/buildup_block_encoder_0_0.vhd" \

vlog -work xlconstant_v1_1_8  -incr -v2k5 -l xil_defaultlib -l xlconstant_v1_1_8 \
"../../../../FPGA_projekt.gen/sources_1/bd/buildup/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlconstant_v1_1_8 \
"../../../bd/buildup/ip/buildup_xlconstant_1_0/sim/buildup_xlconstant_1_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/buildup/ip/buildup_pwm_gen_0_0/sim/buildup_pwm_gen_0_0.vhd" \
"../../../bd/buildup/ip/buildup_counter_0_0/sim/buildup_counter_0_0.vhd" \
"../../../bd/buildup/ip/buildup_clock_divider_0_0/sim/buildup_clock_divider_0_0.vhd" \
"../../../bd/buildup/ipshared/edaa/src/shift_register_generic.vhd" \
"../../../bd/buildup/ipshared/edaa/sim/SPI_shift_register_input_1.vhd" \
"../../../bd/buildup/ipshared/edaa/src/latch.vhd" \
"../../../bd/buildup/ipshared/edaa/sim/SPI_latch_0_0.vhd" \
"../../../bd/buildup/ipshared/edaa/src/enable_counter.vhd" \
"../../../bd/buildup/ipshared/edaa/sim/SPI_enable_counter_0_0.vhd" \
"../../../bd/buildup/ipshared/edaa/sim/SPI_NOT_gate_0_0.vhd" \
"../../../bd/buildup/ipshared/edaa/sim/SPI.vhd" \
"../../../bd/buildup/ip/buildup_SPI_0_0/sim/buildup_SPI_0_0.vhd" \
"../../../bd/buildup/ip/buildup_synchronizer_0_0/sim/buildup_synchronizer_0_0.vhd" \
"../../../bd/buildup/sim/buildup.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


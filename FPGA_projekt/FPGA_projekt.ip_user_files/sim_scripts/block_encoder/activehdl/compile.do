transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -  \
"../../../bd/block_encoder/ip/block_encoder_edge_detector_0_0/sim/block_encoder_edge_detector_0_0.vhd" \
"../../../bd/block_encoder/ip/block_encoder_up_down_counter_0_0/sim/block_encoder_up_down_counter_0_0.vhd" \
"../../../bd/block_encoder/ip/block_encoder_edge_detector_0_1/sim/block_encoder_edge_detector_0_1.vhd" \
"../../../bd/block_encoder/ip/block_encoder_NOT_gate_0_0/sim/block_encoder_NOT_gate_0_0.vhd" \
"../../../bd/block_encoder/ip/block_encoder_AND_gate_0_0/sim/block_encoder_AND_gate_0_0.vhd" \
"../../../bd/block_encoder/ip/block_encoder_NOT_gate_0_1/sim/block_encoder_NOT_gate_0_1.vhd" \
"../../../bd/block_encoder/ip/block_encoder_AND_gate_1_0/sim/block_encoder_AND_gate_1_0.vhd" \
"../../../bd/block_encoder/sim/block_encoder.vhd" \



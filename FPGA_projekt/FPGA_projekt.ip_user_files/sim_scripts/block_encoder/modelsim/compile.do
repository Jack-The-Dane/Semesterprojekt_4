vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93  \
"../../../bd/block_encoder/ip/block_encoder_edge_detector_0_0/sim/block_encoder_edge_detector_0_0.vhd" \
"../../../bd/block_encoder/ip/block_encoder_up_down_counter_0_0/sim/block_encoder_up_down_counter_0_0.vhd" \
"../../../bd/block_encoder/ip/block_encoder_edge_detector_0_1/sim/block_encoder_edge_detector_0_1.vhd" \
"../../../bd/block_encoder/ip/block_encoder_NOT_gate_0_0/sim/block_encoder_NOT_gate_0_0.vhd" \
"../../../bd/block_encoder/ip/block_encoder_AND_gate_0_0/sim/block_encoder_AND_gate_0_0.vhd" \
"../../../bd/block_encoder/ip/block_encoder_NOT_gate_0_1/sim/block_encoder_NOT_gate_0_1.vhd" \
"../../../bd/block_encoder/ip/block_encoder_AND_gate_1_0/sim/block_encoder_AND_gate_1_0.vhd" \
"../../../bd/block_encoder/sim/block_encoder.vhd" \



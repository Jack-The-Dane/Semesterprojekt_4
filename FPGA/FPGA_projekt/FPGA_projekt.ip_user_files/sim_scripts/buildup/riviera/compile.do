transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_8
vlib riviera/xlconcat_v2_1_5
vlib riviera/xlslice_v1_0_3

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_8 riviera/xlconstant_v1_1_8
vmap xlconcat_v2_1_5 riviera/xlconcat_v2_1_5
vmap xlslice_v1_0_3 riviera/xlslice_v1_0_3

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

vlog -work xlconstant_v1_1_8  -incr -v2k5 -l xil_defaultlib -l xlconstant_v1_1_8 -l xlconcat_v2_1_5 -l xlslice_v1_0_3 \
"../../../../FPGA_projekt.gen/sources_1/bd/buildup/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlconstant_v1_1_8 -l xlconcat_v2_1_5 -l xlslice_v1_0_3 \
"../../../bd/buildup/ip/buildup_xlconstant_1_0/sim/buildup_xlconstant_1_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/buildup/ip/buildup_clock_divider_0_0/sim/buildup_clock_divider_0_0.vhd" \
"../../../bd/buildup/ip/buildup_block_encoder_1_0/sim/buildup_block_encoder_1_0.vhd" \

vlog -work xlconcat_v2_1_5  -incr -v2k5 -l xil_defaultlib -l xlconstant_v1_1_8 -l xlconcat_v2_1_5 -l xlslice_v1_0_3 \
"../../../../FPGA_projekt.gen/sources_1/bd/buildup/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlconstant_v1_1_8 -l xlconcat_v2_1_5 -l xlslice_v1_0_3 \
"../../../bd/buildup/ip/buildup_xlconcat_0_0/sim/buildup_xlconcat_0_0.v" \

vlog -work xlslice_v1_0_3  -incr -v2k5 -l xil_defaultlib -l xlconstant_v1_1_8 -l xlconcat_v2_1_5 -l xlslice_v1_0_3 \
"../../../../FPGA_projekt.gen/sources_1/bd/buildup/ipshared/217a/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlconstant_v1_1_8 -l xlconcat_v2_1_5 -l xlslice_v1_0_3 \
"../../../bd/buildup/ip/buildup_xlslice_0_0/sim/buildup_xlslice_0_0.v" \
"../../../bd/buildup/ip/buildup_xlslice_1_0/sim/buildup_xlslice_1_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/buildup/ip/buildup_counter_1_0/sim/buildup_counter_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlconstant_v1_1_8 -l xlconcat_v2_1_5 -l xlslice_v1_0_3 \
"../../../bd/buildup/ip/buildup_xlslice_2_0/sim/buildup_xlslice_2_0.v" \
"../../../bd/buildup/ip/buildup_xlslice_2_1/sim/buildup_xlslice_2_1.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/buildup/ip/buildup_pwm_gen_0_2/sim/buildup_pwm_gen_0_2.vhd" \
"../../../bd/buildup/ip/buildup_pwm_gen_0_3/sim/buildup_pwm_gen_0_3.vhd" \
"../../../bd/buildup/ip/buildup_AND_gate_0_0/sim/buildup_AND_gate_0_0.vhd" \
"../../../bd/buildup/ip/buildup_AND_gate_0_1/sim/buildup_AND_gate_0_1.vhd" \
"../../../bd/buildup/ip/buildup_AND_gate_0_2/sim/buildup_AND_gate_0_2.vhd" \
"../../../bd/buildup/ip/buildup_AND_gate_0_3/sim/buildup_AND_gate_0_3.vhd" \
"../../../bd/buildup/ip/buildup_NOT_gate_0_0/sim/buildup_NOT_gate_0_0.vhd" \
"../../../bd/buildup/ip/buildup_NOT_gate_0_1/sim/buildup_NOT_gate_0_1.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlconstant_v1_1_8 -l xlconcat_v2_1_5 -l xlslice_v1_0_3 \
"../../../bd/buildup/ip/buildup_xlslice_4_1/sim/buildup_xlslice_4_1.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/buildup/ip/buildup_spi_sub_0_0/sim/buildup_spi_sub_0_0.vhd" \
"../../../bd/buildup/ip/buildup_synchronizer_0_2/sim/buildup_synchronizer_0_2.vhd" \
"../../../bd/buildup/ip/buildup_synchronizer_0_3/sim/buildup_synchronizer_0_3.vhd" \
"../../../bd/buildup/ip/buildup_synchronizer_0_4/sim/buildup_synchronizer_0_4.vhd" \
"../../../bd/buildup/ip/buildup_synchronizer_0_5/sim/buildup_synchronizer_0_5.vhd" \
"../../../bd/buildup/ip/buildup_synchronizer_0_6/sim/buildup_synchronizer_0_6.vhd" \
"../../../bd/buildup/ip/buildup_synchronizer_0_7/sim/buildup_synchronizer_0_7.vhd" \
"../../../bd/buildup/ip/buildup_synchronizer_0_8/sim/buildup_synchronizer_0_8.vhd" \
"../../../bd/buildup/ip/buildup_synchronizer_0_9/sim/buildup_synchronizer_0_9.vhd" \
"../../../bd/buildup/ip/buildup_synchronizer_0_10/sim/buildup_synchronizer_0_10.vhd" \
"../../../bd/buildup/ip/buildup_synchronizer_0_11/sim/buildup_synchronizer_0_11.vhd" \
"../../../bd/buildup/ip/buildup_Rising_edge_detector_0_0/sim/buildup_Rising_edge_detector_0_0.vhd" \
"../../../bd/buildup/ip/buildup_Falling_edge_detector_0_0/sim/buildup_Falling_edge_detector_0_0.vhd" \
"../../../bd/buildup/sim/buildup.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


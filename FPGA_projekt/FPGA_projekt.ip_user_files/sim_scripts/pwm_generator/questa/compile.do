vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93  \
"../../../bd/pwm_generator/ip/pwm_generator_counter_0_0/sim/pwm_generator_counter_0_0.vhd" \
"../../../bd/pwm_generator/ip/pwm_generator_pwm_gen_0_0/sim/pwm_generator_pwm_gen_0_0.vhd" \
"../../../bd/pwm_generator/sim/pwm_generator.vhd" \



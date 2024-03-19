transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  -incr \
"../../../bd/pwm_generator/ip/pwm_generator_counter_0_0/sim/pwm_generator_counter_0_0.vhd" \
"../../../bd/pwm_generator/ip/pwm_generator_pwm_gen_0_0/sim/pwm_generator_pwm_gen_0_0.vhd" \
"../../../bd/pwm_generator/sim/pwm_generator.vhd" \



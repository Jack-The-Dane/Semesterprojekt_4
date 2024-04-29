################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
freeRTOS/portable/GCC/ARM_CM4F/%.obj: ../freeRTOS/portable/GCC/ARM_CM4F/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/home/kasper/ti/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="/home/kasper/Documents/Civilingeniør_Robotteknologi/Semesterprojekt_4/microcontroller" --include_path="/home/kasper/ti/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include" --include_path="/home/kasper/Documents/Civilingeniør_Robotteknologi/Semesterprojekt_4/microcontroller/freeRTOS/include" --include_path="/home/kasper/Documents/Civilingeniør_Robotteknologi/Semesterprojekt_4/microcontroller/tm4c123" --include_path="/home/kasper/Documents/Civilingeniør_Robotteknologi/Semesterprojekt_4/microcontroller/src/inc" --include_path="/home/kasper/Documents/Civilingeniør_Robotteknologi/Semesterprojekt_4/microcontroller/freeRTOS/portable/GCC/ARM_CM4F" --define=ccs="ccs" --define=PART_TM4C123GH6PM -g --c99 --relaxed_ansi --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="freeRTOS/portable/GCC/ARM_CM4F/$(basename $(<F)).d_raw" --obj_directory="freeRTOS/portable/GCC/ARM_CM4F" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '



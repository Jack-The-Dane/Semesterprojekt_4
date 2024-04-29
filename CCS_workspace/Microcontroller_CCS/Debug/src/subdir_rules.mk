################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
src/%.obj: ../src/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/home/jacob/Appimages/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="/home/jacob/Documents/Semester4/Semesterprojekt_4/CCS_workspace/Microcontroller_CCS" --include_path="/home/jacob/Documents/Semester4/Semesterprojekt_4/CCS_workspace/Microcontroller_CCS/src/inc" --include_path="/home/jacob/Documents/Semester4/Semesterprojekt_4/CCS_workspace/Microcontroller_CCS/frt10/inc" --include_path="/home/jacob/Documents/Semester4/Semesterprojekt_4/CCS_workspace/Microcontroller_CCS/frt10/port/TivaM4" --include_path="/home/jacob/Appimages/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include" --define=ccs="ccs" --define=PART_TM4C123GH6PM -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="src/$(basename $(<F)).d_raw" --obj_directory="src" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '



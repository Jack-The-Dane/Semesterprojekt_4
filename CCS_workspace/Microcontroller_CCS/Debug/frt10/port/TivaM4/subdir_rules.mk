################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
frt10/port/TivaM4/%.obj: ../frt10/port/TivaM4/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/Users/Rikke/OneDrive - Syddansk Universitet/4. semester/Semesterprojekt/Semesterprojekt_4/CCS_workspace/Microcontroller_CCS" --include_path="C:/Users/Rikke/OneDrive - Syddansk Universitet/4. semester/Semesterprojekt/Semesterprojekt_4/CCS_workspace/Microcontroller_CCS/src/inc" --include_path="C:/Users/Rikke/OneDrive - Syddansk Universitet/4. semester/Semesterprojekt/Semesterprojekt_4/CCS_workspace/Microcontroller_CCS/frt10/inc" --include_path="C:/Users/Rikke/OneDrive - Syddansk Universitet/4. semester/Semesterprojekt/Semesterprojekt_4/CCS_workspace/Microcontroller_CCS/frt10/port/TivaM4" --include_path="C:/ti/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include" --define=ccs="ccs" --define=PART_TM4C123GH6PM -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="frt10/port/TivaM4/$(basename $(<F)).d_raw" --obj_directory="frt10/port/TivaM4" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

frt10/port/TivaM4/%.obj: ../frt10/port/TivaM4/%.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/Users/Rikke/OneDrive - Syddansk Universitet/4. semester/Semesterprojekt/Semesterprojekt_4/CCS_workspace/Microcontroller_CCS" --include_path="C:/Users/Rikke/OneDrive - Syddansk Universitet/4. semester/Semesterprojekt/Semesterprojekt_4/CCS_workspace/Microcontroller_CCS/src/inc" --include_path="C:/Users/Rikke/OneDrive - Syddansk Universitet/4. semester/Semesterprojekt/Semesterprojekt_4/CCS_workspace/Microcontroller_CCS/frt10/inc" --include_path="C:/Users/Rikke/OneDrive - Syddansk Universitet/4. semester/Semesterprojekt/Semesterprojekt_4/CCS_workspace/Microcontroller_CCS/frt10/port/TivaM4" --include_path="C:/ti/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include" --define=ccs="ccs" --define=PART_TM4C123GH6PM -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="frt10/port/TivaM4/$(basename $(<F)).d_raw" --obj_directory="frt10/port/TivaM4" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '



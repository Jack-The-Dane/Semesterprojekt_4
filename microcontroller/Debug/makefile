################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./main.obj" \
"./tm4c123gh6pm_startup_ccs.obj" \
"./freeRTOS/croutine.obj" \
"./freeRTOS/event_groups.obj" \
"./freeRTOS/list.obj" \
"./freeRTOS/queue.obj" \
"./freeRTOS/stream_buffer.obj" \
"./freeRTOS/tasks.obj" \
"./freeRTOS/timers.obj" \
"./freeRTOS/portable/GCC/ARM_CM4F/port.obj" \
"./freeRTOS/portable/MemMang/heap_1.obj" \
"./freeRTOS/portable/MemMang/heap_2.obj" \
"./freeRTOS/portable/MemMang/heap_3.obj" \
"./freeRTOS/portable/MemMang/heap_4.obj" \
"./freeRTOS/portable/MemMang/heap_5.obj" \
"./src/adc.obj" \
"./src/controller.obj" \
"./src/gpio.obj" \
"./src/joystick.obj" \
"./src/main.obj" \
"./src/spi.obj" \
"./src/systick.obj" \
"./src/uart.obj" \
"./src/uart0.obj" \
"./tm4c123/helper.obj" \
"./tm4c123/nostdlib.obj" \
"./tm4c123/startup_gcc.obj" \
"../tm4c123.ld" \
"../tm4c123gh6pm.cmd" \
"../tm4c123/tm4c123.ld" \
$(GEN_CMDS__FLAG) \
-llibc.a \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include freeRTOS/subdir_vars.mk
-include freeRTOS/portable/GCC/ARM_CM4F/subdir_vars.mk
-include freeRTOS/portable/MemMang/subdir_vars.mk
-include src/subdir_vars.mk
-include tm4c123/subdir_vars.mk
-include subdir_rules.mk
-include freeRTOS/subdir_rules.mk
-include freeRTOS/portable/GCC/ARM_CM4F/subdir_rules.mk
-include freeRTOS/portable/MemMang/subdir_rules.mk
-include src/subdir_rules.mk
-include tm4c123/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
CCS-Project.out 

EXE_OUTPUTS__QUOTED += \
"CCS-Project.out" 


# All Target
all: $(OBJS) $(LD_SRCS) $(CMD_SRCS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "CCS-Project.out"

# Tool invocations
CCS-Project.out: $(OBJS) $(LD_SRCS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: Arm Linker'
	"C:/ti/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --define=ccs="ccs" --define=PART_TM4C123GH6PM -g --c99 --relaxed_ansi --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi -z -m"CCS-Project.map" --heap_size=0 --stack_size=512 -i"C:/ti/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/lib" -i"C:/ti/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include" --reread_libs --diag_wrap=off --display_error_number --warn_sections --xml_link_info="CCS-Project_linkInfo.xml" --rom_model -o "CCS-Project.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)
	-$(RM) "main.obj" "tm4c123gh6pm_startup_ccs.obj" "freeRTOS\croutine.obj" "freeRTOS\event_groups.obj" "freeRTOS\list.obj" "freeRTOS\queue.obj" "freeRTOS\stream_buffer.obj" "freeRTOS\tasks.obj" "freeRTOS\timers.obj" "freeRTOS\portable\GCC\ARM_CM4F\port.obj" "freeRTOS\portable\MemMang\heap_1.obj" "freeRTOS\portable\MemMang\heap_2.obj" "freeRTOS\portable\MemMang\heap_3.obj" "freeRTOS\portable\MemMang\heap_4.obj" "freeRTOS\portable\MemMang\heap_5.obj" "src\adc.obj" "src\controller.obj" "src\gpio.obj" "src\joystick.obj" "src\main.obj" "src\spi.obj" "src\systick.obj" "src\uart.obj" "src\uart0.obj" "tm4c123\helper.obj" "tm4c123\nostdlib.obj" "tm4c123\startup_gcc.obj" 
	-$(RM) "main.d" "tm4c123gh6pm_startup_ccs.d" "freeRTOS\croutine.d" "freeRTOS\event_groups.d" "freeRTOS\list.d" "freeRTOS\queue.d" "freeRTOS\stream_buffer.d" "freeRTOS\tasks.d" "freeRTOS\timers.d" "freeRTOS\portable\GCC\ARM_CM4F\port.d" "freeRTOS\portable\MemMang\heap_1.d" "freeRTOS\portable\MemMang\heap_2.d" "freeRTOS\portable\MemMang\heap_3.d" "freeRTOS\portable\MemMang\heap_4.d" "freeRTOS\portable\MemMang\heap_5.d" "src\adc.d" "src\controller.d" "src\gpio.d" "src\joystick.d" "src\main.d" "src\spi.d" "src\systick.d" "src\uart.d" "src\uart0.d" "tm4c123\helper.d" "tm4c123\nostdlib.d" "tm4c123\startup_gcc.d" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets


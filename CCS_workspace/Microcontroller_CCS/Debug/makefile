################################################################################
# Automatically-generated file. Do not edit!
################################################################################

CG_TOOL_ROOT := /home/jacob/Appimages/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./adc.obj" \
"./controller.obj" \
"./gpio.obj" \
"./joystick.obj" \
"./main.obj" \
"./spi.obj" \
"./uart.obj" \
"./uart0.obj" \
"./frt10/port/MemMang/heap_2.obj" \
"./frt10/port/TivaM4/port.obj" \
"./frt10/port/TivaM4/portasm.obj" \
"./frt10/port/TivaM4/startup_frt.obj" \
"./frt10/port/TivaM4/systick_frt.obj" \
"./frt10/src/croutine.obj" \
"./frt10/src/event_groups.obj" \
"./frt10/src/list.obj" \
"./frt10/src/queue.obj" \
"./frt10/src/stream_buffer.obj" \
"./frt10/src/tasks.obj" \
"./frt10/src/timers.obj" \
"../tm4c123gh6pm.cmd" \
$(GEN_CMDS__FLAG) \
-llibc.a \

-include ../makefile.init

RM := rm -rf
RMDIR := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include frt10/port/MemMang/subdir_vars.mk
-include frt10/port/TivaM4/subdir_vars.mk
-include frt10/src/subdir_vars.mk
-include subdir_rules.mk
-include frt10/port/MemMang/subdir_rules.mk
-include frt10/port/TivaM4/subdir_rules.mk
-include frt10/src/subdir_rules.mk
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
Microcontroller_CCS.out 

EXE_OUTPUTS__QUOTED += \
"Microcontroller_CCS.out" 


# All Target
all: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "Microcontroller_CCS.out"

# Tool invocations
Microcontroller_CCS.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: Arm Linker'
	"/home/jacob/Appimages/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --define=ccs="ccs" --define=PART_TM4C123GH6PM -g --c99 --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi -z -m"Microcontroller_CCS.map" --heap_size=0 --stack_size=512 -i"/home/jacob/Appimages/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/lib" -i"/home/jacob/Appimages/ccs1260/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include" --reread_libs --diag_wrap=off --display_error_number --warn_sections --xml_link_info="Microcontroller_CCS_linkInfo.xml" --rom_model -o "Microcontroller_CCS.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)
	-$(RM) "adc.obj" "controller.obj" "gpio.obj" "joystick.obj" "main.obj" "spi.obj" "uart.obj" "uart0.obj" "frt10/port/MemMang/heap_2.obj" "frt10/port/TivaM4/port.obj" "frt10/port/TivaM4/portasm.obj" "frt10/port/TivaM4/startup_frt.obj" "frt10/port/TivaM4/systick_frt.obj" "frt10/src/croutine.obj" "frt10/src/event_groups.obj" "frt10/src/list.obj" "frt10/src/queue.obj" "frt10/src/stream_buffer.obj" "frt10/src/tasks.obj" "frt10/src/timers.obj" 
	-$(RM) "adc.d" "controller.d" "gpio.d" "joystick.d" "main.d" "spi.d" "uart.d" "uart0.d" "frt10/port/MemMang/heap_2.d" "frt10/port/TivaM4/port.d" "frt10/port/TivaM4/startup_frt.d" "frt10/port/TivaM4/systick_frt.d" "frt10/src/croutine.d" "frt10/src/event_groups.d" "frt10/src/list.d" "frt10/src/queue.d" "frt10/src/stream_buffer.d" "frt10/src/tasks.d" "frt10/src/timers.d" 
	-$(RM) "frt10/port/TivaM4/portasm.d" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets


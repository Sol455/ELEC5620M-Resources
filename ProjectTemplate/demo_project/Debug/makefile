################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := clean

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/Util/hwlib/cv/subdir.mk
-include Drivers/Util/hwlib/a10/subdir.mk
-include Drivers/Util/hwlib/subdir.mk
-include Drivers/Util/subdir.mk
-include Drivers/Template/subdir.mk
-include Drivers/Soft_DMAController/subdir.mk
-include Drivers/HPS_usleep/subdir.mk
-include Drivers/HPS_UART/subdir.mk
-include Drivers/HPS_SPI/subdir.mk
-include Drivers/HPS_IRQ/subdir.mk
-include Drivers/HPS_I2C/subdir.mk
-include Drivers/HPS_GPIO/subdir.mk
-include Drivers/HPS_DMAController/subdir.mk
-include Drivers/FatFS/subdir.mk
-include Drivers/FPGA_PIO/subdir.mk
-include Drivers/FPGA_IrDAController/subdir.mk
-include Drivers/FPGA_AvMMReset/subdir.mk
-include Drivers/DE1SoC_WM8731/subdir.mk
-include Drivers/DE1SoC_Servo/subdir.mk
-include Drivers/DE1SoC_Mandelbrot/subdir.mk
-include Drivers/DE1SoC_LT24/subdir.mk
-include Drivers/BasicFont/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := demo_project
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: main-build

# Main-build Target
main-build: demo_project.axf

# Tool invocations
demo_project.axf: $(OBJS) C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\ScatterFiles\OnChipRam.scat $(USER_OBJS) $(LIBS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: Arm Linker 6'
	armlink.exe --entry=__vector_table --scatter="C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\ScatterFiles\OnChipRam.scat" --info=sizes -o "demo_project.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES) $(OBJS) $(C_DEPS) demo_project.axf 
	-@echo ' '

.PHONY: all clean dependents main-build

-include ../makefile.targets

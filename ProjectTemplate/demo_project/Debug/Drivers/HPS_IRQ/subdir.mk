################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/HPS_IRQ/HPS_IRQ.c 

OBJS += \
./Drivers/HPS_IRQ/HPS_IRQ.o 

C_DEPS += \
./Drivers/HPS_IRQ/HPS_IRQ.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/HPS_IRQ/HPS_IRQ.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/HPS_IRQ/HPS_IRQ.c Drivers/HPS_IRQ/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



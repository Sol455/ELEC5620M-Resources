################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Soft_DMAController/Soft_DMAController.c 

OBJS += \
./Drivers/Soft_DMAController/Soft_DMAController.o 

C_DEPS += \
./Drivers/Soft_DMAController/Soft_DMAController.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Soft_DMAController/Soft_DMAController.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Soft_DMAController/Soft_DMAController.c Drivers/Soft_DMAController/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



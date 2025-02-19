################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/hwlib/a10/alt_clock_manager.c 

OBJS += \
./Drivers/Util/hwlib/a10/alt_clock_manager.o 

C_DEPS += \
./Drivers/Util/hwlib/a10/alt_clock_manager.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Util/hwlib/a10/alt_clock_manager.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/hwlib/a10/alt_clock_manager.c Drivers/Util/hwlib/a10/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



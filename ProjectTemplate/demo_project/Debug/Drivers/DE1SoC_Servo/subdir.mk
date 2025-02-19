################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/DE1SoC_Servo/DE1SoC_Servo.c 

OBJS += \
./Drivers/DE1SoC_Servo/DE1SoC_Servo.o 

C_DEPS += \
./Drivers/DE1SoC_Servo/DE1SoC_Servo.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/DE1SoC_Servo/DE1SoC_Servo.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/DE1SoC_Servo/DE1SoC_Servo.c Drivers/DE1SoC_Servo/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



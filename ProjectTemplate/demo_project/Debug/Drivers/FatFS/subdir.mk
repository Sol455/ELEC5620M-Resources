################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/FatFS/diskio_socfpga.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/FatFS/ff.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/FatFS/ffsystem.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/FatFS/ffunicode.c 

OBJS += \
./Drivers/FatFS/diskio_socfpga.o \
./Drivers/FatFS/ff.o \
./Drivers/FatFS/ffsystem.o \
./Drivers/FatFS/ffunicode.o 

C_DEPS += \
./Drivers/FatFS/diskio_socfpga.d \
./Drivers/FatFS/ff.d \
./Drivers/FatFS/ffsystem.d \
./Drivers/FatFS/ffunicode.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/FatFS/diskio_socfpga.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/FatFS/diskio_socfpga.c Drivers/FatFS/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/FatFS/ff.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/FatFS/ff.c Drivers/FatFS/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/FatFS/ffsystem.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/FatFS/ffsystem.c Drivers/FatFS/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/FatFS/ffunicode.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/FatFS/ffunicode.c Drivers/FatFS/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



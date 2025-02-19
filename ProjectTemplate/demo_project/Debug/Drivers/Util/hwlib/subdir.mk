################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/hwlib/alt_cache.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/hwlib/alt_globaltmr.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/hwlib/alt_sdmmc.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/hwlib/alt_timers.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/hwlib/alt_watchdog.c 

OBJS += \
./Drivers/Util/hwlib/alt_cache.o \
./Drivers/Util/hwlib/alt_globaltmr.o \
./Drivers/Util/hwlib/alt_sdmmc.o \
./Drivers/Util/hwlib/alt_timers.o \
./Drivers/Util/hwlib/alt_watchdog.o 

C_DEPS += \
./Drivers/Util/hwlib/alt_cache.d \
./Drivers/Util/hwlib/alt_globaltmr.d \
./Drivers/Util/hwlib/alt_sdmmc.d \
./Drivers/Util/hwlib/alt_timers.d \
./Drivers/Util/hwlib/alt_watchdog.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Util/hwlib/alt_cache.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/hwlib/alt_cache.c Drivers/Util/hwlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/hwlib/alt_globaltmr.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/hwlib/alt_globaltmr.c Drivers/Util/hwlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/hwlib/alt_sdmmc.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/hwlib/alt_sdmmc.c Drivers/Util/hwlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/hwlib/alt_timers.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/hwlib/alt_timers.c Drivers/Util/hwlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/hwlib/alt_watchdog.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/hwlib/alt_watchdog.c Drivers/Util/hwlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



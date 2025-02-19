################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/crc32.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/driver_crc.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/driver_ctx.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/driver_flash.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/enum_lookup.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/error.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/event.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/memcpy_v.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/semihosting.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/startup_arm.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/startup_de1soc.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/uboot_image.c \
C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/verbosity.c 

OBJS += \
./Drivers/Util/crc32.o \
./Drivers/Util/driver_crc.o \
./Drivers/Util/driver_ctx.o \
./Drivers/Util/driver_flash.o \
./Drivers/Util/enum_lookup.o \
./Drivers/Util/error.o \
./Drivers/Util/event.o \
./Drivers/Util/memcpy_v.o \
./Drivers/Util/semihosting.o \
./Drivers/Util/startup_arm.o \
./Drivers/Util/startup_de1soc.o \
./Drivers/Util/uboot_image.o \
./Drivers/Util/verbosity.o 

C_DEPS += \
./Drivers/Util/crc32.d \
./Drivers/Util/driver_crc.d \
./Drivers/Util/driver_ctx.d \
./Drivers/Util/driver_flash.d \
./Drivers/Util/enum_lookup.d \
./Drivers/Util/error.d \
./Drivers/Util/event.d \
./Drivers/Util/memcpy_v.d \
./Drivers/Util/semihosting.d \
./Drivers/Util/startup_arm.d \
./Drivers/Util/startup_de1soc.d \
./Drivers/Util/uboot_image.d \
./Drivers/Util/verbosity.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Util/crc32.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/crc32.c Drivers/Util/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/driver_crc.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/driver_crc.c Drivers/Util/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/driver_ctx.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/driver_ctx.c Drivers/Util/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/driver_flash.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/driver_flash.c Drivers/Util/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/enum_lookup.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/enum_lookup.c Drivers/Util/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/error.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/error.c Drivers/Util/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/event.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/event.c Drivers/Util/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/memcpy_v.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/memcpy_v.c Drivers/Util/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/semihosting.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/semihosting.c Drivers/Util/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/startup_arm.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/startup_arm.c Drivers/Util/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/startup_de1soc.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/startup_de1soc.c Drivers/Util/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/uboot_image.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/uboot_image.c Drivers/Util/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/Util/verbosity.o: C:/Users/el20sh/WorkSpace/ELEC5620M-Resources/Drivers/Util/verbosity.c Drivers/Util/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\el20sh\WorkSpace\ELEC5620M-Resources\Drivers" -O0 -g -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



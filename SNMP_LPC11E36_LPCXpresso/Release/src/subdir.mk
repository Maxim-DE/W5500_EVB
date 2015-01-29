################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/cr_startup_lpc11exx.c \
../src/crp.c \
../src/main.c \
../src/sysinit.c \
../src/w5500_init.c 

S_SRCS += \
../src/aeabi_romdiv_patch.s 

OBJS += \
./src/aeabi_romdiv_patch.o \
./src/cr_startup_lpc11exx.o \
./src/crp.o \
./src/main.o \
./src/sysinit.o \
./src/w5500_init.o 

C_DEPS += \
./src/cr_startup_lpc11exx.d \
./src/crp.d \
./src/main.d \
./src/sysinit.d \
./src/w5500_init.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -DNDEBUG -D__CODE_RED -D__USE_ROMDIVIDE -mcpu=cortex-m0 -mthumb -D__REDLIB__ -specs=redlib.specs -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DNDEBUG -D__CODE_RED -DCORE_M0 -D__USE_ROMDIVIDE -D__USE_LPCOPEN -D__LPC11EXX__ -I"D:\WIZnet\__Purple\W5500_EVB\workspace\snmp\wiznet_evb_w5500evb_board\inc" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\snmp\lpc_chip_11exx\inc" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\snmp\SNMP_LPC11E36_LPCXpresso\src" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\snmp\SNMP_LPC11E36_LPCXpresso\src\ioLibrary" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\snmp\SNMP_LPC11E36_LPCXpresso\src\ioLibrary\Internet\SNMP" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\snmp\SNMP_LPC11E36_LPCXpresso\src\ioLibrary\Ethernet" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\snmp\SNMP_LPC11E36_LPCXpresso\src\ioLibrary\Ethernet\W5500" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\snmp\SNMP_LPC11E36_LPCXpresso\src\Application" -I"D:\WIZnet\__Purple\W5500_EVB\workspace\snmp\SNMP_LPC11E36_LPCXpresso\src\PlatformHandler" -Os -g -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



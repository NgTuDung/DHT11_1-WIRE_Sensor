################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk/platform/service/udelay/src/sl_udelay.c 

S_UPPER_SRCS += \
C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.S 

OBJS += \
./gecko_sdk_4.4.2/platform/service/udelay/src/sl_udelay.o \
./gecko_sdk_4.4.2/platform/service/udelay/src/sl_udelay_armv6m_gcc.o 

C_DEPS += \
./gecko_sdk_4.4.2/platform/service/udelay/src/sl_udelay.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.2/platform/service/udelay/src/sl_udelay.o: C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk/platform/service/udelay/src/sl_udelay.c gecko_sdk_4.4.2/platform/service/udelay/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG24B220F1536IM48=1' '-DSL_BOARD_NAME="BRD4187C"' '-DSL_BOARD_REV="A01"' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\FPTSHOP\SimplicityStudio\v5_workspace\DHT11_Sensor\config" -I"C:\Users\FPTSHOP\SimplicityStudio\v5_workspace\DHT11_Sensor\autogen" -I"C:\Users\FPTSHOP\SimplicityStudio\v5_workspace\DHT11_Sensor" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/driver/debug/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.2/platform/service/udelay/src/sl_udelay.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.2/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.S gecko_sdk_4.4.2/platform/service/udelay/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Assembler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -I"C:\Users\FPTSHOP\SimplicityStudio\v5_workspace\DHT11_Sensor\config" -I"C:\Users\FPTSHOP\SimplicityStudio\v5_workspace\DHT11_Sensor\autogen" -I"C:\Users\FPTSHOP\SimplicityStudio\v5_workspace\DHT11_Sensor" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/driver/debug/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/FPTSHOP/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" '-DDEBUG_EFM=1' '-DEFR32MG24B220F1536IM48=1' '-DSL_BOARD_NAME="BRD4187C"' '-DSL_BOARD_REV="A01"' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_COMPONENT_CATALOG_PRESENT=1' -mfpu=fpv5-sp-d16 -mfloat-abi=hard -imacrossl_gcc_preinclude.h -c -x assembler-with-cpp -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



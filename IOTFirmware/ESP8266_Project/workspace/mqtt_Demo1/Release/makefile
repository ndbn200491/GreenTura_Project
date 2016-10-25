################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -f

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include libraries/SPI/subdir.mk
-include libraries/PubSubClient/src/subdir.mk
-include libraries/Ethernet/src/utility/subdir.mk
-include libraries/Ethernet/src/subdir.mk
-include json_data/util/subdir.mk
-include json_data/third-party/tinyxml/subdir.mk
-include json_data/third-party/parson/subdir.mk
-include json_data/third-party/open-ctm/liblzma/subdir.mk
-include json_data/third-party/open-ctm/subdir.mk
-include json_data/third-party/glfw/lib/x11/subdir.mk
-include json_data/third-party/glfw/lib/win32/subdir.mk
-include json_data/third-party/glfw/lib/cocoa/subdir.mk
-include json_data/third-party/glfw/lib/carbon/subdir.mk
-include json_data/third-party/glfw/lib/subdir.mk
-include json_data/third-party/glew/src/subdir.mk
-include json_data/third-party/glew/auto/src/subdir.mk
-include json_data/third-party/convert-ctm/subdir.mk
-include json_data/opengl/subdir.mk
-include json_data/material/subdir.mk
-include json_data/loader/subdir.mk
-include json_data/extras/subdir.mk
-include json_data/base/subdir.mk
-include core/core/umm_malloc/subdir.mk
-include core/core/spiffs/subdir.mk
-include core/core/libb64/subdir.mk
-include core/core/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
AR += \
arduino.ar \

ELF += \
mqtt_Demo1.elf \

EEP += \
mqtt_Demo1.eep \

FLASH_IMAGE += \
mqtt_Demo1.bin \


# All Target
all: mqtt_Demo1

# Tool invocations
mqtt_Demo1: $(FLASH_IMAGE)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-size" -A "C:/eclipseArduino/workspace/mqtt_Demo1/Release/mqtt_Demo1.elf"
	@echo 'Finished building target: $@'
	@echo ' '

arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-ar" cru  "C:/eclipseArduino/workspace/mqtt_Demo1/Release/arduino.ar"    arduino.ar $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

mqtt_Demo1.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -g -Os -nostdlib -Wl,--no-check-sections -u call_user_start -Wl,-static "-LC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lib" "-LC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/ld" "-Teagle.flash.4m1m.ld" -Wl,--gc-sections -Wl,-wrap,system_restart_local -Wl,-wrap,register_chipv6_phy  -o "C:/eclipseArduino/workspace/mqtt_Demo1/Release/mqtt_Demo1.elf" -Wl,--start-group   $(LINK_OBJ) $(AR)  "C:/eclipseArduino/workspace/mqtt_Demo1/Release/arduino.ar" -lm -lgcc -lhal -lphy -lpp -lnet80211 -lwpa -lcrypto -lmain -lwps -laxtls -lsmartconfig -lmesh -lwpa2 -llwip -Wl,--end-group  "-LC:/eclipseArduino/workspace/mqtt_Demo1/Release"
	@echo 'Finished building: $@'
	@echo ' '

mqtt_Demo1.eep: $(ELF)
	@echo 'Create eeprom image'
	${A.RECIPE.OBJCOPY.EEP.PATTERN}
	@echo 'Finished building: $@'
	@echo ' '

mqtt_Demo1.bin: $(EEP)
	@echo 'Create Flash image (ihex format)'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\esptool\0.4.8/esptool.exe" -eo "C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/bootloaders/eboot/eboot.elf" -bo "C:/eclipseArduino/workspace/mqtt_Demo1/Release/mqtt_Demo1.bin" -bm qio -bf 40 -bz 4M -bs .text -bp 4096 -ec -eo "C:/eclipseArduino/workspace/mqtt_Demo1/Release/mqtt_Demo1.elf" -bs .irom0.text -bs .text -bs .data -bs .rodata -bc -ec
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(PDE_DEPS)$(C_DEPS)$(AR)$(EEP)$(FLASH_IMAGE)$(CC_DEPS)$(AR_OBJ)$(C++_DEPS)$(LINK_OBJ)$(CXX_DEPS)$(ASM_DEPS)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(ELF)$(CPP_DEPS) mqtt_Demo1
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

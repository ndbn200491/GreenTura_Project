################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -f

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include libraries/PubSubClient/tests/src/lib/subdir.mk
-include libraries/PubSubClient/tests/src/subdir.mk
-include libraries/PubSubClient/src/subdir.mk
-include libraries/PubSubClient/examples/mqtt_stream/subdir.mk
-include libraries/PubSubClient/examples/mqtt_reconnect_nonblocking/subdir.mk
-include libraries/PubSubClient/examples/mqtt_publish_in_callback/subdir.mk
-include libraries/PubSubClient/examples/mqtt_esp8266/subdir.mk
-include libraries/PubSubClient/examples/mqtt_basic/subdir.mk
-include libraries/PubSubClient/examples/mqtt_auth/subdir.mk
-include libraries/ESP8266WiFi/src/subdir.mk
-include libraries/ESP8266WiFi/examples/WiFiWebServer/subdir.mk
-include libraries/ESP8266WiFi/examples/WiFiTelnetToSerial/subdir.mk
-include libraries/ESP8266WiFi/examples/WiFiScan/subdir.mk
-include libraries/ESP8266WiFi/examples/WiFiMulti/subdir.mk
-include libraries/ESP8266WiFi/examples/WiFiClientEvents/subdir.mk
-include libraries/ESP8266WiFi/examples/WiFiClientBasic/subdir.mk
-include libraries/ESP8266WiFi/examples/WiFiClient/subdir.mk
-include libraries/ESP8266WiFi/examples/WiFiAccessPoint/subdir.mk
-include libraries/ESP8266WiFi/examples/NTPClient/subdir.mk
-include libraries/ESP8266WiFi/examples/HTTPSRequest/subdir.mk
-include libraries/ESP8266WebServer/src/subdir.mk
-include libraries/ESP8266WebServer/examples/WebUpdate/subdir.mk
-include libraries/ESP8266WebServer/examples/SimpleAuthentification/subdir.mk
-include libraries/ESP8266WebServer/examples/SDWebServer/subdir.mk
-include libraries/ESP8266WebServer/examples/HttpBasicAuth/subdir.mk
-include libraries/ESP8266WebServer/examples/HelloServer/subdir.mk
-include libraries/ESP8266WebServer/examples/FSBrowser/subdir.mk
-include libraries/ESP8266WebServer/examples/AdvancedWebServer/subdir.mk
-include libraries/EEPROM/examples/eeprom_write/subdir.mk
-include libraries/EEPROM/examples/eeprom_read/subdir.mk
-include libraries/EEPROM/examples/eeprom_clear/subdir.mk
-include libraries/EEPROM/subdir.mk
-include libraries/ArduinoJson/third-party/gtest-1.7.0/xcode/Samples/FrameworkSample/subdir.mk
-include libraries/ArduinoJson/third-party/gtest-1.7.0/test/subdir.mk
-include libraries/ArduinoJson/third-party/gtest-1.7.0/src/subdir.mk
-include libraries/ArduinoJson/third-party/gtest-1.7.0/samples/subdir.mk
-include libraries/ArduinoJson/third-party/gtest-1.7.0/fused-src/gtest/subdir.mk
-include libraries/ArduinoJson/third-party/gtest-1.7.0/codegear/subdir.mk
-include libraries/ArduinoJson/test/subdir.mk
-include libraries/ArduinoJson/src/Internals/subdir.mk
-include libraries/ArduinoJson/src/subdir.mk
-include libraries/ArduinoJson/examples/JsonUdpBeacon/subdir.mk
-include libraries/ArduinoJson/examples/JsonServer/subdir.mk
-include libraries/ArduinoJson/examples/JsonParserExample/subdir.mk
-include libraries/ArduinoJson/examples/JsonHttpClient/subdir.mk
-include libraries/ArduinoJson/examples/JsonGeneratorExample/subdir.mk
-include libraries/ArduinoJson/examples/IndentedPrintExample/subdir.mk
-include jsonData/subdir.mk
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
IOTSmartToolV5.elf \

EEP += \
IOTSmartToolV5.eep \

FLASH_IMAGE += \
IOTSmartToolV5.bin \


# All Target
all: IOTSmartToolV5

# Tool invocations
IOTSmartToolV5: $(FLASH_IMAGE)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"/bin/xtensa-lx106-elf-size" -A "D:/Working/IOT/IOTFirmware/Greentura_Proj/IOTSmartToolV5/Debug_AVaRICE/IOTSmartToolV5.elf"
	@echo 'Finished building target: $@'
	@echo ' '

arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"/bin/xtensa-lx106-elf-ar" cru  "D:/Working/IOT/IOTFirmware/Greentura_Proj/IOTSmartToolV5/Debug_AVaRICE/arduino.ar"    arduino.ar $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

IOTSmartToolV5.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"/bin/xtensa-lx106-elf-gcc" -g -Os -nostdlib -Wl,--no-check-sections -u call_user_start -Wl,-static "-LD:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lib" "-LD:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/ld" "-Teagle.flash.4m1m.ld" -Wl,--gc-sections -Wl,-wrap,system_restart_local -Wl,-wrap,register_chipv6_phy  -o "D:/Working/IOT/IOTFirmware/Greentura_Proj/IOTSmartToolV5/Debug_AVaRICE/IOTSmartToolV5.elf" -Wl,--start-group   $(LINK_OBJ) $(AR)  "D:/Working/IOT/IOTFirmware/Greentura_Proj/IOTSmartToolV5/Debug_AVaRICE/arduino.ar" -lm -lgcc -lhal -lphy -lpp -lnet80211 -lwpa -lcrypto -lmain -lwps -laxtls -lsmartconfig -lmesh -lwpa2 -llwip -Wl,--end-group  "-LD:/Working/IOT/IOTFirmware/Greentura_Proj/IOTSmartToolV5/Debug_AVaRICE"
	@echo 'Finished building: $@'
	@echo ' '

IOTSmartToolV5.eep: $(ELF)
	@echo 'Create eeprom image'
	${A.RECIPE.OBJCOPY.EEP.PATTERN}
	@echo 'Finished building: $@'
	@echo ' '

IOTSmartToolV5.bin: $(EEP)
	@echo 'Create Flash image (ihex format)'
	"/esptool.exe" -eo "D:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/bootloaders/eboot/eboot.elf" -bo "D:/Working/IOT/IOTFirmware/Greentura_Proj/IOTSmartToolV5/Debug_AVaRICE/IOTSmartToolV5.bin" -bm qio -bf 40 -bz 4M -bs .text -bp 4096 -ec -eo "D:/Working/IOT/IOTFirmware/Greentura_Proj/IOTSmartToolV5/Debug_AVaRICE/IOTSmartToolV5.elf" -bs .irom0.text -bs .text -bs .data -bs .rodata -bc -ec
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(PDE_DEPS)$(C_DEPS)$(AR)$(EEP)$(FLASH_IMAGE)$(CC_DEPS)$(AR_OBJ)$(C++_DEPS)$(LINK_OBJ)$(CXX_DEPS)$(ASM_DEPS)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(ELF)$(CPP_DEPS) IOTSmartToolV5
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

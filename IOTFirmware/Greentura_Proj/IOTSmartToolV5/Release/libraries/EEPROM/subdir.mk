################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM\EEPROM.cpp 

LINK_OBJ += \
.\libraries\EEPROM\EEPROM.cpp.o 

CPP_DEPS += \
.\libraries\EEPROM\EEPROM.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\EEPROM\EEPROM.cpp.o: D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM\EEPROM.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\Working\sloeber\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DARDUINO=10609 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266 -DESP8266  -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"D:\Working\sloeber\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"D:\Working\sloeber\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"D:\Working\sloeber\arduinoPlugin\libraries\ArduinoJson\5.6.6" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '



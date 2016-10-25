################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
INO_SRCS += \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/examples/JsonServer/JsonServer.ino 

INO_DEPS += \
./libraries/ArduinoJson/examples/JsonServer/JsonServer.ino.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/ArduinoJson/examples/JsonServer/JsonServer.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/examples/JsonServer/JsonServer.ino
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"D:\Working\IOT\IOTFirmware\Greentura_Proj\IOTSmartToolV5\jsonData" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '



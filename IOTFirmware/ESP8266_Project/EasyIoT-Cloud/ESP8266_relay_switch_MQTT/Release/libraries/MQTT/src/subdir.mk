################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/eclipseArduino/arduinoPlugin/libraries/MQTT/1.10.0/src/MQTTClient.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/MQTT/1.10.0/src/Network.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/MQTT/1.10.0/src/Timer.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/MQTT/1.10.0/src/YunMQTTClient.cpp 

LINK_OBJ += \
./libraries/MQTT/src/MQTTClient.cpp.o \
./libraries/MQTT/src/Network.cpp.o \
./libraries/MQTT/src/Timer.cpp.o \
./libraries/MQTT/src/YunMQTTClient.cpp.o 

CPP_DEPS += \
./libraries/MQTT/src/MQTTClient.cpp.d \
./libraries/MQTT/src/Network.cpp.d \
./libraries/MQTT/src/Timer.cpp.d \
./libraries/MQTT/src/YunMQTTClient.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/MQTT/src/MQTTClient.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/MQTT/1.10.0/src/MQTTClient.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\libraries\MQTT\1.10.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\MQTT\1.10.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\EasyIoT-Cloud\libraries" -I"C:\eclipseArduino\EasyIoT-Cloud\libraries\esp-mqtt" -I"C:\eclipseArduino\EasyIoT-Cloud\libraries\esp-mqtt\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\OneWire\2.3.2" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/MQTT/src/Network.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/MQTT/1.10.0/src/Network.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\libraries\MQTT\1.10.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\MQTT\1.10.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\EasyIoT-Cloud\libraries" -I"C:\eclipseArduino\EasyIoT-Cloud\libraries\esp-mqtt" -I"C:\eclipseArduino\EasyIoT-Cloud\libraries\esp-mqtt\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\OneWire\2.3.2" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/MQTT/src/Timer.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/MQTT/1.10.0/src/Timer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\libraries\MQTT\1.10.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\MQTT\1.10.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\EasyIoT-Cloud\libraries" -I"C:\eclipseArduino\EasyIoT-Cloud\libraries\esp-mqtt" -I"C:\eclipseArduino\EasyIoT-Cloud\libraries\esp-mqtt\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\OneWire\2.3.2" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/MQTT/src/YunMQTTClient.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/MQTT/1.10.0/src/YunMQTTClient.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\libraries\MQTT\1.10.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\MQTT\1.10.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\EasyIoT-Cloud\libraries" -I"C:\eclipseArduino\EasyIoT-Cloud\libraries\esp-mqtt" -I"C:\eclipseArduino\EasyIoT-Cloud\libraries\esp-mqtt\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\OneWire\2.3.2" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '



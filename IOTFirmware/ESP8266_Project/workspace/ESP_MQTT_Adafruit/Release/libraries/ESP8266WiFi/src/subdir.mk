################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/ESP8266WiFi.cpp \
C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/ESP8266WiFiAP.cpp \
C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/ESP8266WiFiGeneric.cpp \
C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/ESP8266WiFiMulti.cpp \
C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/ESP8266WiFiSTA.cpp \
C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/ESP8266WiFiScan.cpp \
C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/WiFiClient.cpp \
C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/WiFiClientSecure.cpp \
C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/WiFiServer.cpp \
C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/WiFiUdp.cpp 

LINK_OBJ += \
./libraries/ESP8266WiFi/src/ESP8266WiFi.cpp.o \
./libraries/ESP8266WiFi/src/ESP8266WiFiAP.cpp.o \
./libraries/ESP8266WiFi/src/ESP8266WiFiGeneric.cpp.o \
./libraries/ESP8266WiFi/src/ESP8266WiFiMulti.cpp.o \
./libraries/ESP8266WiFi/src/ESP8266WiFiSTA.cpp.o \
./libraries/ESP8266WiFi/src/ESP8266WiFiScan.cpp.o \
./libraries/ESP8266WiFi/src/WiFiClient.cpp.o \
./libraries/ESP8266WiFi/src/WiFiClientSecure.cpp.o \
./libraries/ESP8266WiFi/src/WiFiServer.cpp.o \
./libraries/ESP8266WiFi/src/WiFiUdp.cpp.o 

CPP_DEPS += \
./libraries/ESP8266WiFi/src/ESP8266WiFi.cpp.d \
./libraries/ESP8266WiFi/src/ESP8266WiFiAP.cpp.d \
./libraries/ESP8266WiFi/src/ESP8266WiFiGeneric.cpp.d \
./libraries/ESP8266WiFi/src/ESP8266WiFiMulti.cpp.d \
./libraries/ESP8266WiFi/src/ESP8266WiFiSTA.cpp.d \
./libraries/ESP8266WiFi/src/ESP8266WiFiScan.cpp.d \
./libraries/ESP8266WiFi/src/WiFiClient.cpp.d \
./libraries/ESP8266WiFi/src/WiFiClientSecure.cpp.d \
./libraries/ESP8266WiFi/src/WiFiServer.cpp.d \
./libraries/ESP8266WiFi/src/WiFiUdp.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/ESP8266WiFi/src/ESP8266WiFi.cpp.o: C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/ESP8266WiFi.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Adafruit_MQTT_Library\0.12.2" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/ESP8266WiFiAP.cpp.o: C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/ESP8266WiFiAP.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Adafruit_MQTT_Library\0.12.2" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/ESP8266WiFiGeneric.cpp.o: C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/ESP8266WiFiGeneric.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Adafruit_MQTT_Library\0.12.2" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/ESP8266WiFiMulti.cpp.o: C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/ESP8266WiFiMulti.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Adafruit_MQTT_Library\0.12.2" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/ESP8266WiFiSTA.cpp.o: C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/ESP8266WiFiSTA.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Adafruit_MQTT_Library\0.12.2" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/ESP8266WiFiScan.cpp.o: C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/ESP8266WiFiScan.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Adafruit_MQTT_Library\0.12.2" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/WiFiClient.cpp.o: C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/WiFiClient.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Adafruit_MQTT_Library\0.12.2" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/WiFiClientSecure.cpp.o: C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/WiFiClientSecure.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Adafruit_MQTT_Library\0.12.2" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/WiFiServer.cpp.o: C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/WiFiServer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Adafruit_MQTT_Library\0.12.2" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ESP8266WiFi/src/WiFiUdp.cpp.o: C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/libraries/ESP8266WiFi/src/WiFiUdp.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Adafruit_MQTT_Library\0.12.2" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/src/Internals/Comments.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/src/Internals/Encoding.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/src/Internals/IndentedPrint.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/src/Internals/JsonParser.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/src/Internals/List.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/src/Internals/Prettyfier.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/src/Internals/StaticStringBuilder.cpp 

LINK_OBJ += \
./libraries/ArduinoJson/src/Internals/Comments.cpp.o \
./libraries/ArduinoJson/src/Internals/Encoding.cpp.o \
./libraries/ArduinoJson/src/Internals/IndentedPrint.cpp.o \
./libraries/ArduinoJson/src/Internals/JsonParser.cpp.o \
./libraries/ArduinoJson/src/Internals/List.cpp.o \
./libraries/ArduinoJson/src/Internals/Prettyfier.cpp.o \
./libraries/ArduinoJson/src/Internals/StaticStringBuilder.cpp.o 

CPP_DEPS += \
./libraries/ArduinoJson/src/Internals/Comments.cpp.d \
./libraries/ArduinoJson/src/Internals/Encoding.cpp.d \
./libraries/ArduinoJson/src/Internals/IndentedPrint.cpp.d \
./libraries/ArduinoJson/src/Internals/JsonParser.cpp.d \
./libraries/ArduinoJson/src/Internals/List.cpp.d \
./libraries/ArduinoJson/src/Internals/Prettyfier.cpp.d \
./libraries/ArduinoJson/src/Internals/StaticStringBuilder.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/ArduinoJson/src/Internals/Comments.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/src/Internals/Comments.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/Internals/Encoding.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/src/Internals/Encoding.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/Internals/IndentedPrint.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/src/Internals/IndentedPrint.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/Internals/JsonParser.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/src/Internals/JsonParser.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/Internals/List.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/src/Internals/List.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/Internals/Prettyfier.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/src/Internals/Prettyfier.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/src/Internals/StaticStringBuilder.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/src/Internals/StaticStringBuilder.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '



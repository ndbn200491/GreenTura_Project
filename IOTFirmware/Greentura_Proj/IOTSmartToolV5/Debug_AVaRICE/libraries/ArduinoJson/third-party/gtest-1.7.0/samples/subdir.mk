################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample1.cc \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample10_unittest.cc \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample1_unittest.cc \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample2.cc \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample2_unittest.cc \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample3_unittest.cc \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample4.cc \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample4_unittest.cc \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample5_unittest.cc \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample6_unittest.cc \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample7_unittest.cc \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample8_unittest.cc \
C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample9_unittest.cc 

CC_DEPS += \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample1.cc.d \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample10_unittest.cc.d \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample1_unittest.cc.d \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample2.cc.d \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample2_unittest.cc.d \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample3_unittest.cc.d \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample4.cc.d \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample4_unittest.cc.d \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample5_unittest.cc.d \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample6_unittest.cc.d \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample7_unittest.cc.d \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample8_unittest.cc.d \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample9_unittest.cc.d 

LINK_OBJ += \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample1.cc.o \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample10_unittest.cc.o \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample1_unittest.cc.o \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample2.cc.o \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample2_unittest.cc.o \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample3_unittest.cc.o \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample4.cc.o \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample4_unittest.cc.o \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample5_unittest.cc.o \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample6_unittest.cc.o \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample7_unittest.cc.o \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample8_unittest.cc.o \
./libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample9_unittest.cc.o 


# Each subdirectory must supply rules for building sources it contributes
libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample1.cc.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample1.cc
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"D:\Working\IOT\IOTFirmware\Greentura_Proj\IOTSmartToolV5\jsonData" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample10_unittest.cc.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample10_unittest.cc
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"D:\Working\IOT\IOTFirmware\Greentura_Proj\IOTSmartToolV5\jsonData" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample1_unittest.cc.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample1_unittest.cc
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"D:\Working\IOT\IOTFirmware\Greentura_Proj\IOTSmartToolV5\jsonData" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample2.cc.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample2.cc
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"D:\Working\IOT\IOTFirmware\Greentura_Proj\IOTSmartToolV5\jsonData" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample2_unittest.cc.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample2_unittest.cc
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"D:\Working\IOT\IOTFirmware\Greentura_Proj\IOTSmartToolV5\jsonData" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample3_unittest.cc.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample3_unittest.cc
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"D:\Working\IOT\IOTFirmware\Greentura_Proj\IOTSmartToolV5\jsonData" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample4.cc.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample4.cc
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"D:\Working\IOT\IOTFirmware\Greentura_Proj\IOTSmartToolV5\jsonData" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample4_unittest.cc.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample4_unittest.cc
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"D:\Working\IOT\IOTFirmware\Greentura_Proj\IOTSmartToolV5\jsonData" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample5_unittest.cc.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample5_unittest.cc
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"D:\Working\IOT\IOTFirmware\Greentura_Proj\IOTSmartToolV5\jsonData" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample6_unittest.cc.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample6_unittest.cc
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"D:\Working\IOT\IOTFirmware\Greentura_Proj\IOTSmartToolV5\jsonData" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample7_unittest.cc.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample7_unittest.cc
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"D:\Working\IOT\IOTFirmware\Greentura_Proj\IOTSmartToolV5\jsonData" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample8_unittest.cc.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample8_unittest.cc
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"D:\Working\IOT\IOTFirmware\Greentura_Proj\IOTSmartToolV5\jsonData" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '

libraries/ArduinoJson/third-party/gtest-1.7.0/samples/sample9_unittest.cc.o: C:/eclipseArduino/arduinoPlugin/libraries/ArduinoJson/5.5.0/third-party/gtest-1.7.0/samples/sample9_unittest.cc
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-ID:/Working/sloeber/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"D:\Working\IOT\IOTFirmware\Greentura_Proj\IOTSmartToolV5\jsonData" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WebServer\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"D:\Working\sloeber\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\EEPROM" -I"C:\eclipseArduino\arduinoPlugin\libraries\ArduinoJson\5.5.0\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '



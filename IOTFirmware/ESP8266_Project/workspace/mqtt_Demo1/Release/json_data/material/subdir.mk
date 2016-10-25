################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/eclipseArduino/Project/mqttSubscrise/json_data/material/DefaultGLShaders.cpp \
C:/eclipseArduino/Project/mqttSubscrise/json_data/material/DefaultMaterials.cpp 

LINK_OBJ += \
./json_data/material/DefaultGLShaders.cpp.o \
./json_data/material/DefaultMaterials.cpp.o 

CPP_DEPS += \
./json_data/material/DefaultGLShaders.cpp.d \
./json_data/material/DefaultMaterials.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
json_data/material/DefaultGLShaders.cpp.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/material/DefaultGLShaders.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/material/DefaultMaterials.cpp.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/material/DefaultMaterials.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_head.c \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_init_gl.c \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_init_glx.c \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_init_tail.c \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_init_wgl.c \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_str_glx.c \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_str_head.c \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_str_tail.c \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_str_wgl.c \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_utils.c \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glewinfo_gl.c \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glewinfo_glx.c \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glewinfo_head.c \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glewinfo_tail.c \
C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glewinfo_wgl.c 

C_DEPS += \
./json_data/third-party/glew/auto/src/glew_head.c.d \
./json_data/third-party/glew/auto/src/glew_init_gl.c.d \
./json_data/third-party/glew/auto/src/glew_init_glx.c.d \
./json_data/third-party/glew/auto/src/glew_init_tail.c.d \
./json_data/third-party/glew/auto/src/glew_init_wgl.c.d \
./json_data/third-party/glew/auto/src/glew_str_glx.c.d \
./json_data/third-party/glew/auto/src/glew_str_head.c.d \
./json_data/third-party/glew/auto/src/glew_str_tail.c.d \
./json_data/third-party/glew/auto/src/glew_str_wgl.c.d \
./json_data/third-party/glew/auto/src/glew_utils.c.d \
./json_data/third-party/glew/auto/src/glewinfo_gl.c.d \
./json_data/third-party/glew/auto/src/glewinfo_glx.c.d \
./json_data/third-party/glew/auto/src/glewinfo_head.c.d \
./json_data/third-party/glew/auto/src/glewinfo_tail.c.d \
./json_data/third-party/glew/auto/src/glewinfo_wgl.c.d 

LINK_OBJ += \
./json_data/third-party/glew/auto/src/glew_head.c.o \
./json_data/third-party/glew/auto/src/glew_init_gl.c.o \
./json_data/third-party/glew/auto/src/glew_init_glx.c.o \
./json_data/third-party/glew/auto/src/glew_init_tail.c.o \
./json_data/third-party/glew/auto/src/glew_init_wgl.c.o \
./json_data/third-party/glew/auto/src/glew_str_glx.c.o \
./json_data/third-party/glew/auto/src/glew_str_head.c.o \
./json_data/third-party/glew/auto/src/glew_str_tail.c.o \
./json_data/third-party/glew/auto/src/glew_str_wgl.c.o \
./json_data/third-party/glew/auto/src/glew_utils.c.o \
./json_data/third-party/glew/auto/src/glewinfo_gl.c.o \
./json_data/third-party/glew/auto/src/glewinfo_glx.c.o \
./json_data/third-party/glew/auto/src/glewinfo_head.c.o \
./json_data/third-party/glew/auto/src/glewinfo_tail.c.o \
./json_data/third-party/glew/auto/src/glewinfo_wgl.c.o 


# Each subdirectory must supply rules for building sources it contributes
json_data/third-party/glew/auto/src/glew_head.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_head.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/third-party/glew/auto/src/glew_init_gl.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_init_gl.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/third-party/glew/auto/src/glew_init_glx.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_init_glx.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/third-party/glew/auto/src/glew_init_tail.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_init_tail.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/third-party/glew/auto/src/glew_init_wgl.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_init_wgl.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/third-party/glew/auto/src/glew_str_glx.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_str_glx.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/third-party/glew/auto/src/glew_str_head.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_str_head.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/third-party/glew/auto/src/glew_str_tail.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_str_tail.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/third-party/glew/auto/src/glew_str_wgl.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_str_wgl.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/third-party/glew/auto/src/glew_utils.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glew_utils.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/third-party/glew/auto/src/glewinfo_gl.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glewinfo_gl.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/third-party/glew/auto/src/glewinfo_glx.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glewinfo_glx.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/third-party/glew/auto/src/glewinfo_head.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glewinfo_head.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/third-party/glew/auto/src/glewinfo_tail.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glewinfo_tail.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

json_data/third-party/glew/auto/src/glewinfo_wgl.c.o: C:/eclipseArduino/Project/mqttSubscrise/json_data/third-party/glew/auto/src/glewinfo_wgl.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -DF_CPU=80000000L    -DARDUINO=10606 -DARDUINO_ESP8266_ESP12 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\adafruit" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\Project\mqttSubscrise\json_data" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '



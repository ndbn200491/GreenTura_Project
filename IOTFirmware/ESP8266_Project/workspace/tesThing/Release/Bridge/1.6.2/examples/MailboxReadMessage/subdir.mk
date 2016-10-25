################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
INO_SRCS += \
C:/eclipseArduino/arduinoPlugin/libraries/Bridge/1.6.2/examples/MailboxReadMessage/MailboxReadMessage.ino 

INO_DEPS += \
./Bridge/1.6.2/examples/MailboxReadMessage/MailboxReadMessage.ino.d 


# Each subdirectory must supply rules for building sources it contributes
Bridge/1.6.2/examples/MailboxReadMessage/MailboxReadMessage.o: C:/eclipseArduino/arduinoPlugin/libraries/Bridge/1.6.2/examples/MailboxReadMessage/MailboxReadMessage.ino
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/include" "-IC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lwip/include" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L  -DDEBUG_ESP_PORT=Serial -DDEBUG_ESP_CORE -DDEBUG_ESP_SSL -DDEBUG_ESP_WIFI -DDEBUG_ESP_HTTP_CLIENT -DDEBUG_ESP_HTTP_UPDATE -DDEBUG_ESP_HTTP_SERVER -DDEBUG_ESP_UPDATER -DDEBUG_ESP_OTA -DDEBUG_TLS_MEM -DARDUINO=10606 -DARDUINO_ESP8266_ESP01 -DARDUINO_ARCH_ESP8266  -DESP8266   -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\cores\esp8266" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\variants\generic" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\libraries\ThingSpeak\1.1.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\ThingSpeak\1.1.0\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\ESP8266WiFi\src" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet" -I"C:\eclipseArduino\arduinoPlugin\packages\esp8266\hardware\esp8266\2.2.0\libraries\Ethernet\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\WiFi\1.2.6" -I"C:\eclipseArduino\arduinoPlugin\libraries\WiFi\1.2.6\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Bridge" -I"C:\eclipseArduino\arduinoPlugin\libraries\Bridge\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '



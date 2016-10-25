################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/Dhcp.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/Dns.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/Ethernet.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/EthernetClient.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/EthernetServer.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/EthernetUdp.cpp 

LINK_OBJ += \
./libraries/Ethernet/src/Dhcp.cpp.o \
./libraries/Ethernet/src/Dns.cpp.o \
./libraries/Ethernet/src/Ethernet.cpp.o \
./libraries/Ethernet/src/EthernetClient.cpp.o \
./libraries/Ethernet/src/EthernetServer.cpp.o \
./libraries/Ethernet/src/EthernetUdp.cpp.o 

CPP_DEPS += \
./libraries/Ethernet/src/Dhcp.cpp.d \
./libraries/Ethernet/src/Dns.cpp.d \
./libraries/Ethernet/src/Ethernet.cpp.d \
./libraries/Ethernet/src/EthernetClient.cpp.d \
./libraries/Ethernet/src/EthernetServer.cpp.d \
./libraries/Ethernet/src/EthernetUdp.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/Ethernet/src/Dhcp.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/Dhcp.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\mega" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/Ethernet/src/Dns.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/Dns.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\mega" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/Ethernet/src/Ethernet.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/Ethernet.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\mega" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/Ethernet/src/EthernetClient.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/EthernetClient.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\mega" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/Ethernet/src/EthernetServer.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/EthernetServer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\mega" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/Ethernet/src/EthernetUdp.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/EthernetUdp.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\mega" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/utility/socket.cpp \
C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/utility/w5100.cpp 

LINK_OBJ += \
./libraries/Ethernet/src/utility/socket.cpp.o \
./libraries/Ethernet/src/utility/w5100.cpp.o 

CPP_DEPS += \
./libraries/Ethernet/src/utility/socket.cpp.d \
./libraries/Ethernet/src/utility/w5100.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/Ethernet/src/utility/socket.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/utility/socket.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\mega" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

libraries/Ethernet/src/utility/w5100.cpp.o: C:/eclipseArduino/arduinoPlugin/libraries/Ethernet/1.1.1/src/utility/w5100.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipseArduino\arduinoPlugin\tools\arduino\avr-gcc\4.8.1-arduino5/bin/avr-g++" -c -g -Os -std=gnu++11 -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10606 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\cores\arduino" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\variants\mega" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI" -I"C:\eclipseArduino\arduinoPlugin\packages\arduino\hardware\avr\1.6.11\libraries\SPI\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0" -I"C:\eclipseArduino\arduinoPlugin\libraries\PubSubClient\2.6.0\src" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1" -I"C:\eclipseArduino\arduinoPlugin\libraries\Ethernet\1.1.1\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -f

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include libraries/WiFi/src/utility/subdir.mk
-include libraries/WiFi/src/subdir.mk
-include libraries/ThingSpeak/src/subdir.mk
-include libraries/SPI/subdir.mk
-include libraries/Ethernet/src/utility/subdir.mk
-include libraries/Ethernet/src/subdir.mk
-include libraries/ESP8266WiFi/src/subdir.mk
-include core/core/umm_malloc/subdir.mk
-include core/core/spiffs/subdir.mk
-include core/core/libb64/subdir.mk
-include core/core/subdir.mk
-include Bridge/src/subdir.mk
-include Bridge/examples/YunSerialTerminal/subdir.mk
-include Bridge/examples/WiFiStatus/subdir.mk
-include Bridge/examples/TimeCheck/subdir.mk
-include Bridge/examples/TemperatureWebPanel/subdir.mk
-include Bridge/examples/Temboo/UploadToDropbox/subdir.mk
-include Bridge/examples/Temboo/UpdateFacebookStatus/subdir.mk
-include Bridge/examples/Temboo/ToxicFacilitiesSearch/subdir.mk
-include Bridge/examples/Temboo/SendDataToGoogleSpreadsheet/subdir.mk
-include Bridge/examples/Temboo/SendAnSMS/subdir.mk
-include Bridge/examples/Temboo/SendAnEmail/subdir.mk
-include Bridge/examples/Temboo/SendATweet/subdir.mk
-include Bridge/examples/Temboo/ReadATweet/subdir.mk
-include Bridge/examples/Temboo/GetYahooWeatherReport/subdir.mk
-include Bridge/examples/SpacebrewYun/spacebrewString/subdir.mk
-include Bridge/examples/SpacebrewYun/spacebrewRange/subdir.mk
-include Bridge/examples/SpacebrewYun/spacebrewBoolean/subdir.mk
-include Bridge/examples/SpacebrewYun/inputOutput/subdir.mk
-include Bridge/examples/ShellCommands/subdir.mk
-include Bridge/examples/Process/subdir.mk
-include Bridge/examples/MailboxReadMessage/subdir.mk
-include Bridge/examples/HttpClient/subdir.mk
-include Bridge/examples/FileWriteScript/subdir.mk
-include Bridge/examples/Datalogger/subdir.mk
-include Bridge/examples/ConsoleRead/subdir.mk
-include Bridge/examples/ConsolePixel/subdir.mk
-include Bridge/examples/ConsoleAsciiTable/subdir.mk
-include Bridge/examples/Bridge/subdir.mk
-include Bridge/1.6.2/src/subdir.mk
-include Bridge/1.6.2/examples/YunSerialTerminal/subdir.mk
-include Bridge/1.6.2/examples/YunFirstConfig/subdir.mk
-include Bridge/1.6.2/examples/WiFiStatus/subdir.mk
-include Bridge/1.6.2/examples/TimeCheck/subdir.mk
-include Bridge/1.6.2/examples/TemperatureWebPanel/subdir.mk
-include Bridge/1.6.2/examples/SpacebrewYun/spacebrewString/subdir.mk
-include Bridge/1.6.2/examples/SpacebrewYun/spacebrewRange/subdir.mk
-include Bridge/1.6.2/examples/SpacebrewYun/spacebrewBoolean/subdir.mk
-include Bridge/1.6.2/examples/SpacebrewYun/inputOutput/subdir.mk
-include Bridge/1.6.2/examples/ShellCommands/subdir.mk
-include Bridge/1.6.2/examples/RemoteDueBlink/subdir.mk
-include Bridge/1.6.2/examples/Process/subdir.mk
-include Bridge/1.6.2/examples/MailboxReadMessage/subdir.mk
-include Bridge/1.6.2/examples/HttpClientConsole/subdir.mk
-include Bridge/1.6.2/examples/HttpClient/subdir.mk
-include Bridge/1.6.2/examples/FileWriteScript/subdir.mk
-include Bridge/1.6.2/examples/Datalogger/subdir.mk
-include Bridge/1.6.2/examples/ConsoleRead/subdir.mk
-include Bridge/1.6.2/examples/ConsolePixel/subdir.mk
-include Bridge/1.6.2/examples/ConsoleAsciiTable/subdir.mk
-include Bridge/1.6.2/examples/Bridge/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
AR += \
arduino.ar \

ELF += \
tesThing.elf \

EEP += \
tesThing.eep \

FLASH_IMAGE += \
tesThing.bin \


# All Target
all: tesThing

# Tool invocations
tesThing: $(FLASH_IMAGE)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-size" -A "C:/eclipseArduino/workspace/tesThing/Release/tesThing.elf"
	@echo 'Finished building target: $@'
	@echo ' '

arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-ar" cru  "C:/eclipseArduino/workspace/tesThing/Release/arduino.ar"    arduino.ar $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

tesThing.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\xtensa-lx106-elf-gcc\1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-gcc" -g -Os -nostdlib -Wl,--no-check-sections -u call_user_start -Wl,-static "-LC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/lib" "-LC:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/tools/sdk/ld" "-Teagle.flash.4m1m.ld" -Wl,--gc-sections -Wl,-wrap,system_restart_local -Wl,-wrap,register_chipv6_phy  -o "C:/eclipseArduino/workspace/tesThing/Release/tesThing.elf" -Wl,--start-group   $(LINK_OBJ) $(AR)  "C:/eclipseArduino/workspace/tesThing/Release/arduino.ar" -lm -lgcc -lhal -lphy -lpp -lnet80211 -lwpa -lcrypto -lmain -lwps -laxtls -lsmartconfig -lmesh -lwpa2 -llwip -Wl,--end-group  "-LC:/eclipseArduino/workspace/tesThing/Release"
	@echo 'Finished building: $@'
	@echo ' '

tesThing.eep: $(ELF)
	@echo 'Create eeprom image'
	${A.RECIPE.OBJCOPY.EEP.PATTERN}
	@echo 'Finished building: $@'
	@echo ' '

tesThing.bin: $(EEP)
	@echo 'Create Flash image (ihex format)'
	"C:\eclipseArduino\arduinoPlugin\tools\esp8266\esptool\0.4.8/esptool.exe" -eo "C:/eclipseArduino/arduinoPlugin/packages/esp8266/hardware/esp8266/2.2.0/bootloaders/eboot/eboot.elf" -bo "C:/eclipseArduino/workspace/tesThing/Release/tesThing.bin" -bm qio -bf 80 -bz 4M -bs .text -bp 4096 -ec -eo "C:/eclipseArduino/workspace/tesThing/Release/tesThing.elf" -bs .irom0.text -bs .text -bs .data -bs .rodata -bc -ec
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(PDE_DEPS)$(C_DEPS)$(AR)$(EEP)$(FLASH_IMAGE)$(CC_DEPS)$(AR_OBJ)$(C++_DEPS)$(LINK_OBJ)$(CXX_DEPS)$(ASM_DEPS)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(ELF)$(CPP_DEPS) tesThing
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

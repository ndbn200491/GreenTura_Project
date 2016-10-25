#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2016-07-22 09:23:08

#include "Arduino.h"
#include <ESP8266WiFi.h>
#include <EEPROM.h>
#include <ESP8266WebServer.h>
#include "Parse.h"
void ReadVolts() ;
void createObject() ;
void handleConfig();
void handleRoot() ;
void eeprom_write_pressedtime(int val);
void eeprom_read_pressedtime(void);
void eeprom_write_SSID();
void eeprom_read_SSID();
void eeprom_write_Password();
void eeprom_read_Password();
void eeprom_write_mobileID();
void eeprom_read_mobileID();
String mac2Str(String mac);
void pressStore();
void timer_handler() ;
uint32_t my_usToTicks(uint32_t us) ;
void setup() ;
void loop() ;

#include "WiFi_Button_Test.ino"


#endif

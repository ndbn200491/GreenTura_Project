#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2016-10-13 14:59:12

#include "Arduino.h"
#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include "parson.h"
#include <ESP8266WebServer.h>
#include <EEPROM.h>
#include <ArduinoJson.h>
#include <OneWire.h>
#include <ds18b20.h>
void jsonTxMessageUpdate();
void setup() ;
void tempRead(void) ;
void wifiConnect(void);
void setup_wifi() ;
void httpReconnect(void);
void mqttReconnect() ;
void tryToConnect(void);
void callback(char* topic, byte* payload, unsigned int length) ;
void mqttProcess(void);
void httpLocalProcess(void);
void readSerial()  ;
void reInit(void);
void loop() ;

#include "Green_tool_V1.ino"


#endif
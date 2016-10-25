#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2016-08-20 02:54:48

#include "Arduino.h"
#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include "parson.h"
#include <ESP8266WebServer.h>
#include <EEPROM.h>
#include <ArduinoJson.h>
void MqttMessageUpdate();
void setup() ;
void wifiConnect(void);
void setup_wifi() ;
void callback(char* topic, byte* payload, unsigned int length) ;
void reconnect() ;
void readSerial()  ;
void loop() ;


#include "IOTSmartTool.ino"

#endif

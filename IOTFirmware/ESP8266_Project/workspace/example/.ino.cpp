#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2016-06-01 08:28:17

#include "Arduino.h"
#include <ArduinoJson.h>
#include <SPI.h>
#include <Ethernet.h>
void setup() ;
void loop() ;
void initSerial() ;
void initEthernet() ;
bool connect(const char* hostName) ;
bool sendRequest(const char* host, const char* resource) ;
bool skipResponseHeaders() ;
void readReponseContent(char* content, size_t maxSize) ;
bool parseUserData(char* content, struct UserData* userData) ;
void printUserData(const struct UserData* userData) ;
void disconnect() ;
void wait() ;


#include "JsonHttpClient.ino"

#endif

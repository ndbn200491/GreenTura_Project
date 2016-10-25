#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2016-10-17 16:12:58

#include "Arduino.h"
#include "Green_4_serv_v1_0.h"
void jsonTxMessageUpdate();
void setup() ;
float tempRead(void);
void ADC_ReadVal(void);
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


#include "Green_4_serv_v1_0.ino"

#endif

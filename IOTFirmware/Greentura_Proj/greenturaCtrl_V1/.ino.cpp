#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2016-09-07 13:41:24

#include "Arduino.h"
#include <Wire.h>
#include <DS1307.h>
#include <EEPROM.h>
#include "DHT.h"
#include "greenturaCtrl_V1.h"
void setup();
void updateStts(void);
void readRTC(void);
void readSerial1(void);
void readSerial(void);
void writeSerial(void);
void readDHT(void);
void readPPM(void);
void readPH(void);
void readLDR(void);
void writeEEP_R1(void);
void writeEEP_R2(void);
void writeEEP_R3(void);
void readEEP_R1(void);
void readEEP_R2(void);
void readEEP_R3(void);
void r1Manual(void);
void r1Auto(void);
void r2Manual(void);
void r2Auto(void);
void r3Manual(void);
void r3Auto(void);
void ctrRELAY1(void);
void ctrRELAY2(void);
void ctrRELAY3(void);
void updateDoser(void);
void loop();
void doserRun(doserStruct_t* doser, uint32_t timeRun);

#include "greenturaCtrl_V1.ino"


#endif

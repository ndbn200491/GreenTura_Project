

#ifndef GREENTURA_H
#define GREENTURA_H



#if defined(__AVR__)
	#include "Arduino.h"
	#include "hardware/avr/HW_AVR_defines.h"
#elif defined(__PIC32MX__)
	#include "WProgram.h"
	#include "hardware/pic32/HW_PIC32_defines.h"
#elif defined(__arm__)
	#include "Arduino.h"
	#include "hardware/arm/HW_ARM_defines.h"
#endif

#include <DS1307.h>
#include <EEPROM.h>
#include "DHT.h"


#define USART_TX_BUFFER_SIZE  20
#define USART_RX_BUFFER_SIZE  40

#define sensor1 A0
#define DHTPIN 33
#define DHTTYPE DHT22

#define OFF 0
#define ON 1
#define doser1_pin 5
#define doser2_pin 6
#define doser3_pin 7


#define relay1 53
#define relay2 51
#define relay3 49




//#include <stdint.h>
//#include <stdio.h>
//#include <math.h>

//#include <LiquidCrystal_I2C.h>
#define DTH_DEBUG
//#define ON_OFF
#define sensor1 A0

typedef struct{
  uint8_t pin;
  uint32_t lastOn;
  uint8_t doserStatus;
  uint8_t periodTimeRun;
} doserStruct_t;

//gui data len server
typedef union driverDataPackage{
  char bufferDrvRx[USART_TX_BUFFER_SIZE];
  struct{

   uint16_t tempVal;
   uint16_t humdVal;
   uint16_t ecVal;
   uint16_t ppmVal;
   uint16_t PHVal;
   uint16_t ldrVal;
   uint16_t lastUpdateAll;
   uint8_t sysn;
   uint8_t sst;
   uint8_t relay1Stt;
   uint8_t relay2Stt;
   uint8_t relay3Stt;
   uint8_t relay4Stt;
   char    sysTail ;
  };
}driverDataStruct_t;


// thu tu cac trang thai
typedef enum{
  TEMP_CTRL_RUN,
  PPM_CTRL_RUN,
  PH_CTRL_RUN,
  HUMD_CTRL_RUN,
  LDR_CTRL_RUN
}runEnumStruct_t;


// nhan du lieu tu esp8266
typedef union appData{
  char ctrAppData[40];
   struct
      {
    uint16_t  time1Bot1On;
    uint16_t  time1Bot2On;
    uint16_t  time1Bot3On;
    uint16_t  time2Bot1On;
    uint16_t  time2Bot2On;
    uint16_t  time2Bot3On;
    uint16_t  time3Bot1On;
    uint16_t  time3Bot2On;
    uint16_t  time3Bot3On;
    uint16_t  time1Bot1Off;
    uint16_t  time1Bot2Off;
    uint16_t  time1Bot3Off;
    uint16_t  time2Bot1Off;
    uint16_t  time2Bot2Off;
    uint16_t  time2Bot3Off;
    uint16_t  time3Bot1Off;
    uint16_t  time3Bot2Off;
    uint16_t  time3Bot3Off;
    uint8_t ctrlBot1;
    uint8_t ctrlBot2;
    uint8_t ctrlBot3;
    uint8_t ctrlMode;
    uint8_t sysTail;
      };

}appPackagestruct_t;



void readRTC(void);
void readSerial1(void);
void readSerial(void);
void readPPM(void);
void readDHT(void);
void readPH(void);
void readLDR(void);
void updateStts(void);
void updateDoser(void);
void doserRun(doserStruct_t doser, uint32_t timeRun);
void writeSerial(void);
void writeEEP_R1(void);
void writeEEP_R2(void);
void writeEEP_R3(void);

void readEEP_R1(void);
void readEEP_R2(void);
void readEEP_R3(void);

void r1Manual(void);
void r2Manual(void);
void r3Manual(void);
void r1Auto(void);
void r2Auto(void);
void r3Auto(void);

void ctrRELAY1(void);
void ctrRELAY2(void);
void ctrRELAY3(void);


#endif

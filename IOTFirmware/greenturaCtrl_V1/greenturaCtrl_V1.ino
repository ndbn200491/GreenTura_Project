

#include <Wire.h>
#include <DS1307.h>
#include <EEPROM.h>
#include "DHT.h"
#include "greenturaCtrl_V1.h"
#define DEBUG_MANUAL
#define DEBUG_AUTO
#define DEBUG_BOTH
#define CHAR_TAIL_TX 'v'
#define CHAR_TAIL_RX 't'
char bufferTest[20];
char bufferPrint[20];
//#include <LiquidCrystal_I2C.h>
//#define DEBUG_USART_RX






// Debug

//#define DEBUG_CTRL_MODE



//#define relay4 47
//#define DEBUG
//#define DEBUG_SENSOR

uint16_t B1_On[3],B1_Off[3];// relay1
uint16_t B2_On[3],B2_Off[3];// relay2
uint16_t B3_On[3],B3_Off[3];// relay3


float PpmVal = 0;
float PhVal  = 0;
float HumdVal = 0;
float TempVal = 0;
uint16_t LdrVal = 0; 


unsigned long timePPM = 0;
int delaytimePPM = 100;

unsigned long timeDHT = 0;
int delaytimeDHT = 500;

unsigned long timeRTC = 0;
int delaytimeRTC = 1000;

unsigned long timeSerial = 0;
int delaytimeSerial = 2000;

float sensorValue1;
int i = 0;
uint16_t T_min;
uint32_t CntSec;
Time t ;
bool runStatus=false;
uint8_t stt;

DS1307 rtc(SDA, SCL);
DHT dht(DHTPIN, DHTTYPE);
//LiquidCrystal_I2C lcd(0x27, 16, 2);
uint32_t lastCtrlPPM=0;




appPackagestruct_t rxData;
doserStruct_t doser1;
doserStruct_t doser2;
doserStruct_t doser3;
driverDataStruct_t driverData;

void setup(){
  
  Serial.begin(115200);
  Serial1.begin(115200);
  interrupts();
  driverData.sysn = 0xAA;
  
  Wire.begin();
  rtc.begin();
  rtc.halt(false);
  dht.begin();
  //lcd.begin();
  
  timePPM = millis();
  timeDHT = millis();
  timeRTC = millis();
  timeSerial = millis();
  
  pinMode(relay1,OUTPUT);
  digitalWrite(relay1,HIGH);
  pinMode(relay2,OUTPUT);
  digitalWrite(relay2,HIGH);
  pinMode(relay3,OUTPUT);
  digitalWrite(relay3,HIGH);
  //pinMode(relay4,OUTPUT);
  //digitalWrite(relay4,HIGH);
  
  driverData.relay1Stt = 0;
  driverData.relay2Stt = 0;
  driverData.relay3Stt = 0;
  
  //driverData.relay4Stt = 0;
  doser1.pin = doser1_pin;
  pinMode(doser1.pin,OUTPUT);
  digitalWrite(doser1.pin,LOW);
  doser2.pin = doser2_pin;
  pinMode(doser2.pin,OUTPUT);
  digitalWrite(doser2.pin,LOW);
  doser3.pin = doser3_pin;
  pinMode(doser3.pin,OUTPUT);
  digitalWrite(doser3.pin,LOW);
  driverData.lastUpdateAll=0;
  digitalWrite(doser1_pin,LOW);
  digitalWrite(doser2_pin,LOW);
  digitalWrite(doser3_pin,LOW);
  delay(1000);
}





void updateStts(void){
    
  if(HumdVal<= 60){
    driverData.sst = HUMD_CTRL_RUN;
    // to do something...
  }
  else {
    //to do something...
  } 

  if (PhVal<= 7){
    driverData.sst = PH_CTRL_RUN; 
  }
  else{
    // to do something... 
  }

  if(driverData.ppmVal <= 700){
    driverData.sst = PPM_CTRL_RUN;
    //Serial.println("sdffffe");
    // to do something...
  }
  else{
    // to do something...
  }
 
  if(TempVal>= 35){
    driverData.sst = TEMP_CTRL_RUN;
    // to do some thing.. 
  }
  else{
    // to do something...    
  }
}




void readRTC(void){
  //if((unsigned long) (millis()-timeRTC)>= delaytimeRTC) {
     t = rtc.getTime();
    // timeRTC = millis();
   //}
   //delay(1000);
  T_min = t.hour*60 + t.min;
  CntSec = t.hour * 3600 + t.min *60 + t.sec;
}


void readSerial1(void){
 /* while(Serial1.available()){
        rxData.ctrAppData[i] = Serial1.read();
        i++;
        if (i>=40) i = 0;

        /*
        Serial1.readBytesUntil('v', rxData.ctrAppData, USART_RX_BUFFER_SIZE);
        Serial1.print("terminator char:............");
        Serial1.println(rxData.sysTail);


    }

*/
	if(Serial1.available()){
		Serial1.readBytesUntil(255, rxData.ctrAppData, USART_RX_BUFFER_SIZE);
		Serial.println(" Usart Received.........................");
	}

  	i=0;
    B1_On[0]  = rxData.time1Bot1On;
    B1_Off[0] = rxData.time1Bot1Off;
    B1_On[1]  = rxData.time2Bot1On ;
    B1_Off[1] = rxData.time2Bot1Off ;
    B1_On[2] =  rxData.time3Bot1On ;
    B1_Off[2] = rxData.time3Bot1Off ;

    B2_On[0]  = rxData.time1Bot2On;
    B2_Off[0] = rxData.time1Bot2Off;
    B2_On[1]  = rxData.time2Bot2On ;
    B2_Off[1] = rxData.time2Bot2Off ;
    B2_On[2] =  rxData.time3Bot2On ;
    B2_Off[2] = rxData.time3Bot2Off ;

    B3_On[0]  = rxData.time1Bot3On;
    B3_Off[0] = rxData.time1Bot3Off;
    B3_On[1]  = rxData.time2Bot3On ;
    B3_Off[1] = rxData.time2Bot3Off ;
    B3_On[2] =  rxData.time3Bot3On ;
    B3_Off[2] = rxData.time3Bot3Off ;
    Serial.print("Control Mode:......");
    Serial.println(rxData.ctrlMode);
}

void readSerial(void){
	if(Serial.available()){

	Serial.readBytesUntil('v', bufferTest, 20);
	/*for(int j = 0;j <=19; i++){
		bufferPrint[i] = Serial.read();
	}
	rxData.sysTail = (char)Serial.read();
	*/
	Serial.println(bufferTest);
	Serial.print("terminator char:............");
	//Serial.println(rxData.sysTail);
	}
}

void writeSerial(void){ 
 if((unsigned long) (millis()-timeSerial)>= delaytimeSerial){           
  for (int i=0 ; i < USART_TX_BUFFER_SIZE ; i++){
    Serial1.print(driverData.bufferDrvRx[i]);
  }
  Serial1.flush();
  timeSerial = millis();  
 }
}


void readDHT(void){
   if((unsigned long) (millis()-timeDHT)>= delaytimeDHT) {
    //HumdVal = dht.readHumidity();
    //TempVal = dht.readTemperature();
     float tem;
     float hum;
     hum = dht.readHumidity()*100;
     tem = dht.readTemperature()*100;
//     Serial.println(tem);
//     Serial.println(hum);
     
    driverData.humdVal = (uint16_t)hum;
    driverData.tempVal = (uint16_t)tem;
    timeDHT = millis();
   }
}




void readPPM(void){
   //if((unsigned long) (millis()-timePPM)>= delaytimePPM) {
      sensorValue1 = 0.95f*sensorValue1 + 0.05f*(float)analogRead(sensor1);
//      #ifdef DEBUG
//      Serial.print("ppm value");
//      Serial.print(sensorValue1);
//      #endif
      //timePPM = millis();
  // }
     
   if (sensorValue1<330){
   float ECvalue1 = (1330*sensorValue1/297)+(3630/297);
    PpmVal = ECvalue1*0.5;
      driverData.ppmVal = (uint16_t)PpmVal;
      driverData.ecVal = (uint16_t)ECvalue1;
   }
   
   else if ((sensorValue1>=330)&&(sensorValue1<462)){
   float ECvalue1 = (730*sensorValue1/132)-(44220/132);
    PpmVal = ECvalue1*0.5;
    driverData.ppmVal = (uint16_t)PpmVal;
    driverData.ecVal = (uint16_t)ECvalue1;
   }
    
    else if ((sensorValue1>=462)&&(sensorValue1<511)){
   float ECvalue1 = (410*sensorValue1/49)-(80640/49);
    PpmVal = ECvalue1*0.5;
     driverData.ppmVal = (uint16_t)PpmVal;
    driverData.ecVal = (uint16_t)ECvalue1;
    }

    else if ((sensorValue1>=511)&&(sensorValue1 < 572)){
   float ECvalue1 = (420*sensorValue1/61)-(54190/61);
    PpmVal = ECvalue1*0.5;
     driverData.ppmVal = (uint16_t)PpmVal;
    driverData.ecVal = (uint16_t)ECvalue1;
    }
    
    else if ((sensorValue1>=572)&&(sensorValue1<618)){
   float ECvalue1 = (180*sensorValue1/46)+(37340/46);
    PpmVal = ECvalue1*0.5;
     driverData.ppmVal = (uint16_t)PpmVal;
    driverData.ecVal = (uint16_t)ECvalue1;
    }
    
    else if ((sensorValue1>=618)&&(sensorValue1<710)){
   float ECvalue1 = (310*sensorValue1/92)+(105580/92);
    PpmVal = ECvalue1*0.5;
     driverData.ppmVal = (uint16_t)PpmVal;
    driverData.ecVal = (uint16_t)ECvalue1;
    }

    
    else if ((sensorValue1>=710)&&(sensorValue1<784)){
   float ECvalue1 = (500*sensorValue1/74)-(93040/74);
    PpmVal = ECvalue1*0.5;
     driverData.ppmVal = (uint16_t)PpmVal;
    driverData.ecVal = (uint16_t)ECvalue1;
    }
    
   else if ((sensorValue1>=784)&&(sensorValue1<894)){
   float ECvalue1 = (300*sensorValue1/110)+(209200/110);
    PpmVal = ECvalue1*0.5;
     driverData.ppmVal = (uint16_t)PpmVal;
    driverData.ecVal = (uint16_t)ECvalue1;
   }
   
   else if ((sensorValue1>=894)&&(sensorValue1<=930)){
   float ECvalue1 = (640*sensorValue1/36) -(415920/36);
    PpmVal = ECvalue1*0.5;
    driverData.ppmVal = (uint16_t)PpmVal;
    driverData.ecVal = (uint16_t)ECvalue1;
   }
   else {
    // to do something...
   }
}


void readPH(void){
  // to do something...
}


void readLDR(void){
  // to do something...
}


void writeEEP_R1(void){
   for (int i = 0; i < 3; i++){
    EEPROM.write(i * 2 + 1,B1_On[i]);
    EEPROM.write(i * 2 + 2,B1_Off[i]);
  }
}

void writeEEP_R2(void){
  for (int i = 0; i < 3; i++){
    EEPROM.write(i * 2 + 3,B2_On[i]);
    EEPROM.write(i * 2 + 4,B2_Off[i]);
  }
}

void writeEEP_R3(void){
  for (int i = 0; i < 3; i++){
    EEPROM.write(i * 2 + 5,B3_On[i]);
    EEPROM.write(i * 2 + 6,B3_Off[i]);
  }
}



void readEEP_R1(void){
   for (int i = 0; i < 3; i++){
    B1_On[i] = EEPROM.read(i * 2 + 1);
    B1_Off[i] = EEPROM.read(i * 2 + 2);
  }
}

void readEEP_R2(void){
  for (int i = 0; i < 3; i++){
    B2_On[i] = EEPROM.read(i * 2 + 3);
    B2_Off[i] = EEPROM.read(i * 2 + 4);
  }
}

void readEEP_R3(void){
  for (int i = 0; i < 3; i++){
    B3_On[i] = EEPROM.read(i * 2 + 5);
    B3_Off[i] = EEPROM.read(i * 2 + 6);
  }
}


void r1Manual(void){
  if (rxData.ctrlBot1 == 1){
    digitalWrite(relay1,LOW);
    driverData.relay1Stt = 1;
  }
  else {
    digitalWrite(relay1,HIGH);
    driverData.relay1Stt = 0 ;
  }
}

void r1Auto(void){
  
      if(T_min >= B1_On[0] && T_min < B1_Off[0]){
              digitalWrite(relay1,LOW);
              driverData.relay1Stt = 1;
            }
      else if(T_min >= B1_On[1] && T_min < B1_Off[1]){
              digitalWrite(relay1,LOW);
              driverData.relay1Stt = 1;
            }
      else if(T_min >= B1_On[2] && T_min < B1_Off[2]){
              digitalWrite(relay1,LOW);
              driverData.relay1Stt = 1;
            }
      else{
             digitalWrite(relay1,HIGH);
             driverData.relay1Stt = 0; 
      }       
}


void r2Manual(void){
  if (rxData.ctrlBot2 == 1){
    digitalWrite(relay2,LOW);
    driverData.relay2Stt = 1;
  }
  else{
    digitalWrite(relay2,HIGH);
    driverData.relay2Stt = 0;
  }
}

void r2Auto(void){
  if (T_min >= B2_On[0] && T_min < B2_Off[0]){
          digitalWrite(relay2,LOW);
          driverData.relay2Stt = 1;
        }
  else if (T_min >= B2_On[1] && T_min < B2_Off[1]){
          digitalWrite(relay2,LOW);
          driverData.relay2Stt = 1;
        }
  else if (T_min >= B2_On[2] && T_min < B2_Off[2]){
          digitalWrite(relay2,LOW);
          driverData.relay2Stt = 1;
        }            
  else  {
          digitalWrite(relay2,HIGH);
          driverData.relay2Stt = 0 ;
        }
}


void r3Manual(void){
  if (rxData.ctrlBot3 == 1){
    digitalWrite(relay3,LOW);
    driverData.relay3Stt = 1;
  }
  else {
    digitalWrite(relay3,HIGH);
    driverData.relay3Stt = 0;
  }
}

void r3Auto(void){
  
  if(T_min >= B3_On[0] && T_min < B3_Off[0]){
              digitalWrite(relay3,LOW);
              driverData.relay3Stt = 1;
            }
      else if(T_min >= B3_On[1] && T_min < B3_Off[1]){
              digitalWrite(relay3,LOW);
              driverData.relay3Stt = 1;
            }
      else if(T_min >= B3_On[2] && T_min < B3_Off[2]){
              digitalWrite(relay3,LOW);
              driverData.relay3Stt = 1;
            }
      else{
             digitalWrite(relay3,HIGH);
             driverData.relay3Stt = 0; 
      }   
}



void ctrRELAY1(void){
    if (rxData.ctrlMode == 1){
     r1Manual();
#ifdef DEBUG_MANUAL
     Serial.println("Manual control.............................");
#endif
    }
    if (rxData.ctrlMode == 2){
      r1Auto();
#ifdef DEBUG_AUTO
     Serial.println("Manual control.............................");
#endif
    }
    if (rxData.ctrlMode == 3){
       digitalWrite(relay1,HIGH);
       driverData.relay1Stt = 0; 
#ifdef DEBUG_BOTH
     Serial.println("Control BOTH");
#endif
    }
}

void ctrRELAY2(void){
   if (rxData.ctrlMode == 1){
      r2Manual();
    }
    if (rxData.ctrlMode == 2){
      r2Auto();
    }
    if (rxData.ctrlMode == 3){
       digitalWrite(relay2,HIGH);
       driverData.relay2Stt = 0; 
    }        
  }


void ctrRELAY3(void){
    if (rxData.ctrlMode == 1){
      r3Manual();
    }
    if (rxData.ctrlMode == 2){
      r3Auto();
    }
    if (rxData.ctrlMode == 3){
       digitalWrite(relay3,HIGH);
       driverData.relay3Stt = 0; 
    }
}











void updateDoser(void){
  uint32_t Now ; 
  readRTC();
  Now = CntSec;
  if( Now - doser1.lastOn >= doser1.periodTimeRun && doser1.doserStatus == ON ){
    doser1.doserStatus = OFF;
    digitalWrite(doser1.pin,LOW);
  }
  if(Now -  doser2.lastOn >= doser2.periodTimeRun && doser2.doserStatus == ON ){
    doser2.doserStatus = OFF;
    digitalWrite(doser2.pin,LOW);
  }
  if(Now -  doser3.lastOn >= doser3.periodTimeRun && doser3.doserStatus == ON ){
    doser3.doserStatus = OFF;
    digitalWrite(doser3.pin,LOW);  
  }
}





void loop(){

  readRTC();
  readDHT();
  readPPM();
  readSerial1();
  //readSerial();
  //updateStts();
  updateDoser();
  ctrRELAY1();
  ctrRELAY2();
  ctrRELAY3();
  writeSerial();
  //attachInterrupt(0, serialInterrupt, CHANGE);
  //driverData.sysn = 0xAAAA;
  
#ifdef DEBUG_CTRL_MODE
  Serial.print("ctrlMode: ");
  
  Serial.println(rxData.ctrlMode);
  /*Serial.print(" ");
  Serial.print(rtc.getTimeStr());
  Serial.print(" ");
  Serial.print("T_min: ");
  Serial.print(T_min);
  Serial.print(" ");

  Serial.print(" ");
  Serial.print("on1: ");
  Serial.print(B3_On[0]);
  Serial.print(" ");
  Serial.print("off1: ");
  Serial.print(B3_Off[0]);
  Serial.print(" ");
  Serial.print("on2: ");
  Serial.print(B3_On[1]);
  Serial.print(" ");
  Serial.print("off2: ");
  Serial.print(B3_Off[1]);
  Serial.print(" ");
  Serial.print("on3: ");
  Serial.print(B3_On[2]);
  Serial.print(" ");
  Serial.print("off3: ");
  Serial.println(B3_Off[2]);
  */


#endif


#ifdef DEBUG_USART_RX
  Serial.print("time3Bot1On:...");
  Serial.println(rxData.time3Bot1On);
  Serial.print("time3Bot2On:...");
  Serial.println(rxData.time3Bot2On);
  Serial.print("time3Bot3On:...");
  Serial.println(rxData.time3Bot3On);

  Serial.print("time3Bot1Off:...");
  Serial.println(rxData.time3Bot1Off);
  Serial.print("time3Bot2Off:...");
  Serial.println(rxData.time3Bot2Off);
  Serial.print("time3Bot3Off:...");
  Serial.println(rxData.time3Bot3Off);

#endif


  switch (driverData.sst)
  {
    case TEMP_CTRL_RUN :
      break;
    
    case  PPM_CTRL_RUN :
      uint32_t nowCtrlPPM;
      readRTC();
      nowCtrlPPM = CntSec;
//      Serial.println(CntSec);
//      Serial.println(lastCtrlPPM);
      if (nowCtrlPPM - lastCtrlPPM > 300){
         if (driverData.ppmVal < 700){ 
            doserRun(&doser1,2);
            delay(1000);
            doserRun(&doser2,2);
            delay(1000);
            doserRun(&doser3,2);
            lastCtrlPPM = nowCtrlPPM;
            //Serial.println("kkkkkdfghjkl,kjhgfdr fghhuhihjhnjnj....................................");
         }
         else {
          digitalWrite(doser1.pin,LOW);
          digitalWrite(doser2.pin,LOW);
          digitalWrite(doser3.pin,LOW);
          // .........
         }
      }
      break;
    
    case PH_CTRL_RUN :
      break;
      
    case HUMD_CTRL_RUN :
      break;
      
    case LDR_CTRL_RUN :
       break;               
   }
}


void doserRun(doserStruct_t* doser, uint32_t timeRun){
  readRTC();
  doser->lastOn = CntSec;
  doser->periodTimeRun = timeRun;

  digitalWrite(doser->pin,HIGH);
  doser->doserStatus = ON;
}


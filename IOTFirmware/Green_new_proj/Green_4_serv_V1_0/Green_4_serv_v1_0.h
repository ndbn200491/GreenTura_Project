
#ifndef __GREEN_4_SERV_V1_0__
#define __GREEN_4_SERV_V1_0__
#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include "parson.h"
#include <ESP8266WebServer.h>
#include <EEPROM.h>
#include <ArduinoJson.h>
#include "WiFisetup.h"
#include "ds18b20.h"
#include <OneWire.h>
//#define DEBUG_SYSN
//#define USART_CHECK
//#define DEBUG
//#define DEBUG_USART
//#define DEBUG_USART_MQTT_REC
//#define MQTT_DEBUG_CONNECTION
#define DEBUG_MQTT_PRO
//#define MQTT_RX
#define SERIAL_RX_BUFEER_SIZE 22
#define SERIAL_TX_BUFFER_SIZE 41
#define CHAR_TAIL_TX 255
#define CHAR_TAIL_RX 255
//#define DEBUG_USART_Tx

// Update these with values suitable for your network.



//const char* mqtt_server = "broker.mqtt-dashboard.com";
const char* mqtt_server = "iot.eclipse.org";
const char* userName = "";
const char* userPassword = "";
//const char* mqtt_server = "broker.mqtt-dashboard.com";
const char* ssid_ap = "greenturaHost";
const char* pass_ap = "12345678" ;
const char* pubTopic = "ndbn";
//const char* mqtt_server = "broker.hivemq.com";

//ESP8266WebServer server(80);
WiFiClient espClient;
WiFiServer espServer(80);
PubSubClient client(espClient);
//String content;
int seriCnt = 0 ;
long lastMsg = 0;
long lastWiFiConnect ;
char msg[50];
String httpMsgPayload ;
char jsonTxMsg[300];
int value = 0;
int is = 0  ;
float out ; // for the adc read value
float tempLast; // Temperature
StaticJsonBuffer<300> jsonBuffer;
 JsonObject& root = jsonBuffer.createObject();
float deltaTemp;
//JsonArray& data = root.createNestedArray("data");

typedef union {
  char bufferDrvRx[SERIAL_RX_BUFEER_SIZE-1];
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
	  uint8_t wLevel ;

  };
}driverDataStruct_t;

typedef union {
	char ctrAppData[SERIAL_TX_BUFFER_SIZE];
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
		uint8_t ctrlBot2 ;
		uint8_t ctrlBot3;
		uint8_t ctrlMode; //
		uint8_t sysTail;
	    };

}appPackagestruct_t;

extern appPackagestruct_t appDataRx;
//sensorDataStruct_t sensorData;
extern driverDataStruct_t driverDataRx;


#endif

// end


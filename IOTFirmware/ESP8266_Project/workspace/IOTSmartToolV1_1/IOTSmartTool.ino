/*
 Basic ESP8266 MQTT example
Bnag Nguyen

 This sketch demonstrates the capabilities of the pubsub library in combination
 with the ESP8266 board/library.

 It connects to an MQTT server then:
  - publishes "hello world" to the topic "outTopic" every two seconds
  - subscribes to the topic "inTopic", printing out any messages
    it receives. NB - it assumes the received payloads are strings not binary
  - If the first character of the topic "inTopic" is an 1, switch ON the ESP Led,
    else switch it off

 It will reconnect to the server if the connection is lost using a blocking
 reconnect function. See the 'mqtt_reconnect_nonblocking' example for how to
 achieve the same result without blocking the main loop.

 To install the ESP8266 board, (using Arduino 1.6.4+):
  - Add the following 3rd party board manager under "File -> Preferences -> Additional Boards Manager URLs":
       http://arduino.esp8266.com/stable/package_esp8266com_index.json
  - Open the "Tools -> Board -> Board Manager" and click install for the ESP8266"
  - Select your ESP8266 in "Tools -> Board"

*/

#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include "parson.h"
#include <ESP8266WebServer.h>
#include <EEPROM.h>
#include <ArduinoJson.h>



// Update these with values suitable for your network.

const char* ssid = "AP_cisco";
const char* password = "Chantroiviet@201";
const char* mqtt_server = "broker.mqtt-dashboard.com";
const char* ssid_ap = "greenturaHost";
const char* pass_ap = "12345678" ;
//const char* mqtt_server = "broker.hivemq.com";
int cntStatus= 0;
ESP8266WebServer server(80);
WiFiClient espClient;
WiFiServer espServer(80);
PubSubClient client(espClient);
String content;

long lastMsg = 0;
char msg[50];
String httpMsgPayload ;
char MqttMes[300];
int value = 0;
int is = 0  ;


StaticJsonBuffer<300> jsonBuffer;


 //
 // Step 2: Build object tree in memory
 //
 JsonObject& root = jsonBuffer.createObject();
//JsonArray& data = root.createNestedArray("data");

 typedef union ctrDataPackage{
	char dataSen[25];
	 struct
	    {
		float humi;
		float temp;
		float ph;
		float curr;
		float vol ;
		uint16_t timeCalib;
		uint8_t ctrlBot1Satus ;
		uint8_t ctrlBot2Satus ;
		uint8_t ctrlBot3Satus ;
	    };
}sensorDataStruct_t;



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
		uint8_t ctrlBot2 ;
		uint8_t ctrlBot3;
		uint8_t ctrlMode; //
	    };

}appPackagestruct_t;




appPackagestruct_t appDataRx;
sensorDataStruct_t sensorData;

void MqttMessageUpdate(){
	String msg;
	root["humi"] = 75.0; //(%)
	root["temp"] = 30.5; // (C Degree
	root["PH+-"] =   is;//  (+/-)
	root["ctrBoardCmd"]= 15;
	root.printTo(MqttMes, 200);
	root.end();
	is++;

	//root.operator [](MqttMes);

}


void setup() {
  pinMode(BUILTIN_LED, OUTPUT);     // Initialize the BUILTIN_LED pin as an output
  Serial.begin(115200);
  setup_wifi();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
  //dataTransfer.ctrData[2] = 5;
  //dataTransfer.ctrData[0] = 4;
  //dataTransfer.ctrData[1] = 3;
  root["sensor"] = "Humidity";
  root["time"] = 14378434;
  //data.add(48.756080, 6);  // 6 is the number of decimals to print
 // data.add(2.302038, 6);   // if not specified, 2 digits are printed
 // root.printTo(Serial);
}


void wifiConnect(void){
	WiFi.begin(ssid, password);
	for(int i = 0; i <=10; i++ ){
		if(WiFi.status() != WL_CONNECTED){
			delay(500);
			cntStatus = 0;
		 Serial.print(".");
		}else{
			cntStatus = 1;
			Serial.println("");
			  Serial.println("WiFi connected");
			  Serial.println("IP address: ");
			  Serial.println(WiFi.localIP());

		}
	}
}
void setup_wifi() {

  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  WiFi.softAP(ssid_ap, pass_ap);
  espClient = espServer.available();
  wifiConnect();
  if(cntStatus == 0){
	  espServer.begin();
	  delay(500);
	  while(!espServer.available())
	  espClient = espServer.available();
	  delay(10);
	  espClient.println("HTTP/1.1 200 OK");
	  espClient.println("Content-Type: text/html");
	  espClient.println(""); //  do not forget ths one
	  espClient.println("<!DOCTYPE HTML>");
  	  }
 }


  /*WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
  */
  //server.begin();



void callback(char* topic, byte* payload, unsigned int length) {
  //Serial.print("Message arrived [");
  //Serial.print(topic);
  //Serial.print("] ");
  /*for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
  }*/
   char* jsonRx = (char*)payload;
 // Serial.println(jsonRx);

// Serial.println("********************************************");
  // char json[] = "{\"sensor\":\"gps\",\"time\":1351824120,\"data\":[48.756080,2.302038]}";
  StaticJsonBuffer<300> jsonRxBuffer;
  JsonObject& rootRx = jsonRxBuffer.parseObject(jsonRx);
 // Serial.println(jsonRx);
  //Serial.println((const char*)rootRx["time1Bot1"]);

 /* Serial.println((const char*)root.get("time1Bot1"));
  Serial.println((const char*)root.get("time1Bot1"));
  Serial.println((const char*)root.get("time1Bot1"));
  Serial.println((const char*)root.get("time1Bot1"));*/

  appDataRx.time1Bot1On = rootRx["time1Bot1On"];
  appDataRx.time1Bot2On = rootRx["time1Bot2On"];
  appDataRx.time1Bot3On = rootRx["time1Bot3On"];
  appDataRx.time2Bot1On = rootRx["time2Bot1On"];
  appDataRx.time2Bot2On = rootRx["time2Bot2On"];
  appDataRx.time2Bot3On = rootRx["time2Bot3On"];
  appDataRx.time3Bot1On = rootRx["time3Bot1On"];
  appDataRx.time3Bot2On = rootRx["time3Bot2On"];
  appDataRx.time3Bot3On = rootRx["time3Bot3On"];

  appDataRx.time1Bot1Off = rootRx["time1Bot1Off"];
  appDataRx.time1Bot2Off = rootRx["time1Bot2Off"];
  appDataRx.time1Bot3Off = rootRx["time1Bot3Off"];
  appDataRx.time2Bot1Off = rootRx["time2Bot1Off"];
  appDataRx.time2Bot2Off = rootRx["time2Bot2Off"];
  appDataRx.time2Bot3Off = rootRx["time2Bot3Off"];
  appDataRx.time3Bot1Off = rootRx["time3Bot1Off"];
  appDataRx.time3Bot2Off = rootRx["time3Bot2Off"];
  appDataRx.time3Bot3Off = rootRx["time3Bot3Off"];

  appDataRx.ctrlBot1  = rootRx["ctrlBot1"];
  appDataRx.ctrlBot2  = rootRx["ctrlBot2"];
  appDataRx.ctrlBot3  = rootRx["ctrlBot3"];
  appDataRx.ctrlMode  = rootRx["ctrlMode"];

 uint16_t bien = (uint16_t)appDataRx.ctrAppData[0]+((uint16_t)appDataRx.ctrAppData[1]<<8);

//Serial.println(appDataRx.ctrlBot1);
//Serial.println(appDataRx.ctrlBot2);
//Serial.println( appDataRx.ctrlBot3);
 //Serial.println((const char*)appDataRx.ctrAppData);
// Serial.print(appDataRx.ctrAppData);
// Serial.print((const char*)appDataRx.ctrAppData);
  //Serial.println(appDataRx.time1Bot1);
 for(int i = 0; i <40; i++){

  Serial.print(appDataRx.ctrAppData[i]);
 }


 // Serial.println(bien);
  /*Serial.println( appDataRx.time1Bot1);
  Serial.println( appDataRx.time1Bot1);
  Serial.println( appDataRx.time1Bot1);
  Serial.println( appDataRx.time1Bot1);*/

 // Serial.println(appDataRx.time1Bot1);
  /*Serial.println(appDataRx.ctrAppData[0]); ///send to processor board
  Serial.println(appDataRx.ctrAppData[1]);
  Serial.println(appDataRx.ctrAppData[2]);
  Serial.println(appDataRx.ctrAppData[3]);*/


  // Switch on the LED if an 1 was received as first character
  if ((char)payload[0] == '1') {
   // digitalWrite(BUILTIN_LED, LOW);   // Turn the LED on (Note that LOW is the voltage level
    // but actually the LED is on; this is because

    // it is acive low on the ESP-01)
  } else {
   // digitalWrite(BUILTIN_LED, HIGH);  // Turn the LED off by making the voltage HIGH
  }

}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
   // Serial.print("Attempting MQTT connection...");
    // Attempt to connect
    if (client.connect("ESPClient")) {
     // Serial.println("connected");
      // Once connected, publish an announcement...
     // client.publish("outTopic", "hello world");
      // ... and resubscribe
      client.subscribe("d1");
    } else {
     // Serial.print("failed, rc=");
     // Serial.print(client.state());
      //Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}
//


void readSerial() // baud = 115200
{
	static int i = 0 ;
	while(Serial.available()){
		sensorData.dataSen[i] = Serial.read();

		i++;
		if(i >= 25){
			i = 0 ;
		}
	}

}

void loop() {
  MqttMessageUpdate();
  if(cntStatus == 1){ // Mqtt
	 readSerial();
	  if (!client.connected()) {
		  reconnect();
	  }
	  client.loop();
	  long now = millis();
	  if (now - lastMsg > 3000) {
		lastMsg = now;
		++value;
		// snprintf (msg, 75, "Bang Nguyen #%ld", value);
		client.publish("greenturaClient", MqttMes);
	  }
}
	else{ // http local server open
		delay(500);

		espClient = espServer.available();
	if (!espClient) {
	    return;
	  }


 // Wait until the client sends some data

	//Serial.println("new client");
	while(!espClient.available()){
		for(int i = 0; i< 10; i++){
		delay(10);
		}
	}
	 /*espClient.println("HTTP/1.1 200 OK");
	 espClient.println("Content-Type: text/html");
	 espClient.println(""); //  do not forget ths one
	 espClient.println(MqttMes);*/

	//espServer.send(200, "application/json", "{\"IP\":\"" + MqttMes + "\"}");
	 // Read the first line of the request
	 String request = espClient.readStringUntil('\r');
	 //Serial.println(request);
	 String request1 = espClient.readStringUntil('\r');
	 //Serial.println(request1);
	 String request2 = espClient.readStringUntil('\r');
	 //Serial.println(request2);
	 String request3 = espClient.readStringUntil('\r');
	// Serial.println(request3);
	 String request4 = espClient.readStringUntil('\r');
	// Serial.println(request4);
	 String request5 = espClient.readStringUntil('\r');
	 //Serial.println(request5);

	 String request6 = espClient.readStringUntil('\r');
	 //Serial.println(request6);
	 String request7 = espClient.readStringUntil('\r');
	 //Serial.println(request7);
	 httpMsgPayload = espClient.readStringUntil('\r');
	 Serial.println(httpMsgPayload);
	// String request9 = espClient.readStringUntil('\r');
	 //Serial.println(request9);
	 char* jsonRx = (char*)httpMsgPayload.c_str();
	 Serial.print((const char* )jsonRx);
	 StaticJsonBuffer<500> jsonRxBufferHttp;
	 JsonObject& rootRxHttp = jsonRxBufferHttp.parseObject(jsonRx);

	 appDataRx.time1Bot1On = rootRxHttp["time1Bot1On"];
	 appDataRx.time1Bot2On = rootRxHttp["time1Bot2On"];
	 appDataRx.time1Bot3On = rootRxHttp["time1Bot3On"];
	 appDataRx.time2Bot1On = rootRxHttp["time2Bot1On"];
	 appDataRx.time2Bot2On = rootRxHttp["time2Bot2On"];
	 appDataRx.time2Bot3On = rootRxHttp["time2Bot3On"];
	 appDataRx.time3Bot1On = rootRxHttp["time3Bot1On"];
	 appDataRx.time3Bot2On = rootRxHttp["time3Bot2On"];
	 appDataRx.time3Bot3On = rootRxHttp["time3Bot3On"];
	 appDataRx.time1Bot1Off = rootRxHttp["time1Bot1Off"];
	 appDataRx.time1Bot2Off = rootRxHttp["time1Bot2Off"];
	 appDataRx.time1Bot3Off = rootRxHttp["time1Bot3Off"];
	 appDataRx.time2Bot1Off = rootRxHttp["time2Bot1Off"];
	 appDataRx.time2Bot2Off = rootRxHttp["time2Bot2Off"];
	 appDataRx.time2Bot3Off = rootRxHttp["time2Bot3Off"];
	 appDataRx.time3Bot1Off = rootRxHttp["time3Bot1Off"];
	 appDataRx.time3Bot2Off = rootRxHttp["time3Bot2Off"];
	 appDataRx.time3Bot3Off = rootRxHttp["time3Bot3Off"];
	 appDataRx.ctrlBot1  = rootRxHttp["ctrlBot1"];
	 appDataRx.ctrlBot2  = rootRxHttp["ctrlBot2"];
	 appDataRx.ctrlBot3  = rootRxHttp["ctrlBot3"];
	 appDataRx.ctrlMode  = rootRxHttp["ctrlMode"];

	 for(int i = 0; i <40; i++){

	   Serial.print(appDataRx.ctrAppData[i]);
	 }




    //String abc = espClient.readStringUntil('\r\r');
  //  String request = espClient.readStringUntil('\r');
//String request = espClient.readString();
//espClient.
    //Serial.println(request);
	//server.handleClient();


}
}







//https://nodemcu.readthedocs.io/en/dev/en/modules/mqtt/#mqttclientconnect

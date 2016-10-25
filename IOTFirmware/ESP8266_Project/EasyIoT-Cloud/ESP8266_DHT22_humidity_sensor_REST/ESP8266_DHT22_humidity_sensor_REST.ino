/*
 Created by Igor Jarc
 See http://iot-playground.com for details
 Please use community fourum on website do not contact author directly
 
 External libraries:
 DTH - https://github.com/iot-playground/EasyIoT-Cloud/tree/master/libraries/DHT
 
 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License
 version 2 as published by the Free Software Foundation.
 */
#include <ESP8266WiFi.h>
#include "DHT.h"

//AP definitions - update this
#define AP_SSID     "AP_cisco"
#define AP_PASSWORD "Chantroiviet@2014"

// EasyIoT Cloud definitions - change EIOT_CLOUD_TEMP_INSTANCE_PARAM_ID and EIOT_CLOUD_HUM_INSTANCE_PARAM_ID
#define EIOT_CLOUD_TEMP_INSTANCE_PARAM_ID    "espID"
#define EIOT_CLOUD_HUM_INSTANCE_PARAM_ID     "espID"
#define REPORT_INTERVAL 60 // in sec


//#define EIOT_CLOUD_ADDRESS     "cloud.iot-playground.com"
//#define EIOT_CLOUD_PORT        40404

#define EIOT_CLOUD_ADDRESS     "localhost:8888/trainningTest"
#define EIOT_CLOUD_PORT        8888


#define DHT22_PIN 2  // DHT22 pin


float oldTemp;
float oldHum;

DHT dht;


void setup() {
  Serial.begin(115200);
  
  wifiConnect();

  Serial.println();
  Serial.println("Status\tHumidity (%)\tTemperature (C)\t(F)");

  dht.setup(DHT22_PIN); // data pin 2
  
  oldTemp = -1;
  oldHum = -1;
}

void loop() {
  delay(dht.getMinimumSamplingPeriod());
  // check send a value
  float hum = 11.11;//dht.getHumidity();
  float temp = 99.99;// dht.getTemperature();

  Serial.print(dht.getStatusString());
  Serial.print("\t");
  Serial.print(hum, 1);
  Serial.print("\t\t");
  Serial.print(temp, 1);
  Serial.print("\t\t");
  Serial.println(dht.toFahrenheit(temp), 1);
  // Bang check
  sendHumidity(hum);
  sendTeperature(temp);


 /* if (temp != oldTemp)
  {
    sendTeperature(temp);
    oldTemp = temp;
  }

  if (hum != oldHum)
  {
    sendHumidity(hum);
    oldHum = hum;
  }
*/
  int cnt = REPORT_INTERVAL;
  
  while(cnt--)
    delay(1000);
}

void wifiConnect()
{
    Serial.print("Connecting to AP");
    WiFi.begin(AP_SSID, AP_PASSWORD);
    while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.print(".");
  }
  
  Serial.println("");
  Serial.println("WiFi connected");  
}

void sendTeperature(float temp)
{  
   WiFiClient client;
   
   while(!client.connect(EIOT_CLOUD_ADDRESS, EIOT_CLOUD_PORT)) {
    Serial.println("connection failed");
    wifiConnect(); 
  }

  String url = "";//http://localhost:8888/trainningTest/espID?espID=" + String(temp);
  // URL: /RestApi/SetParameter/[instance id]/[parameter id]/[value]
 // url += "/RestApi/SetParameter/"+ String(EIOT_CLOUD_TEMP_INSTANCE_PARAM_ID) + "/"+String(temp); // generate EasIoT cloud update parameter URL
  url += String(EIOT_CLOUD_ADDRESS)+"/espID"+String(temp));
  Serial.print("POST data to URL: ");
  Serial.println(url);
  //client.print(String("POST")+url+"HTTP/1.1/r/n");
 client.print(String("POST ") + url + " HTTP/1.1\r\n" +
               "Host: " + String(EIOT_CLOUD_ADDRESS) + "\r\n" + 
               "Connection: close\r\n" + 
               "Content-Length: 0\r\n" + 
               "\r\n");

  delay(100);
    while(client.available()){
    String line = client.readStringUntil('\r');
    Serial.print(line);
  }
  
  Serial.println();
  Serial.println("Connection closed");
}

void sendHumidity(float hum)
{  
   WiFiClient client;
   
   while(!client.connect(EIOT_CLOUD_ADDRESS, EIOT_CLOUD_PORT)) {
    Serial.println("connection failed");
    wifiConnect(); 
  }

  String url = "";
  // URL: /RestApi/SetParameter/[instance id]/[parameter id]/[value]

  //url += "/RestApi/SetParameter/"+ String(EIOT_CLOUD_HUM_INSTANCE_PARAM_ID) + "/"+String(hum); // generate EasIoT cloud update parameter URL
  url += String(EIOT_CLOUD_ADDRESS) ;
  Serial.print("POST data to URL: ");
  Serial.println(url);
  
 /* client.print(String("POST ") + url + " HTTP/1.1\r\n" +
               "Host: " + String(EIOT_CLOUD_ADDRESS) + "\r\n" + 
               "Connection: close\r\n" + 
               "Content-Length: 0\r\n" + 
               "\r\n");*/
  client.print(String("POST ") + url + " HTTP/1.1\r\n");

  delay(100);
    while(client.available()){
    String line = client.readStringUntil('\r');
    Serial.print(line);
  }
  
  Serial.println();
  Serial.println("Connection closed");
}

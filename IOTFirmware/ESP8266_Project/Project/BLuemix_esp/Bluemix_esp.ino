/*You'll need the information below, get these after adding a device. I'm using the MAC address as the device's ID.
org=[org-id]
type=[device-type]
id=[device-id]
auth-method=token
auth-token=[auth-token]
*/

#include <PubSubClient.h>
#include <ESP8266WiFi.h>

String orgId = "k8t1fl";
String deviceType = "esp8266WiFi";
String deviceId = "espIOTBangNguyen5";
String authToken = "ndbn200491";

const char* ssid = "AP_cisco";
const char* password = "Chantroiviet@2014";

// Replace [event-id] with any event id of your choice.
char* topic = "iot-2/evt/sensorData/fmt/json";
String server = "k8t1fl.messaging.internetofthings.ibmcloud.com";


WiFiClient wifiClient;
PubSubClient client((char*)server.c_str(), 1883, callback, wifiClient);

void callback(char* topic, byte* payload, unsigned int length) {
  // handle message arrived
}
String macToStr(const uint8_t* mac)
{
  String result;
  for (int i = 0; i < 6; ++i) {
    result += String(mac[i], 16);
    if (i < 5)
      result += '-';
  }
  return result;
}

void setup() {
  Serial.begin(115200);
  delay(10);

  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  // Generate client name based on MAC address and last 8 bits of microsecond counter
  String clientName;
//  uint8_t mac[6];
//  WiFi.macAddress(mac);
//  clientName = "
  clientName += "d:";
  clientName += orgId + ":";
  clientName += deviceType + ":";
  clientName += deviceId;

  Serial.print("Connecting to ");
  Serial.print(server);
  Serial.print(" as ");
  Serial.println(clientName);

  if (client.connect((char*) clientName.c_str(), "use-token-auth",(char*) authToken.c_str())) {
    Serial.println("Connected to MQTT broker");
    Serial.print("Topic is: ");
    Serial.println(topic);
    Serial.print(authToken.c_str());
  }
  else {
    Serial.println("MQTT connect failed");
    Serial.println("Will reset and try again...");
    abort();
  }
}

void loop() {
  static int counter = 0;

  // Bluemix requires root level
  String payload = "{\"d\": {\"Humidity\":";
  payload += micros();
  payload += ",\"Temperature\":";
  payload += counter;
  payload += "}}";

  if (client.connected()){
    Serial.print("Sending payload: ");
    Serial.println(payload);


    if (client.publish(topic, (char*) payload.c_str())) {
      Serial.println("Publish ok");
    }
    else {
      Serial.println("Publish failed");
    }
  } else {
    Serial.println("Client not connected. Will reset and try again.");
    abort();
  }
//  client.subscribe("abc");
  ++counter;
  delay(5000);
}

//reference on : https://tuts.codingo.me/connect-esp8266-to-ibm-bluemix
//http://stackoverflow.com/questions/35459449/mqtt-subscribe-with-php-to-ibm-bluemix
//http://www.hivemq.com/blog/mqtt-client-library-encyclopedia-mosquitto-php

//http://www.ibm.com/developerworks/cloud/library/cl-mqtt-bluemix-iot-node-red-app/


//https://docs.internetofthings.ibmcloud.com/devices/api.html

//cloud.iot-playground.com
//https://www.youtube.com/watch?v=2Ii-sJRL7oA

//https://github.com/ibm-messaging

//https://hub.jazz.net/deploy/index.html?repository=https://github.com/ibm-watson-iot/iota-starter-server.git

// http://www.ibm.com/developerworks/library/iot-mobile-phone-iot-device-bluemix-apps-trs/
//https://evothings.com/evothings-does-mqtt-with-bluemix/
//https://github.com/ibm-messaging/iot-starter-for-androidhttps://github.com/markusvankempen/SensorDashboard-mqtt﻿
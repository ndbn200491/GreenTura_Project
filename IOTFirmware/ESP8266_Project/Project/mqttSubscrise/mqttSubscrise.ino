#include <ESP8266WiFi.h>
#include <PubSubClient.h> // https://github.com/knolleary/pubsubclient/releases/tag/v2.3
#include "parson.h"
#include <ArduinoJson.h>

const char* ssid = "AP_cisco";
const char* password = "Chantroiviet@2014";
const char* vall ="light";

#define ORG "k8t1fl"
#define DEVICE_TYPE "esp8266WiFi"
#define DEVICE_ID "espIOTBangNguyen5"
#define TOKEN "ndbn200491"

char server[] = ORG ".messaging.internetofthings.ibmcloud.com";
char topic[] = "iot-2/cmd/test/fmt/String";
char authMethod[] = "use-token-auth";
char token[] = TOKEN;
char clientId[] = "d:" ORG ":" DEVICE_TYPE ":" DEVICE_ID;

WiFiClient wifiClient;
PubSubClient client(server, 1883, callback, wifiClient);
 const JSON_Object  contentSub ;
 //JSON_Value* lightValue ;
 int lightValue ;
 char* subContent ;
 char* json ;
 char* contenVall;
 StaticJsonBuffer<200> jsonBuffer;

 //
 // Step 2: Build object tree in memory
 //
 JsonObject& root = jsonBuffer.createObject();
 root["sensor"] = "gps";
 root["time"] = 1351824120;

 JsonArray& data = root.createNestedArray("data");
 data.add(48.756080, 6);  // 6 is the number of decimals to print
 data.add(2.302038, 6);   // if not specified, 2 digits are printed

 //
 // Step 3: Generate the JSON string
 //
 root.printTo(Serial);


StaticJsonBuffer<200> jsonBuffer;

//char json[] = "{\"sensor\":\"gps\",\"time\":1351824120,\"data\":[48.756080,2.302038]}";
//Serial.println( "Parsing json string" );
//JsonObject& root = jsonBuffer.parseObject( json );

void setup() {
  Serial.begin(115200);
  Serial.println();
  wifiConnect();
  mqttConnect();


}

void loop() {
  if (!client.loop()) {
    mqttConnect();
    Serial.println("Bang Nguyen\n");
  }

//Serial.print(contentSub);
 // Serial.println("Bang Nguyen\n");
}

void wifiConnect() {
  Serial.print("Connecting to "); Serial.print(ssid);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.print("nWiFi connected, IP address: "); Serial.println(WiFi.localIP());
}

void mqttConnect() {
  if (!client.connected()) {
    Serial.print("Reconnecting MQTT client to "); Serial.println(server);
    while (!client.connect(clientId, authMethod, token)) {
      Serial.print(".");
      delay(500);
    }
    initManagedDevice();
    Serial.println();
  }
}

void initManagedDevice() {
  if (client.subscribe(topic)) {
    Serial.println("subscribe to cmd OK");

  } else {
    Serial.println("subscribe to cmd FAILED");
  }
}

void callback(char* topic, byte* payload, unsigned int payloadLength) {

  Serial.print("callback invoked for topic: "); Serial.println(topic);

  for (int i = 0; i < payloadLength; i++) {
   // Serial.print((char)payload[i]);
	    //contenVall += (char)payload[i];
  }
  Serial.println(contenVall);
  StaticJsonBuffer<200> jsonBuffer;

  // contentSub = (const JSON_Object*)payload;

  //lightValue = json_object_get_value((const JSON_Object)payload,vall);
  //Serial.println("value of light:");
  //Serial.print((const char*) lightValue );
  //Serial.print(*contentSub);
  //lightValue = json["light"];
  //char json[]= contenVall;
  //Serial.print(json);
  json = (char*)payload;
  Serial.print(json);
  // char json[] = "{\"sensor\":\"gps\",\"time\":1351824120,\"data\":[48.756080,2.302038]}";
  JsonObject& root = jsonBuffer.parseObject(json);
  Serial.println("Bang Nguyen=>>the value of light:");
 //Serial.println((char*)root["time"]);
  Serial.println((const char*)root["time"]);
  Serial.println((const char*)root["data"][0]);
  Serial.println((const char*)root["data"][1]);
  Serial.println((const char*)root["sensor"]);
}





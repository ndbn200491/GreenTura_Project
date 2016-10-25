//#include <SPI.h>
#include <ESP8266WiFi.h>
#include <OneWire.h>
#include <ds18b20.h>

#include <DHT.h>
//#include <ThingerWifi.h>

#define USERNAME "your_user_name"
#define DEVICE_ID "your_device_id"
#define DEVICE_CREDENTIAL "your_device_credential"

#define SSID "your_wifi_ssid"
#define SSID_PASSWORD "your_wifi_ssid_password"
#define ONE_WIRE_BUS 2  // DS18B20 pin
uint16_t out;
OneWire oneWire(ONE_WIRE_BUS);  // on pin 10
DallasTemperature DS18B20(&oneWire);
float temp;
float ECVal;
float ECValLast;
float tempLast;
 float deltaTemp;
//DHT dht11;

//ThingerWifi thing(USERNAME, DEVICE_ID, DEVICE_CREDENTIAL);

void setup() {
    //pinMode(BUILTIN_LED, OUTPUT);

 //   thing.add_wifi(SSID, SSID_PASSWORD);
	Serial.begin(115200);
    pinMode(A0, INPUT);

    // LDR resource
    //thing["LDR"] >> [](pson & out){

    //};
}

void loop() {

	temp = DS18B20.getTempCByIndex(0);
	deltaTemp += temp - tempLast;
	DS18B20.requestTemperatures();

	Serial.print("Temperature: ");
	Serial.println(temp);
  //thing.handle();

	out = (unsigned int) analogRead(A0);
	out = (unsigned int) analogRead(A0)*0.25 + 0.75*out;
	ECVal = 51.42f*((float)out - 624)/(1 + 0.022f * (deltaTemp));
	Serial.print("Analog out:");
	Serial.println(out);
	delay(500);
	Serial.print("EC final value: ");
	Serial.println(ECVal);
	ECValLast = ECVal;
	tempLast = temp;
}

// DS18S20 Temperature chip i/o





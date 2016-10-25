#include <ESP8266WiFi.h>

const char *ssid =      "AP_cisco";
const char *pass =      "Chantroiviet@2014";

// Update these with values suitable for your network.
IPAddress ip(192,168,0,128);  //Node static IP
IPAddress gateway(192,168,0,1);
IPAddress subnet(255,255,255,0);

void setup()
{
	Serial.begin(115200);
  WiFi.begin(ssid, pass);
  WiFi.config(ip, gateway, subnet);

  //Wifi connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("WiFi connected, using IP address: ");
  Serial.println(WiFi.localIP());

}

void loop()
{
}

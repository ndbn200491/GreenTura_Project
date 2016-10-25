#include <ESP8266WiFi.h>
#include <EEPROM.h>
#include <ESP8266WebServer.h>

#include "Parse.h"

#define TEST
//#define CONFIG  0
//#define NORMAL  1

#define START       0
#define CONFIG      1
#define RUN         2
#define SEND_DATA   3

#define BAT_MAX_LEVEL   3.3

#define TIME_PUSH_CHANGE_MODE_SEC   10  //10 seconds
#define TIME_OUT_CONFIG_MIN         1   // 1 mins
#define TIME_IDLE_BEFORE_SLEEP_SEC  15  // 15 seconds

unsigned char state = START;
byte mac[6];
String ssid = "TONY_NGUYEN_2.4G";
String password = "thienhaiblue";
char* objectId = new char[10];


const char *ssid_ap = "config_me";
IPAddress ip(192, 168, 0, 1);
IPAddress gateway(192, 168, 0, 1);
IPAddress subnet(255, 255, 255, 0);
String ssid_conf="ssidname";
String pass_conf="password";
String mobileID_conf="defaultID";
String moduleID="moduleID";
String mobileID="mobileID";
unsigned char mobileID_length = 0;
unsigned char ssid_length=0, pass_length=0 ;

ESP8266WebServer server(80);

const int buttonPin = 4;     // the number of the pushbutton pin
const int sleepPin = 5;
int buttonState = 0;         // variable for reading the pushbutton status
int press_time = 0;
int press_wakeup = 0;
int press_store = 0;
int timeout = 0;
int timeout1 = 0;
char buf[10];
char buf2[4];
String batt_vol;
float voltage;

void ReadVolts()
{
  int sensorValue = analogRead(A0); //read the A0 pin value
  voltage = sensorValue * (BAT_MAX_LEVEL / 1023.00); //convert the value to a true voltage.
  Serial.println(voltage);

}
void createObject() {
  //Serial.println(press_time);
  //dtostrf(voltage,2, 2, buf2);
  //sprintf(buf,"%d", press_time);
  Serial.println("create object");
  ParseObjectCreate create;
  create.setClassName("DeviceOpenLog");
  create.add("deviceID", moduleID.c_str());
  create.add("pressNumber",press_time);
  create.add("batteryLevel",voltage);
  {
      ParseResponse createResponse = create.send();
      delay(500);
      createResponse.close();
  }

}

//Config page
void handleConfig(){
  String msg;
  Serial.println("Config page");
  if (server.hasArg("SSID") && server.hasArg("PASSWORD")){
    Serial.println("network:");
    if ((server.arg("MOBILEID") != "")){//&& (server.arg("SSID") != "")
      ssid_conf = server.arg("SSID");
      Serial.println(ssid_conf);
      pass_conf = server.arg("PASSWORD");
      Serial.println(pass_conf);
      mobileID_conf = server.arg("MOBILEID");
      Serial.println(mobileID_conf);
      String header = "HTTP/1.1 301 OK\r\nLocation: /\r\nCache-Control: no-cache\r\n\r\n";
      server.sendContent(header);
      Serial.println("Complete Config!");
      state = RUN;
      return;
    }
  }
  String content = "<html><body><form action='/config' method='POST'>Please fill SSID, Password and MobileID<br>";
  content +="<TABLE BORDER=\"1\"";
  content +="<TR>";
  content +="<TD>SSID</TD>";
  content +="<TD>";
  content +="<INPUT TYPE=\"TEXT\" NAME=\"SSID\" SIZE=\"20\">";
  content +="</TD>";
  content +="</TR>";
  content +="<TR>";
  content +="<TD>Password</TD>";
  content +="<TD><INPUT TYPE=\"password\" NAME=\"PASSWORD\" SIZE=\"25\"></TD>";
  content +="</TR>";
  content +="<TR>";
  content +="<TD>MobileID</TD>";
  content +="<TD><INPUT TYPE=\"TEXT\" NAME=\"MOBILEID\" SIZE=\"25\"></TD>";
  content +="</TR>";
  content +="</TABLE>";
  content +="<P><INPUT TYPE=\"SUBMIT\" VALUE=\"Submit\" NAME=\"SUBMIT\"></P>";
  content +="</FORM>";
  server.send(200, "text/html", content);
}
void handleRoot() {
  Serial.println("Enter handleRoot");
  String header;
  if(state == START){
    Serial.println("change to config page");
    String header = "HTTP/1.1 301 OK\r\nLocation: /config\r\nCache-Control: no-cache\r\n\r\n";
    server.sendContent(header);
    state = CONFIG;
    return;
  }
 if(state == RUN){
  String content = "<html><body><H2>Complete Config Mode!</H2><br>";
  if (server.hasHeader("User-Agent")){
    content += "the user agent used is : " + server.header("User-Agent") + "<br><br>";
  }
  content += "Configure again <a href=\"/config?DISCONNECT=YES\">click here</a></body></html>";
  server.send(200, "text/html", content);
 }
 else{
    String header = "HTTP/1.1 301 OK\r\nLocation: /config\r\nCache-Control: no-cache\r\n\r\n";
    server.sendContent(header);
    state = CONFIG;
    return;
 }

}

void eeprom_write_pressedtime(int val){
  EEPROM.write(0x01, val/256);
  EEPROM.write(0x02, val%256);
  EEPROM.commit();
}
void eeprom_read_pressedtime(void){
  press_time = (int) EEPROM.read(0x01) * 256 + (int)EEPROM.read(0x02);
  Serial.print("\r\nPress time:");
}

void eeprom_write_SSID(){
  EEPROM.write(0x03, ssid_conf.length());
  for(int i = 0;i<ssid_conf.length();i++){
    EEPROM.write(0x04+i,ssid_conf[i]);
  }
  EEPROM.commit();

}
void eeprom_read_SSID(){
  ssid_length = EEPROM.read(0x03);
  ssid="";
  for(int i = 0;i<ssid_length;i++){
    ssid+=char(EEPROM.read(0x04+i));
  }
}
void eeprom_write_Password(){
  EEPROM.write(0x25, pass_conf.length());
  for(int i = 0;i<pass_conf.length();i++){
    EEPROM.write(0x26+i,pass_conf[i]);
  }
  EEPROM.commit();

}
void eeprom_read_Password(){
  pass_length = EEPROM.read(0x25);
  password="";
  for(int i = 0;i<pass_length;i++){
    password+=char(EEPROM.read(0x26+i));
  }
}

void eeprom_write_mobileID(){
  EEPROM.write(0x37, mobileID_conf.length());
  for(int i = 0;i<mobileID_conf.length();i++){
    EEPROM.write(0x38+i,mobileID_conf[i]);
  }
  EEPROM.commit();

}
void eeprom_read_mobileID(){
  mobileID_length = EEPROM.read(0x37);
  mobileID="";
  for(int i = 0;i<mobileID_length;i++){
    mobileID+=char(EEPROM.read(0x38+i));
  }
}
String mac2Str(String mac){
  String temp="";
  for(int i = 0; i< mac.length();i++){
    if(mac[i]!=':')
      temp+=mac[i];
  }
  return temp;
}

#define TIMER1_TICKS_PER_US (APB_CLK_FREQ / 1000000L)
uint32_t timer_cnt = 0;
uint32_t bntFilterTime = 0;

void pressStore(){
  if(timer_cnt >= (bntFilterTime + 3))
  {
    bntFilterTime = timer_cnt;
    press_store++;
  }
}


void timer_handler()
{
    timer_cnt++;
    if(timer_cnt == 600)
    {
      //pinMode(sleepPin, INPUT);
    }
}

uint32_t my_usToTicks(uint32_t us)
{
    return (TIMER1_TICKS_PER_US / 16 * us);     // converts microseconds to tick
}

void setup() {
  digitalWrite(sleepPin,LOW); //keep power is on
  pinMode(sleepPin, OUTPUT);
  digitalWrite(sleepPin,LOW); //keep power is on
  Serial.begin(115200);
  Serial.println();
  pinMode(buttonPin, INPUT);
  attachInterrupt(digitalPinToInterrupt(buttonPin),pressStore,RISING);
  EEPROM.begin(512);
  timer1_isr_init();
  timer1_attachInterrupt(timer_handler);
  timer1_enable(TIM_DIV16, TIM_EDGE, TIM_LOOP);
  timer1_write(my_usToTicks(100000));
  Serial.print("Battery Votage:");
  ReadVolts();
  Serial.print("\r\nWaiting Press Button ...");
//  while(1){
//  Serial.printf("\r\ntimer:%d\r\n",timer_cnt);
//  delay(3000);
//  Serial.printf("\r\ntimer:%d\r\n",timer_cnt);
//  delay(3000);
//  }
  while(1){
    buttonState = digitalRead(buttonPin);
    if(buttonState == HIGH){
      break;
    }
    press_wakeup++;
    delay(1);
  }

  if(press_wakeup<TIME_PUSH_CHANGE_MODE_SEC*1000){ // 10 seconds
    Serial.print("Normal mode\r\n");
    state = RUN;
    press_store = 0;
  }
  else{
    state = START;
    press_time = 0;
    Serial.print("Config mode\r\n");
    //Create wifi host
    Serial.println("Configuring access point...");
    WiFi.softAP(ssid_ap);
    delay(200);
    IPAddress myIP = WiFi.softAPIP();
    Serial.print("AP IP address: ");
    Serial.println(myIP);
    server.on("/", handleRoot);
    server.on("/config", handleConfig);
    server.begin();
    Serial.println("HTTP server started");
  }
}


void loop() {
  if(state == START || state == CONFIG){
    server.handleClient();
    timeout++;delay(1);
    if(timeout>TIME_OUT_CONFIG_MIN*60*1000){ //3*60*1000= 180 seconds = 3 mins
      timeout = 0;
      state = RUN;
      press_wakeup = 0;
      Serial.println("\r\nConfig timeout!");
    }
    press_store = 0;
  }
  else if(state == RUN){
    Serial.print("press Store:");
    Serial.println(press_store);
    if(press_wakeup>=10000){
      Serial.println("Store infor to eeprom");
      eeprom_write_mobileID();
      eeprom_write_SSID();
      eeprom_write_Password();
    }
    moduleID = WiFi.macAddress();
    moduleID = mac2Str(moduleID);
    Serial.print("ModuleID:");
    Serial.println(moduleID);
    WiFi.mode(WIFI_STA);
    Serial.print("connecting to: ");
    eeprom_read_SSID();
    eeprom_read_Password();
    Serial.println(ssid.c_str());
    Serial.println(password.c_str());
    WiFi.begin(ssid.c_str(), password.c_str());
    while (WiFi.status() != WL_CONNECTED) {
      delay(500);
      Serial.print(".");
      timeout1++;
      if(timeout1>12){
        //gpio 5 change to input
        //break;
        timeout1 = 0;
        pinMode(sleepPin, INPUT);
        break;
      }

    }
    Serial.println("");
    Serial.println("WiFi connected");
    Serial.println(WiFi.localIP());

    //start connect to server
    //Parse.begin("KzdRsSQe7buv3qFqOnTGWY3Mke9KuXdtWFpiJtif", "DrASWRqzmlaoYccR7ENLjMUyfifCtRKbGqRAhClN");
    Parse.begin("LlOTRAEIF2oOa23wFdMOLKRPc0SQQ6AK4OTFPu9o", "Y2UnZTDjmdxdDqhGP60YovNnQCSmsa2gYFC9CDjY");
    delay(500);
    ReadVolts();

    eeprom_read_pressedtime();
    press_time++;
    eeprom_write_pressedtime(press_time);
    Serial.println(press_time);

    eeprom_read_mobileID();
    Serial.print("MobileID:");
    Serial.println(mobileID.c_str());

    Serial.print("ModuleID:");
    Serial.println(moduleID.c_str());

    //send data to server
    createObject();

    Serial.println("\r\nWaiting for next ...");
    timeout = 0;
    state = SEND_DATA;
  }
  else if(state == SEND_DATA){
    timeout++;delay(1);
    if(timeout>TIME_IDLE_BEFORE_SLEEP_SEC*16/3){// 15 second
      Serial.println("\r\nSleep ....");
      Serial.println(TIME_IDLE_BEFORE_SLEEP_SEC);
      //ESP.deepSleep(0);
      pinMode(sleepPin, INPUT);
    }
    else{
    }


    //check button to send data
  /* buttonState = digitalRead(buttonPin);
    if (buttonState == LOW) {
      timeout = 0;
      press_time++;
      eeprom_write_pressedtime(press_time);
      ReadVolts();
      createObject();
      delay(100);
      Serial.println("\r\nWaiting for next ...");
    }
  */
    while(press_store>0){
      timeout = 0;
      press_time++;
      eeprom_write_pressedtime(press_time);
      ReadVolts();
      createObject();
      press_store--;

      Serial.printf("\r\nPress store:%d",press_store);
      delay(100);
      Serial.println("\r\nWaiting for next ...");

    }
    delay(200);
  }
}


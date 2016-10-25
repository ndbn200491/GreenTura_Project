//
// AUTHOR: Rob Tillaart, Terry King, David Loveridge
// VERSION:
// PURPOSE: DHT, RTC and LCD display Arduino
//     URL:
// Three examples brought together to create a temp / humidity and time display on a 16/2 LCD.
// RTC and LCD use i2c port (i2c Gnd 5V and pins a4 sda, a5 scl) DHT-11 BRICK unit uses Gnd 5V and pin 2
// Released to the public domain
//
/*-----( Import needed libraries )-----*/
#include <Wire.h>              // In standard library
#include <DHT.h>              // https://arduino-info.wikispaces.com/TemperatureHumidity
//#include <LiquidCrystal_I2C.h> // https://arduino-info.wikispaces.com/LCD-Blue-I2C
//#include "RTClib.h"            // https://arduino-info.wikispaces.com/DS1307_RealTime_Clock_Brick
/*-----( Declare Constants )-----*/

/*-----( Declare objects )-----*/
//LiquidCrystal_I2C lcd(0x3F, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE);  // Set the LCD I2C address Ox3F (Check yours)
//RTC_DS1307 rtc;    // Create a RealTimeClock object (I set the time in another sketch)
/*-----( Declare Variables )-----*/

#define DHT11_PIN 2 // use pin 2 on UNO to sample data from DHT module
  DHT dht11d;

void setup()
{
    Serial.begin(9600);
    Serial.println("DHT TEST PROGRAM ");
    Serial.print("DHT LIBRARY VERSION: ");
   // Serial.println(DHT_LIB_VERSION);
    Serial.println();
    Serial.println("Humidity % \tTemperature (C) \tTime \tDate");
   // lcd.begin(16,2); // defines it is a 16 character two line display
   // rtc.begin(); // Start the RTC library code
    }

void loop()
{
    // READ DATA
	/*
    DateTime now = rtc.now();
    int chk = DHT.read11(DHT11_PIN);
    Serial.print(DHT.humidity, 1);
    Serial.print(",\t");
    Serial.print("\t");
    Serial.print(DHT.temperature, 1);
    Serial.print(",\t");
    Serial.print("\t");
    Serial.print("\t");
    Serial.print(now.hour(), DEC);
    Serial.print(':');
    Serial.print(now.minute(), DEC);
    Serial.print(':');
    Serial.print(now.second(), DEC);
    Serial.print(' ');
    Serial.print(now.day(), DEC);
    Serial.print('/');
    Serial.print(now.month(), DEC);
    Serial.print('/');
    Serial.println(now.year(), DEC);
    lcd.setCursor(0,0); // start postion of Humidity text on LCD
    lcd.print(DHT.humidity, 0); // 0 creates whole number, 1 two decimal
    lcd.print("% Humidity ");
    lcd.setCursor(0,1);  // start postion of temperature text on LCD
    lcd.print(DHT.temperature, 0);
    lcd.print(" C");
    lcd.setCursor(6,1); // start postion of time text on LCD
    lcd.print(now.hour(), DEC);
    lcd.print(':');
    lcd.print(now.minute(), DEC);
    lcd.print('.');
    lcd.print(now.second(), DEC);
    */



    // You can display in lcd by changing Serial to lcd I have only used time above not date
    //Serial.print(now.year(), DEC);
    //Serial.print('/');
    //Serial.print(now.month(), DEC);
    //Serial.print('/');
    //Serial.print(now.day(), DEC);
    //Serial.print(' ');
    //Serial.print(now.hour(), DEC);
    //Serial.print(':');
    //Serial.print(now.minute(), DEC);
    //Serial.print(':');
    //Serial.print(now.second(), DEC);
    //Serial.println();
    delay(1000); // screen - sample & LCD refresh time 1 second although DHT say min 2 seconds but works ok.
}
//
// END OF FILE
//
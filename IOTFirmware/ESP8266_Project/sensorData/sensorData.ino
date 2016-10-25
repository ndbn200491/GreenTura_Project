#include <ESP8266WiFi.h>
 #include "Parse.h"

const char* ssid = "AP_cisco";
const char* password = "Chantroiviet@2014";
char* last_name;
char* first_name;
char* ssid_ap = "BangNguyen";
int count;

int ledPin = 13; // GPIO13
WiFiServer server(80);
 String hostUrl ;
// String hostUrl;
void setup() {
  Serial.begin(115200);
  delay(10);
  //String hostUrl;
 
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, LOW);
 
  // Connect to WiFi network
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
 
  // Start the server
  server.begin();
  Serial.println("Server started");
 
  // Print the IP address
  Serial.print("Use this URL to connect: ");
  Serial.print("http://");
  Serial.print(WiFi.localIP());
  Serial.println("/");

  WiFi.softAP(ssid_ap);
  //hostUrl = "http://"+WiFi.localIP()+"//";
  Serial.print(hostUrl);
 delay(200);
 Parse.begin("LlOTRAEIF2oOa23wFdMOLKRPc0SQQ6AK4OTFPu9o", "Y2UnZTDjmdxdDqhGP60YovNnQCSmsa2gYFC9CDjY");
 
}
 
void loop() {
	int ndString;
	String str_S;
	 count++;

  // Check if a client has connected
  WiFiClient client = server.available();
  if (!client) {
    return;
  }

 
  // Wait until the client sends some data
  Serial.println("new client");
  while(!client.available()){
    delay(1);
  }
 
  // Read the first line of the request
  String request = client.readStringUntil('\r');
  Serial.println("looping...\n\r");
  //Serial.println(request.c_str());
  //client.flush();
delay(100);
 
  // Match the request
 
  int value = LOW;
  if (request.indexOf("/LED=ON") != -1)  {
    digitalWrite(ledPin, HIGH);
    value = HIGH;
  }
  if (request.indexOf("/LED=OFF") != -1)  {
    digitalWrite(ledPin, LOW);
    value = LOW;
  }
  ndString = request.indexOf("/fname");
 // Serial.println("First name input:");
 // Serial.println(ndString);
// Set ledPin according to the request
//digitalWrite(ledPin, value);

  // Return the response
  /* str_S +="HTTP/1.1 200 OK\n\r";
  str_S +="Content-Type: text/html\n\r";
  str_S +=	"";
  str_S += "<!DOCTYPE HTML>\n\r";
  str_S += "<html>\n\r";
  */

  client.println("HTTP/1.1 200 OK");
  client.println("Content-Type: text/html");
  client.println(""); //  do not forget ths one
  client.println("<!DOCTYPE HTML>");
  client.println("<html>");

 // client.print("Led pin is now: ");
 
  if(value == HIGH) {
    client.print("On");
  } else {
    client.print("Off");
  }
 // count++;
  /*str_S +="<br><br>\n\r";
  str_S += "<a href =\"/LED=ON\"\"><button>LedOn</butt	n></a>\n\r";
  str_S += "<a href=\"/LED=OFF\"\"><button>LedOff</button></a><br/>\n\r";
  str_S += "<a href=\"><button>Send</button></a><br/>\n\r" ;
  str_S += "<br><br>\n\r";
  str_S += "</html>\n\r";
  */
 // client.print(str_S); // send to server

  client.flush();
  Serial.println(str_S); // send to serial

  client.println("<br>");
  client.println("<head><br>");
  //client.println("<a href=\"/sensorData\"");
  client.println("<p>The sensorData: </p>");
  client.println("<form action=\"\" method=\"POST\" >");
  client.println("<label for=\"sensorData\">sensorData</lable><br>");
  client.println("<input for=\"sensorData\"name=\"sensorData\"id=\"sensorData\"value=\""+String(count)+"\"><br>");
  client.println("<lable for=\"Host\">Host url:</lable><br>");
  client.println("<input for=\"hostUrl\" name=\"hostUrl\"id=\"hostUrl\"value=\"");
  client.print(WiFi.localIP());
  client.println("\"><br>");

 // String urlPrint = "<a href=\"?sensorData="+String(count)+"\"</a>";
  //client.println("<a href=\"?sensorData=$String(count)");
  //client.println(String(count));
  //client.println(urlPrint);
 // client.println("<button type=\"button\">Show sensorData</button><br>");
  client.println("</form><br>");
  //client.println("<a href=\"/sensorDataValue\" >");//<input type=\"text\" name=\"sensorData\" id = \"sensorData\" value=");
  /*client.println("<head>");
  client.println("<style>");
  client.println("tabel, th,td {");
  client.println("border: 2px solid black\n");
  client.println("}\n") ;
  client.println("</style>\n");
  client.println("</head>\n");

  client.println("<table><br><tr><br>");
  client.println("<th>sensorData</th><br>");
  client.println("<th>");
*/
  //client.println("<a href=\"/sensorData\"\"> <input type=\"text\" name=\"sensorData\" id = \"sensorData\" value = " );// <input type = "text" name="controlSign" id ="controlSign"><br>
  //client.println("<p>");
  //client.println(String(count));

 // client.println("</th><br></tr></table>");
  //client.println("<br>");
  //client.println("<?php\n");
  // client.println("<echo \"<pre>\"\;\n");
  //client.println("echo $_POST;\n");
  //client.println("<echo \"</pre>\"\;\n");
  // client.println("?>\n");
  //client.println("<?php\n  <echo \"<pre>\";>\n  <echo $_POST;>\n <echo \"</pre>\";>\n  ?>");
  //client.println("<br>");
//  client.println("</p>");
  //client.println("<br><br>");
 // client.println("<input type=\"text\" name=\"sensorData\" id = \"sensorData\"></br>" );// <input type = "text" name="controlSign" id ="controlSign"><br>

  //client.println("<a href=/BangNguyen\"\"><button> Bang_nguyen</button></a>"); check for fun ,
  //client.println("<a href=\"/LED=OFF\"\"><button>LedOn </button></a>");
  //client.println("<a href=\"/LED=OFF\"\"><button>LedOff </button></a><br />");
  //client.println("<a href=\"><button>BangNguyenSend</button></a><br/>");
  //client.println("<br><br>");
  //client.println("<a href=\"/form_input\"\"><form action=\"demo_form.asp\" method=\"get\">First name: <input type=\"text\" name=\"fname\"><br>Last name: <input type=\"text\" name=\"lname\"><br><input type=\"submit\" value=\"Submit\"></form></a>");

  client.println("</html>");

  delay(1);
  Serial.println("Client disonnected");
  Serial.println("");


  server.println("HTTP/1.1 200 OK");
  server.println("Content-Type: text/html");
  server.println(""); //  do not forget ths one
  server.println("<!DOCTYPE HTML>");
  server.println("<html>");
  server.println("<br>");
  server.println("<head><br>");
   //client.println("<a href=\"/sensorData\"");
  server.println("<p>The sensorData: </p>");
  server.println("</head>");
  server.println("</html");
  delay(200);
  //Parse.begin("LlOTRAEIF2oOa23wFdMOLKRPc0SQQ6AK4OTFPu9o", "Y2UnZTDjmdxdDqhGP60YovNnQCSmsa2gYFC9CDjY");


  //Serial.println(last_name);
  //Serial.println(first_name);
 //:sent
}
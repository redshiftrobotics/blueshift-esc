/*
  DroneBot Workshop 2019
  https://dronebotworkshop.com - all wiring guides should be here
*/
 
// Include the Wire library for I2C - this worked fine on the arduino, but vscode is giving it an error
#include <Wire.h>
 
// LED on pin 13
const int ledPin = 13; 
 
void setup() {
  // Join I2C bus as follow with address 8
  Wire.begin(0x8);
  
  // Call receiveEvent when data received                
  Wire.onReceive(receiveEvent);
  
  // Setup pin 13 as output and turn LED off
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, LOW);
}
 
// Function that executes whenever data is received from lead
void receiveEvent(int howMany) {
  while (Wire.available()) { // loop through all but the last
    char c = Wire.read(); // receive byte as a character
    digitalWrite(ledPin, c);
  }
}
void loop() {
  delay(100);
}
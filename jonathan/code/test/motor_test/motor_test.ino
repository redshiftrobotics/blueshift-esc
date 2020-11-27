#include <Servo.h>

Servo myservo;  // create servo object to control a servo
// twelve servo objects can be created on most boards

int pos = 1500;    // variable to store the servo position
int delayTime = 10;
String serial_read = "";

float readVoltage() {
  float voltage = analogRead(A0);       // reads pin A0
  voltage = (5*voltage)/1024; // output voltage from pin
  voltage = voltage/.2423;          // source voltage before divider
  return voltage;
}

float readCurrent() {
  float current = analogRead(A1);       // reads pin A1
  current = (5*current)/1024; // output from pin
  current = current/.0732;          // source voltage before divider
  return current;
}

float remapPosition(int input_pos) {
  float betterPosition = (input_pos - 1500.0)/400.0;
  return betterPosition;
}

void testMotor() {
  Serial.println(";STRT;");
  
  // motor jumps to full speed and slows down to stopped
  Serial.println(";JMP 1 SLD 0;");
  for (pos = 1900; pos >= 1500; pos -= 1) {
    myservo.writeMicroseconds(pos);            
    delay(delayTime);
    Serial.println(String(remapPosition(pos)) + " " + String(readVoltage()) + " " + String(readCurrent()));  
  }

  delay(3000);
  
  // motor speeds up to full speed from stopped
  Serial.println(";JMP 0 SLD 1;");
  for (pos = 1500; pos <= 1900; pos += 1) { // goes from 0 degrees to 180 degrees
    // in steps of 1 degree
    myservo.writeMicroseconds(pos);              // tell servo to go to position in variable 'pos'
    delay(delayTime);                       // waits 15ms for the servo to reach the position
    Serial.println(String(remapPosition(pos)) + " " + String(readVoltage()) + " " + String(readCurrent()));
  }

  delay(3000);

  // motor jumps to full reverse speed and slows to stopped
  Serial.println(";JMP -1 SLD 0;");
  for (pos = 1100; pos <= 1500; pos += 1) { 
    // in steps of 1 degree
    myservo.writeMicroseconds(pos);             
    delay(delayTime);  
    Serial.println(String(remapPosition(pos)) + " " + String(readVoltage()) + " " + String(readCurrent()));                     
  }  

  delay(3000);

  // motor speeds up to full reverse speed from stopped
  Serial.println(";JMP 0 SLD -1;");
  for (pos = 1500; pos >= 1100; pos -= 1) { 
    myservo.writeMicroseconds(pos);              
    delay(delayTime);
    Serial.println(String(remapPosition(pos)) + " " + String(readVoltage()) + " " + String(readCurrent()));                      
  }

  Serial.println(";END;");
}

void setup() {
  Serial.begin(9600);

  myservo.attach(9);  // attaches the servo on pin 9 to the servo object

  myservo.writeMicroseconds(1500); // sets motor to start at stopped
}

void loop() {
  if (Serial.available() > 0) {
    serial_read = Serial.readStringUntil(';');
    if (serial_read == "STRT TST") {
      testMotor();
    }
  }
}

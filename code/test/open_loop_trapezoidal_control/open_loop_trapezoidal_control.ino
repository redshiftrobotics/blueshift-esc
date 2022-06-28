int a_high = 3;
int a_low = 5;

int b_high = 9;
int b_low = 6;


int c_high = 11;
int c_low = 10;

int speed = 125;

int state = 0;

void setup() {
//  TCCR0B = TCCR0B & B11111000 | B00000101; // for PWM frequency of 61.04 Hz
  
  pinMode(a_high, OUTPUT);
  pinMode(a_low, OUTPUT);
  pinMode(b_high, OUTPUT);
  pinMode(b_low, OUTPUT);
  pinMode(c_high, OUTPUT);
  pinMode(c_low, OUTPUT);

  analogWrite(a_high, 0);
  analogWrite(a_low, 0);
  analogWrite(b_high, 0);
  analogWrite(b_low, 0);
  analogWrite(c_high, 0);
  analogWrite(c_low, 0);
}


void loop() {
   switch (state) {
     case 0:
       analogWrite(a_high, 0);
       analogWrite(a_low, speed);
       analogWrite(b_high, 0);
       analogWrite(b_low, 0);
       analogWrite(c_high, speed);
       analogWrite(c_low, 0);
       break;
     case 1:
       analogWrite(a_high, 0);
       analogWrite(a_low, 0);
       analogWrite(b_high, 0);
       analogWrite(b_low, speed);
       analogWrite(c_high, speed);
       analogWrite(c_low, 0);
       break;
     case 2:
       analogWrite(a_high, speed);
       analogWrite(a_low, 0);
       analogWrite(b_high, 0);
       analogWrite(b_low, speed);
       analogWrite(c_high, 0);
       analogWrite(c_low, 0);
       break;
     case 3:
       analogWrite(a_high, speed);
       analogWrite(a_low, 0);
       analogWrite(b_high, 0);
       analogWrite(b_low, 0);
       analogWrite(c_high, 0);
       analogWrite(c_low, speed);
       break;
     case 4:
       analogWrite(a_high, 0);
       analogWrite(a_low, 0);
       analogWrite(b_high, speed);
       analogWrite(b_low, 0);
       analogWrite(c_high, 0);
       analogWrite(c_low, speed);
       break;
     case 5:
       analogWrite(a_high, 0);
       analogWrite(a_low, speed);
       analogWrite(b_high, speed);
       analogWrite(b_low, 0);
       analogWrite(c_high, 0);
       analogWrite(c_low, 0);
       break;
   }
   state++;
   if (state > 5) {
     state = 0; 
   }
   delay(5);
//  analogWrite(a_low, speed);
//  analogWrite(b_high, speed);
//  delayMicroseconds(2); // Approximately 10% duty cycle @ 1KHz
//  digitalWrite(a_low, LOW);
//  digitalWrite(a_high, LOW);
//  digitalWrite(b_low, LOW);
//  digitalWrite(b_high, LOW);
//  digitalWrite(b_low, LOW);
//  digitalWrite(b_high, LOW);
//  delayMicroseconds(5 - 2);
}

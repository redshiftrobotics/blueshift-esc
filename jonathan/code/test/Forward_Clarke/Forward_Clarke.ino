unsigned long start;
double two_over_sqrt_3 = (2/sqrt(3));
double sqrt_3 = sqrt(3);

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  start = micros();
  double a = 7;
  double b = 3;
  double c = -(a + b);
  double t = 2.61799;
  double cos_t = cos(t);
  double sin_t = sin(t);
  
  // Forward Clarke
  double Ia = 0.66666666*a -0.33333333*(b-c);
  double Ib = two_over_sqrt_3*(b-c);
  
  // Forward Park
  double d = Ia*cos_t + Ib*sin_t;
  double q = Ib*cos_t - Ia*sin_t;

  // Reverse Park
  double Va = d*cos_t - q*sin_t;
  double Vb = q*cos_t + d*sin_t;

  // Reverse Clarke
  a = Va;
  b = (-Va + (sqrt_3*Vb))/2;
  c = (-Va - (sqrt_3*Vb))/2;

  Serial.println(micros()-start);
  /*
  Serial.println(Ia);
  Serial.println(Ib);
  Serial.println(d);
  Serial.println(q);
  */
  delay(10);
}

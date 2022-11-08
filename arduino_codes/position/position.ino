#include <util/atomic.h> // For the ATOMIC_BLOCK macro

#define ENCA 2 // BLUE
#define ENCB 21 // GRAY

//motor parameters
int directionPin = 12;
int pwmPin = 3;
int brakePin = 9;

//boolean to switch direction
bool directionState = false;

//encoder parameters
volatile int posi = 0; 
int pos = 0; 

//pid parameters
double pidTerm;
double error;
double last_error;
double angle;
double total_error;
double changeError;

//PID constants
double Kp=8;
double Ki=0.1;
double Kd=3;
int set_point= 45; //angle

void setup() {
  Serial.begin(9600);
  pinMode(directionPin, OUTPUT);
  pinMode(pwmPin, OUTPUT);
  pinMode(brakePin, OUTPUT);
  pinMode(ENCA,INPUT);
  pinMode(ENCB,INPUT);
  attachInterrupt(digitalPinToInterrupt(ENCA),readEncoder,RISING);
}

void loop() {
  ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
    pos = posi;
  }

  Serial.println(pos);

  PID_calculation();

  if(directionState){
    digitalWrite(directionPin, LOW);
  }
  else{
    digitalWrite(directionPin, HIGH);
  }

  if(pidTerm==0){
    digitalWrite(brakePin, HIGH);
  }

  else{
    digitalWrite(brakePin, LOW);
  }

  analogWrite(pwmPin, pidTerm);
}

void readEncoder(){
  int b = digitalRead(ENCB);
  if(b > 0){
    posi++;
  }
  else{
    posi--;
  }
}

void PID_calculation(){

  angle=(pos0.45); //pos to angle
  error=set_point-angle;

  changeError= error-last_error; //Derivative term
  total_error+=error;
  pidTerm=(Kperror)+(Kitotal_error)+(KdchangeError);//total gain
  if(pidTerm<-255){
    pidTerm=255;
    directionState=!directionState;
  }
  else if(pidTerm>255){
    pidTerm=255;
  }
  else{
    pidTerm=0;
  }

  last_error=error;
  }

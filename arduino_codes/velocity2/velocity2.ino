#include <util/atomic.h> // For the ATOMIC_BLOCK macro

#define ENCA 2 // GREEN
#define ENCB 21 // PURPLE
#define ENCA2 4 // GREEN
#define ENCB2 20 // PURPLE

//motor parameters pan
int directionPin = 12;
int pwmPin = 3;
int brakePin = 9;
double volt=0;

//motor parameters tilt
int directionPin2 = 13;
int pwmPin2 = 11;
int brakePin2 = 8;
double volt2=0;

//boolean to switch direction
bool directionState ;
bool directionState2;

//encoder parameters
volatile int posi = 0; 
volatile int posi2= 0;

//pid parameters
double pidTerm;
double error;
double last_error;
double angle;
double prev_angle=0;
double total_error;
double change_error;
double velocity=0;
long prevT = 0;
double control_input=0;

//pid parameters of tilt
double pidTerm2;
double error2;
double last_error2;
double angle2;
double prev_angle2=0;
double total_error2;
double change_error2;
double velocity2=0;
long prevT2 = 0;
double control_input2=0;

//PID constants
double Kp=0.1;
double Ki=0.0;
double Kd=0;

//PID constants of tilt
double Kp2=0.1;
double Ki2=0.0;
double Kd2=0;

//reference pan
int vel_ref=5; //angle per second (alt sınır 2, üst sınır 200)

//reference tilt
int vel_ref2=3; //angle per second 

//direction of velocity
int vel1=1;
int vel2=1;

void setup() {
  Serial.begin(9600);
  pinMode(directionPin, OUTPUT);
  pinMode(pwmPin, OUTPUT);
  pinMode(brakePin, OUTPUT);
  pinMode(ENCA,INPUT);
  pinMode(ENCB,INPUT);
  pinMode(directionPin2, OUTPUT);
  pinMode(pwmPin2, OUTPUT);
  pinMode(brakePin2, OUTPUT);
  pinMode(ENCA2,INPUT);
  pinMode(ENCB2,INPUT);
  attachInterrupt(digitalPinToInterrupt(ENCA),readEncoder,RISING);
  attachInterrupt(digitalPinToInterrupt(ENCA2),readEncoder2,RISING);
}

void loop() {
  //position update
  int pos = 0; 
  int pos2=0;
  ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
    pos = posi;
    pos2 = posi2;
  }

  //position communication with pc
  Serial.println(pos2);


  //pid calculation
  PID_calculation();

  //pid_calculation2
  PID_calculation2();
  
  //setting motors
  set_motor();
  set_motor2();
  
}

void set_motor(){
  directionState=false;
  volt=volt+pidTerm;
  if(volt<0){
    directionState=true;
  }
  control_input=abs(volt);
  if(control_input>255){
    control_input=255;
  }
  if(directionState=true){
    //write a high state to the direction pin (13)
    digitalWrite(directionPin, LOW);
  }
  else{
    digitalWrite(directionPin,HIGH);
  }
  analogWrite(pwmPin,control_input);
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

  angle=(posi*0.36); //pos to angle
  
  // time difference
  long currT = micros();
  float deltaT = ((float) (currT - prevT))/( 1.0e6 );
  prevT = currT;

  //find velocity
  velocity = (angle-prev_angle)/deltaT;
  error=vel_ref-velocity;

  change_error= error-last_error; //Derivative term
  total_error+=error;
  pidTerm=(Kp*error)+(Ki*total_error)+(Kd*change_error);//total gain


  prev_angle=angle;
  last_error=error;
  }

  void set_motor2(){
  directionState2=false;
  volt2=volt2+pidTerm2;
  if(volt2<0){
    directionState2=true;
  }
  control_input2=abs(volt2);
  if(control_input2>255){
    control_input2=255;
  }
  if(directionState2=true){
    //write a high state to the direction pin (13)
    digitalWrite(directionPin2, LOW);
  }
  else{
    digitalWrite(directionPin2,HIGH);
  }
  analogWrite(pwmPin2,control_input2);
}

void readEncoder2(){
  int b2 = digitalRead(ENCB2);
  if(b2 > 0){
    posi2++;
  }
  else{
    posi2--;
  }
}

void PID_calculation2(){

  angle2=(posi2*0.36); //pos to angle
  
  // time difference
  long currT = micros();
  float deltaT = ((float) (currT - prevT))/( 1.0e6 );
  prevT2 = currT;

  //find velocity
  velocity2 = (angle2-prev_angle2)/deltaT;
  error2=vel_ref2-velocity2;

  change_error2= error2-last_error2; //Derivative term
  total_error2+=error2;
  pidTerm2=(Kp2*error2)+(Ki2*total_error2)+(Kd2*change_error2);//total gain


  prev_angle2=angle2;
  last_error2=error2;
  }

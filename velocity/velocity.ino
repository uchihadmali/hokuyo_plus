#include <util/atomic.h> // For the ATOMIC_BLOCK macro

#define ENCA 2 // BLUE
#define ENCB 21 // GRAY

//motor parameters
int directionPin = 12;
int pwmPin = 3;
int brakePin = 9;
double volt=0;

//boolean to switch direction
bool directionState ;

//encoder parameters
volatile int posi = 0; 

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

//PID constants
double Kp=30;
double Ki=0.1;
double Kd=3;

//reference
int vel_ref=10; //angle per second (alt sınır 2, üst sınır 200)

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
  //position update
  int pos = 0; 
  ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
    pos = posi;
  }

  //position communication with pc
  Serial.println(pos);

  //pid calculation
  PID_calculation();
  
  //setting motor
  set_motor();
  
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

  angle=(posi*0.45); //pos to angle
  
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

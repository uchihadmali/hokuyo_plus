#include <util/atomic.h> // For the ATOMIC_BLOCK macro

#define ENCA 2 // BLUE
#define ENCB 21 // GRAY

//motor parameters
int directionPin = 12;
int pwmPin = 3;
int brakePin = 9;

//boolean to switch direction
bool default_direction = true; //
bool direction_state;

//encoder parameters
volatile int posi = 0; 
int pos = 0; 

//pid parameters
double pidTerm;
double error;
double last_error;
double angle;
double total_error;
double change_error;
double control_signal;

float delta_t;
long curr_t;
long prev_t;

//PID constants
double Kp=25;
double Ki=0;
double Kd=2;
int vel_set_point= 10; //angle per second

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

  //setting motor direction pin
  if(direction_state){
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

  analogWrite(pwmPin, control_signal);
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

void readVelocity(){
  int b=digitalRead(ENCB);
  if(b>0){
    velocity_direction=default_direction;
  }
}

void PID_calculation(){

  
  //delta time calculation
  curr_t= micros();
  delta_t= ((float)(curr_t-prev_t))/(1.0e6);
  prev_t= curr_t;
  

  
  angle=(pos*0.36); //position to angle
  error=set_point-angle; //error calculation

  change_error= (error-last_error)/delta_t; //Derivative term
  total_error+=delta_t*error; //integral term
  pidTerm=(Kp*error)+(Ki*total_error)+(Kd*change_error); //control signal calculation

  
  //setting direction
  if(pidTerm<0){
    direction_state=!default_direction;
  }
  else{
    direction_state=default_direction;
  }
  
  control_signal=abs(pidTerm);
  if(control_signal>255){
    control_signal=255;
  }
  if(control_signal<50){
    control_signal=0;
  }
  last_error=error;
  }

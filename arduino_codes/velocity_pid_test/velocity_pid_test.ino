//velocity pid parameter determination code 
#include <Encoder.h>

#define ENCA 2 // GREEN
#define ENCB 21 // PURPLE

Encoder myEnc(ENCA, ENCB);

//motor parameters
int directionPin = 12;
int pwmPin = 3;
int brakePin = 9;
double volt=0;

//boolean to switch direction
bool direction_default = false;
bool directionState;

//encoder parameters
long pos = 0; 

//pid parameters
double pidTerm;
double error;
double last_error;
double angle;
double prev_angle=0;
double error_i=0;
double error_d=0;
double velocity=0;
long prevT = 0;
double control_input=0;

//PID constants
double Kp=2500;
double Ki=1500;
double Kd=50;

//reference
double vel_ref=0.5; //angle per radian (alt sınır 0.035, üst sınır 3.14)
float vel_f=0;
float veln=0;
float vel_fn=0;

void setup() {
  Serial.begin(9600);
  Serial.println("Encoder Reading:");
  pinMode(directionPin, OUTPUT);
  pinMode(pwmPin, OUTPUT);
  pinMode(brakePin, OUTPUT);
}

void loop() {
  //position update
  pos = myEnc.read();

  if(pos*0.0015<-0.5236 && vel_ref<0){
    vel_ref=-vel_ref;
  }

  if(pos*0.0015>0.7854 && vel_ref>0){
    vel_ref=-vel_ref;
  }

  //pid calculation
  PID_calculation();
  
  //setting motor
  set_motor();

  //communication with PC
  Serial.print(vel_f);
  Serial.print(",");
  Serial.println(vel_ref);
  Serial.print(",");
  delay(1);
}

void set_motor(){
  volt=pidTerm;
  if(volt<0){
    directionState=!direction_default;
  }
  else{
    directionState=direction_default;
    }
  control_input=abs(volt);
  if(control_input>255){
    control_input=255;
  }
  if(control_input<30){
    control_input=0;
    }
  //set the direction
  if(directionState){
    digitalWrite(directionPin, HIGH);
  }
  else{
    digitalWrite(directionPin, LOW);
  }
  
  //set speed
  analogWrite(pwmPin,control_input);
}


void PID_calculation(){

  angle=(pos*0.0015); //pos to angle (rad)
  
  // time difference
  long currT = micros();
  float deltaT = ((float) (currT - prevT))/( 1.0e6 );
  prevT = currT;

  //find velocity
  velocity = (angle-prev_angle)/deltaT;
  vel_f=0.910*vel_fn+0.045*velocity+0.045*veln; //15 HZ
  veln=velocity;
  vel_fn=vel_f;
  error=vel_ref-vel_f;
  
  error_d=(error-last_error)/deltaT;                     //Derivative term
  error_i=error_i+error*deltaT;                          //Integral Term
  pidTerm=(Kp*error)+(Ki*error_i)+(Kd*error_d);          //control signal

  prev_angle=angle;
  last_error=error;
  }

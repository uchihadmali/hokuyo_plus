#include <Encoder.h>
#include <Servo.h>

#define ENCA 2 // GREEN
#define ENCB 21 // PURPLE

Encoder myEnc(ENCA, ENCB);
Servo myservo;

//motor parameters
int directionPin = 12;
int pwmPin = 3;
int brakePin = 9;
double volt=0;
long now=1;
long past=-15000;

//servo motor position
int servo_pos=0;
int servo_dir=1;

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
double total_error;
double change_error;
double velocity=0;
long prevT = 0;
double control_input=0;

//PID constants
double Kp=0.05;
double Ki=0.0;
double Kd=0;

//reference
double vel_ref=2; //angle per second (alt sınır 2, üst sınır 200)

void setup() {
  myservo.attach(4);
  Serial.begin(9600);
  Serial.println("Encoder Reading:");
  pinMode(directionPin, OUTPUT);
  pinMode(pwmPin, OUTPUT);
  pinMode(brakePin, OUTPUT);
}

void loop() {

  //time info
  now=micros();
  if(now-past>15000){
    if(servo_pos==180){
      servo_dir=-servo_dir;
      }
    if(servo_pos==0){
      servo_dir=-servo_dir;
      }
  servo_pos=servo_pos+servo_dir;
  past=now;
  }
  myservo.write(servo_pos);

  
  //position update
  long newPos;
  newPos = myEnc.read();
  if (newPos!= pos) {
    Serial.print("time = ");
    Serial.print(now);
    Serial.println();
    pos = newPos;
  }
  
  //position communication with pc
  if (Serial.available()) {
    Serial.read();
    Serial.println("Reset encoders");
    myEnc.write(0);
  }

  if(pos*0.09<-30 && vel_ref<0){
    vel_ref=-vel_ref;
  }

  if(pos*0.09>45 && vel_ref>0){
    vel_ref=-vel_ref;
  }

  //pid calculation
  PID_calculation();
  
  //setting motor
  set_motor();
  
}

void set_motor(){
  volt=volt+pidTerm;
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

  angle=(pos*0.09); //pos to angle
  
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

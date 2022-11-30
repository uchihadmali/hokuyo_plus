
#include <piddenemem.h>


 #include <ros.h>
 #include <std_msgs/Float64.h>


void setup() {
   
ros::NodeHandle  nh;
std_msgs::Float64 enco_msg;
ros::Publisher enco("enco", &enco_msg);

count = 0; //set the counts of the encoder
angle = 0;//set the angles
pwm = 3;// this is the PWM pin for the motor for how much we move it to correct for its error
mode = 0;


 setpoint = 400;//I am setting it to move through 30 degrees
 // PID CODE IS NOT USED FOR THE PURPOSE OF FASTEST MOVEMENT POSSIBLE
Kp = 8;// you can set these constants however you like depending on trial & error
Ki = 1;
Kd = 3;
ctn =0;

last_error = 0;
error = 0;
changeError = 0;
totalError = 0;
pidTerm = 0;
pidTerm_scaled = 0;// if the total gain we get is not in the PWM range we scale it down so that it's not bigger than |255|


  
  Serial.begin(9600);
  pinMode(2, INPUT);//encoder pins
  pinMode(21, INPUT);
  attachInterrupt(0,Achange,CHANGE);//interrupt pins for encoder
  attachInterrupt(2,Bchange,CHANGE); 
  
 //Setup Channel A
  pinMode(12, OUTPUT); //Initiates Motor Channel A pin
  pinMode(9, OUTPUT); //Initiates Brake Channel A pin
 nh.initNode();
  nh.advertise(enco);
   delay(3000);

}
void loop(){
   delay(500);
  enco_msg.data = angle;
   enco.publish( &enco_msg );
  delay(500);
  PIDcalculation();// find PID value
 //  Serial.println(ctn);
   // Serial.println("WHEEL ANGLE:");
     
  //Serial.println( angle );

 
  
  
  if (ctn < 5) {
     delay(100);
   
    
    digitalWrite(12, HIGH);// Forward motion
    digitalWrite(9, LOW);
    analogWrite(3, 220);
   
 
    delay(900);
   
    digitalWrite(9, HIGH); //Eengage the Brake for Channel A
    ctn++;
  } 
   else if (ctn < 7) {
    delay(100);
   // enco_msg.data = angle;
   //enco.publish( &enco_msg );
    digitalWrite(12, HIGH);// Forward motion
    digitalWrite(9, LOW);
    analogWrite(3, 175);
    
     
   delay(950);
     
    digitalWrite(9, HIGH); //Eengage the Brake for Channel A
    ctn++;
  }
  else if (ctn < 9) {
  delay(100);
    //enco_msg.data = angle;
   //enco.publish( &enco_msg );
    digitalWrite(12, HIGH);// Forward motion
    digitalWrite(9, LOW);
    analogWrite(3, 145);
    
   
    delay(1000);
  
     ctn++;
    digitalWrite(9, HIGH); //Eengage the Brake for Channel A
  }
//  else if (ctn < 10) {
//    ctn++;
//    digitalWrite(12, HIGH);// Forward motion
//    digitalWrite(9, LOW);
//    analogWrite(3, 130);
//    delay(1000);
//    digitalWrite(9, HIGH); //Eengage the Brake for Channel A
//  }

  
  else {
//    ctn--;
//    digitalWrite(9, HIGH);//Reverse motion
//    digitalWrite(12, LOW);
//    analogWrite(3, 200);
//    delay(500);
//    digitalWrite(9, LOW); //Eengage the Brake for Channel A
  }
  
  analogWrite(pwm, 200);
  
  
  nh.spinOnce();
  delay(100);
}

void PIDcalculation(){
  angle = ( count / 10.68 );//count to angle conversion
  error = setpoint - angle;
  
  changeError = error - last_error; // derivative term
  totalError += error; //accumalate errors to find integral term
  pidTerm = (Kp * error) + (Ki * totalError) + (Kd * changeError);//total gain
  pidTerm = constrain(pidTerm, -255, 255);//constraining to appropriate value
  pidTerm_scaled = abs(pidTerm);//make sure it's a positive value

  last_error = error;
}
  
void Achange() //these functions are for finding the encoder counts
{
  A = digitalRead(2);
  B = digitalRead(21);

  if ((A==HIGH)&&(B==HIGH)) state = 1;
  if ((A==HIGH)&&(B==LOW)) state = 2;
  if ((A==LOW)&&(B==LOW)) state = 3;
  if((A==LOW)&&(B==HIGH)) state = 4;
  
  switch (state)
  {
    case 1:
    {
      if (statep == 2) count++;
      if (statep == 4) count--;
      break;
    }
    case 2:
    {
      if (statep == 1) count--;
      if (statep == 3) count++;
      break;
    }
    case 3:
    {
      if (statep == 2) count --;
      if (statep == 4) count ++;
      break;
    }
    default:
    {
      if (statep == 1) count++;
      if (statep == 3) count--;
    }
  }
 statep = state;

}

void Bchange()
{
  A = digitalRead(2);
  B = digitalRead(21);

  if ((A==HIGH)&&(B==HIGH)) state = 1;
  if ((A==HIGH)&&(B==LOW)) state = 2;
  if ((A==LOW)&&(B==LOW)) state = 3;
  if((A==LOW)&&(B==HIGH)) state = 4;
 
  switch (state)
  {
    case 1:
    {
      if (statep == 2) count++;
      if (statep == 4) count--;
      break;
    }
    case 2:
    {
      if (statep == 1) count--;
      if (statep == 3) count++;
      break;
    }
    case 3:
    {
      if (statep == 2) count --;
      if (statep == 4) count ++;
      break;
    }
    default:
    {
      if (statep == 1) count++;
      if (statep == 3) count--;
    }
  }
statep = state;
  
}

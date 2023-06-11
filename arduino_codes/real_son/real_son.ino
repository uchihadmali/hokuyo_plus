//Son Hal Arduino kodu
//In arrays, 0 is tilt, 1 is pan.

#include <ros.h>
#include <sensor_msgs/JointState.h>
#include <geometry_msgs/Twist.h>
#include <Encoder.h>

// TILT CONNECTIONS
// ORANGE VCC
#define ENCAT 2 // GREEN (tilt A)
#define ENCBT 21 // YELLOW (tilt B)

// PAN CONNECTIONS
// PURPLE VCC 
#define ENCAP 19 // BLUE (pan A)
#define ENCBP 20 // GREEN (pan B)

Encoder myEnc_t(ENCAT, ENCBT);
Encoder myEnc_p(ENCAP,ENCBP);
ros::NodeHandle nh;
bool start= false;

//message declarations
sensor_msgs::JointState enc_msg;
geometry_msgs::Twist vel_msg;

//motor parameters tilt-pan
double vel_ref[]={0,0};
int directionPin[] = {12,13};
int pwmPin[] = {3,11};
int brakePin[] = {9,8};

//boolean to switch direction
bool direction_default[] = {false,true};
bool directionState[]={false,false};

//pid parameters
double pidTerm[]={0,0};
double error[]={0,0};
double last_error[]={0,0};
double angle[]={0,0};
double prev_angle[]={0,0};
double error_i[]={0,0};
double error_d[]={0,0};
double velocity[]={0,0};
long prevT[]={0,0};
double control_input[]={0,0};
float vel_f[]={0,0};
float veln[]={0,0};
float vel_fn[]={0,0};

//encoder ratios
double ratio[]={0.0015,0.0015};

//PID constants
double Kp[]={1000,1000};
double Ki[]={500,500};
double Kd[]={50,50};

//subscribe callback
void velCallback(const geometry_msgs::Twist& vel_msg) {
  vel_ref[0]=vel_msg.linear.x; //tilt velocity
  vel_ref[1]=vel_msg.linear.y; //pan velocity
  //start=vel_msg.linear.z; //boolean info start
}

//callback end
ros::Publisher enc_pub("/joint_states", &enc_msg);
ros::Subscriber<geometry_msgs::Twist> vel_sub("/cmd_vel", &velCallback);
float joint_values[2] = {0.0, 0.0};

// Define the joint names
const char* joint_names[2] = {"joint1", "joint2"};

void setup()
{
  nh.initNode();
  nh.advertise(enc_pub);
  nh.subscribe(vel_sub);
  pinMode(directionPin[0], OUTPUT);
  pinMode(directionPin[1], OUTPUT);
  pinMode(pwmPin[0], OUTPUT);
  pinMode(pwmPin[1], OUTPUT);
  pinMode(brakePin[0], OUTPUT);
  pinMode(brakePin[1], OUTPUT);
}

long pos[] = {0,0};

void loop() {
  pos[0] = myEnc_t.read(); //tilt position
  pos[1] = myEnc_p.read(); //pan position
  
  // Update the joint values
  joint_values[0] = pos[0]*ratio[0]; //tilt position (angle)
  joint_values[1] = pos[1]*ratio[1]; //pan position (panangle) çarpı birşey var

  // Populate the joint state message
  enc_msg.header.stamp = nh.now();
  enc_msg.name_length = 2;
  enc_msg.name = joint_names;
  enc_msg.position_length = 2;
  enc_msg.position = joint_values;

  //publish position
  enc_pub.publish(&enc_msg);
  nh.spinOnce();

  
  PID_calculation(0);
  set_motor(0);
  PID_calculation(1);
  set_motor(1);
  
  delay(1); //delaysiz deneme de yapılacak
}

//sends voltage to motor
void set_motor(int i){
  if(pidTerm[i]<0){
    directionState[i]=!direction_default[i];
  }
  else{
    directionState[i]=direction_default[i];
    }
  control_input[i]=abs(pidTerm[i]);
  if(control_input[i]>255){
    control_input[i]=255;
  }
  if(control_input[i]<30){
    control_input[i]=0;
    }
  //set the direction
  if(directionState[i]){
    digitalWrite(directionPin[i], HIGH);
  }
  else{
    digitalWrite(directionPin[i], LOW);
  }
  
  //set speed
  analogWrite(pwmPin[i],control_input[i]);
}

//calculates the PID contol input signal called pidTerm
void PID_calculation(int i){

  angle[i]=(pos[i]*ratio[i]); //pos to angle
  
  // time difference
  long currT = micros();
  float deltaT = ((float) (currT - prevT[i]))/( 1.0e6 );
  prevT[i] = currT;

  //find velocity
  velocity[i] = (angle[i]-prev_angle[i])/deltaT;
  vel_f[i]=0.910*vel_fn[i]+0.045*velocity[i]+0.045*veln[i]; //15 HZ
  veln[i]=velocity[i];
  vel_fn[i]=vel_f[i];
  error[i]=vel_ref[i]-vel_f[i];

  //calculate control signal
  error_d[i]= (error[i]-last_error[i])/deltaT; //Derivative term
  error_i[i]=error[i]*deltaT+error_i[i]; //integral term
  pidTerm[i]=(Kp[i]*error[i])+(Ki[i]*error_i[i])+(Kd[i]*error_d[i]); //control signal

  //assign past values
  prev_angle[i]=angle[i];
  last_error[i]=error[i];
}

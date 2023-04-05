#include <ros.h>
#include <sensor_msgs/JointState.h>
#include <Encoder.h>

#define ENCA 2 // YELLOW
#define ENCB 21 // WHITE

Encoder myEnc(ENCA, ENCB);
ros::NodeHandle nh;

sensor_msgs::JointState enc_msg;
//subscribe callback goes here

//callback end
ros::Publisher enc_pub("/joint_states", &enc_msg);
float joint_values[2] = {0.0, 0.0};

// Define the joint names
const char* joint_names[2] = {"joint1", "joint2"};

void setup()
{
  nh.initNode();
  nh.advertise(enc_pub);
}

long pos = -999;

void loop() {
  long newPos;
  pos = myEnc.read();
  
  // Update the joint values
  joint_values[0] = pos;
  joint_values[1] = 0.2;

  // Populate the joint state message
  enc_msg.header.stamp = nh.now();
  enc_msg.name_length = 2;
  enc_msg.name = joint_names;
  enc_msg.position_length = 2;
  enc_msg.position = joint_values;

  //publish position
  enc_pub.publish(&enc_msg);
  nh.spinOnce();
  delay(100);
}

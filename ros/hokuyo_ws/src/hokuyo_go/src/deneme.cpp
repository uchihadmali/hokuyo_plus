#include "ros/ros.h"
#include <sensor_msgs/JointState.h>

#include <sstream>


int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "deneme");
  ros::NodeHandle n;
  ros::Publisher chatter_pub = n.advertise<sensor_msgs::JointState>("chatter", 1000);

  ros::Rate loop_rate(10);
  int count = 0;
  while (ros::ok())
  {
    /**
     * This is a message object. You stuff it with data, and then publish it.
     */
    sensor_msgs::JointState msg;
    msg.name.resize(2);
    msg.position.resize(2);
    ROS_INFO("count: %d",count);
    // Set the joint names
    msg.name[0] = "joint1";
    msg.name[1] = "joint2";
    msg.position[0]=10;
    msg.position[1]=20;



    /**
     * The publish() function is how you send messages. The parameter
     * is the message object. The type of this object must agree with the type
     * given as a template parameter to the advertise<>() call, as was done
     * in the constructor above.
     */
    chatter_pub.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}

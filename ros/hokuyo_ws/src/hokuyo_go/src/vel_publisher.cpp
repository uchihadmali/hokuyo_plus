#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/JointState.h>
#include <iostream>
#include <fstream>


#define PI 3.14159265359

double angle=0.0;
double angle_goal=0.8727;
double panangle=0.0;
double panangle_goal=3.1416;
double angle_vel=0.0;
double panangle_vel=0.0;
double goal_reached_angle=0;
double goal_reached_panangle=0;
double tolerance=0.001;
double max_vel_angle=2*PI/180;
double max_vel_panangle=2*PI/180;
void compare(){
    if((angle-angle_goal)^2<tolerance){
    goal_reached_angle=1;
    }
    if((panangle-panangle_goal)^2<tolerance){
    goal_reached_panangle=1;
    }
}

//gets the current position and calculates the velocities
void encoCallback(const sensor_msgs::JointState::ConstPtr& msg){
    //getting angle and panangle info
    angle = msg->position[1];
    panangle= msg->position[0];
    
    
    //check if goal is reached
    compare();
    
    //set next goals
    if(goal_reached_angle==1){
    angle_goal=-angle_goal;
    goal_reached_angle=0;
    }
    
    if(goal_reached_panangle==1){
    panangle_goal=-panangle_goal;
    goal_reached_panangle=0;
    }
    
    
    //calculating APF velocities
    
    
    
    

}
int main(int argc,char** argv){

    ros::init(argc,argv,"vel_publisher");
    ros::NodeHandle nh;
    
    //subscribing topics
    ros::Subscriber sub = nh.subscribe("/joint_states", 1, encoCallback);
    
    //publisher for velocity at gazebo
    ros::Publisher vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 1000);
    

}

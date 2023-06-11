//This code is for moving the motors of the pan tilt mechanism.
#include <ros/ros.h>
#include <math.h>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/JointState.h>
#include <iostream>
#include <fstream>
#include <trajectory_msgs/JointTrajectory.h>
#include <trajectory_msgs/JointTrajectoryPoint.h>


#define PI 3.14159265359

double angle=0.0;
double angle_goal=0.8727;
double panangle=0.0;
double panangle_goal=2.5;
double angle_vel=0.0;
double panangle_vel=0.0;
double goal_reached_angle=0;
double goal_reached_panangle=0;
double tolerance=0.3;
double max_vel_angle=8*PI/180;
double max_vel_panangle=15*PI/180;
double k=1;
void compare(){
    if(abs(angle-angle_goal)<tolerance){
    goal_reached_angle=1;
    ROS_INFO("tilt goal_reached");
    }
    if(abs(panangle-panangle_goal)<tolerance){
    goal_reached_panangle=1;
    ROS_INFO("pan goal_reached");
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
    
    
    //calculating velocities
    angle_vel=15*(angle_goal-angle);
    panangle_vel=15*(panangle_goal-panangle);
    if(abs(angle_vel)>max_vel_angle){
        angle_vel=max_vel_angle*angle_vel/abs(angle_vel);
    }
    if(abs(panangle_vel)>max_vel_panangle){
        panangle_vel=max_vel_panangle*panangle_vel/abs(panangle_vel);
    }
    
    

}
int main(int argc,char** argv){

    ros::init(argc,argv,"vel_publisher");
    ros::NodeHandle nh;
    
    //subscribing topics
    ros::Subscriber sub = nh.subscribe("/joint_states", 1000, encoCallback);
    
    //publisher for velocity at gazebo
    ros::Publisher vel_pub = nh.advertise<trajectory_msgs::JointTrajectory>("/gazebo_ros_control/command", 1000);
    
    trajectory_msgs::JointTrajectory joint_traj;
    trajectory_msgs::JointTrajectoryPoint traj_point;
    joint_traj.joint_names = {"pan_joint", "tilt_joint"};
    
    
    // Create a joint trajectory point
    //traj_point.time_from_start = ros::Duration(2.0); // 2 seconds
    //traj_point.positions = {1.0, 2.0};

    // Add the joint trajectory point to the joint trajectory message
    //joint_traj.points.push_back(traj_point);
    
    
    ros::Rate loop(10);
    while(ros::ok()){
      joint_traj.header.stamp = ros::Time::now();
      traj_point.time_from_start = ros::Duration(2.0); // 2 seconds
      traj_point.positions = {panangle_goal, angle_goal};
      traj_point.velocities = {panangle_vel, angle_vel};
      //traj_point.velocities.push_back(0.5);  // Velocity for pan_joint
      //traj_point.velocities.push_back(0.3);  // Velocity for tilt_joint
      //joint_traj.points.positions= {angle_goal, panangle_goal};
      //ROS_INFO("pos sizes; %ld vel size: %ld", traj_point.positions.size(),traj_point.velocities.size());
      joint_traj.points.clear();
      joint_traj.points.push_back(traj_point);

      vel_pub.publish(joint_traj);

      ros::spinOnce();
      loop.sleep();

    }
}

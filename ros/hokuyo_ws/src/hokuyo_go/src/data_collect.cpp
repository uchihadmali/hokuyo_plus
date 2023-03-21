#include "ros/ros.h"
#include "std_msgs/Float64.h"
#include "std_msgs/Float32.h"
#include "sensor_msgs/LaserScan.h"
#include "sensor_msgs/PointCloud2.h"
#include <sensor_msgs/JointState.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <iostream>
#include <fstream>
#include <laser_geometry/laser_geometry.h>



laser_geometry::LaserProjection projector_;
tf::TransformListener listener_;
   
void scanCallback (const sensor_msgs::LaserScan::ConstPtr& scan_in)
{
     if(!listener_.waitForTransform(
           scan_in->header.frame_id,
           "/world",
           scan_in->header.stamp + ros::Duration().fromSec(scan_in->ranges.size()*scan_in->time_increment),
           ros::Duration(1.0))){
        return;
     }
   
     sensor_msgs::PointCloud cloud;
     projector_.transformLaserScanToPointCloud("/world",*scan_in,
             cloud,listener_);
   
     // Do something with cloud.
}

int main(int argc, char** argv)
{
  // Initialize ROS node and create a node handle
  ros::init(argc, argv, "data_collect");
  ros::NodeHandle nh;

  // Create a transform listener
  tf::TransformListener tf_listener_;

  // Subscribe to the laser scan topic
  ros::Subscriber laser_sub = nh.subscribe<sensor_msgs::LaserScan>("/hokuyo/scan", 1, laserScanCallback);

  // Spin and process callbacks
  ros::spin();

  return 0;
}






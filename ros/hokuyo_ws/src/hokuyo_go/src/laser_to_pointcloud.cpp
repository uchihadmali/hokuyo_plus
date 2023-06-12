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

using namespace std;

std::vector<float> laser_scan;

double angle = 0.0;
double tilt = 0.0;
double panangle = 0.0;
double lastangle = 0.0;
double lastangle2 = 0.0;
double lastpan=0;
double laser_increment = 0.0;

float x[1024];
float y[1024];
float z[1024];
int ctn = 0;
int t =0;
int scanSize;
int a=1;
int b=0;
int d1=0.05;
int d2=0.1;
float d_1=0.114;
float d_2=0.02845;
float l_1=0.045;
float l_2=0.040; //0.075
float xx;
float yy;
float zz;
float e_x,e_y,e_z;
float start_angle;
int scan_num=1000;


//declaring the lasercan and pointcloud objects
sensor_msgs::LaserScan last_laser;
sensor_msgs::PointCloud2 cloud_out;

// Laser data callback
void laserCallback(const sensor_msgs::LaserScan::ConstPtr& msg)
{
    //assigning laser data
    laser_increment = msg->angle_increment;
    laser_scan = msg->ranges;
    last_laser = *msg;

}



// Joint states callback
void encoCallback(const sensor_msgs::JointState::ConstPtr& msg)
{
    //getting joint state data
    angle = msg->position[1];
    panangle= msg->position[0];
    
    
   if( fabs(angle-lastangle)>=(M_PI)/90 || fabs(panangle-lastpan)>=(M_PI)/720 ){
        if(ctn<scan_num){

            scanSize= (int)laser_scan.size();
            
            //assigning point cloud attributes
            cloud_out.height = 1;
            cloud_out.width  = scanSize*scan_num;
            cloud_out.fields.resize (3);
            cloud_out.fields[0].name = "x";
            cloud_out.fields[0].offset = 0;
            cloud_out.fields[0].datatype = sensor_msgs::PointField::FLOAT32;
            cloud_out.fields[0].count = 1;
            cloud_out.fields[1].name = "y";
            cloud_out.fields[1].offset = 4; //4
            cloud_out.fields[1].datatype = sensor_msgs::PointField::FLOAT32;
            cloud_out.fields[1].count = 1;
            cloud_out.fields[2].name = "z";
            cloud_out.fields[2].offset = 8; //8
            cloud_out.fields[2].datatype = sensor_msgs::PointField::FLOAT32;
            cloud_out.fields[2].count = 1;

            int offset = 12;

            cloud_out.point_step = offset;
            cloud_out.row_step   = cloud_out.point_step * cloud_out.width;
            cloud_out.data.resize (cloud_out.row_step   * cloud_out.height);
            cloud_out.is_dense = false;

            unsigned int count = ctn*scanSize;


            for(int i=0; i<scanSize; i++){

           
                start_angle=-2.094;
                yy= laser_scan[i]*sin(laser_increment*i+start_angle);
                xx= laser_scan[i]*cos(laser_increment*i+start_angle);
                zz= 0;
                x[i]=xx*cos(panangle)-
                                    yy*sin(panangle)*cos(angle)+zz*sin(panangle)*sin(angle)+
                                    l_1*sin(panangle)*sin(angle)+l_2*sin(panangle);
                                    
                y[i]=xx*sin(panangle)+
                                    yy*cos(panangle)*cos(angle)-zz*cos(panangle)*sin(angle)-
                                    l_1*cos(panangle)*sin(angle)+l_2*cos(panangle)-d_2;
                z[i]=yy*sin(angle)+zz*cos(angle)+l_1*cos(angle)+d_1;
                
                
                
                


                float *pstep = (float*)&cloud_out.data[count * cloud_out.point_step];

                pstep[0] = x[i];
                pstep[1] = y[i];
                pstep[2] = z[i];
                ++count;

            }
            
            ctn++;
        }
        
        //reseting data at certain scan number
        else{
        cloud_out.data.clear();
        ctn=0;
        }

        ctn++;
        lastangle=angle;
    	lastpan=panangle;
    }
    

}



int main(int argc, char **argv)
{
  ros::init(argc, argv, "laser_to_pointcloud");
  ros::NodeHandle n;

 
  //subscribing topics
  ros::Subscriber sub = n.subscribe("/joint_states", 1000, encoCallback);
  ros::Subscriber laserSub = n.subscribe("/hokuyo/scan", 1000, laserCallback); //hokuyo/scan
  
  //publishing resulting point cloud
  ros::Publisher pclPub = n.advertise<sensor_msgs::PointCloud2> ("output", 10);
  
  
  //publishing pointcloud
  ros::Rate loop(10);
  while(ros::ok()){

      cloud_out.header.frame_id = "taban";
      cloud_out.header.stamp = last_laser.header.stamp;
      cloud_out.header.seq = cloud_out.header.seq+1;

      pclPub.publish(cloud_out);
      ros::spinOnce();
      loop.sleep();

  }



  return 0;
}

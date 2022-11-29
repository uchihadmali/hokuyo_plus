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

float x[512*170];
float y[512*170];
float z[512*170];
int ctn = 0;
int t =0;
int scanSize;
int a=1;
int b=0;
int d1=0.05;
int d2=0.1;
float xx;
float yy;
float zz;

//declaring the lasercan and pointcloud objects
sensor_msgs::LaserScan last_laser;
sensor_msgs::PointCloud2 cloud_out;


// Fill in the cloud data

void laserCallback(const sensor_msgs::LaserScan::ConstPtr& msg)
{

    laser_increment = msg->angle_increment;
    laser_scan = msg->ranges;

    last_laser = *msg;


    //std::cout << "laser icrement: " << laser_increment << std::endl;
    if(a==0){
        a++;
    for(int i=0; i<512; i++){

            std::cout << i << "scan: " << laser_scan[i] << std::endl;

        }

    }

}



// %Tag(CALLBACK)%
void encoCallback(const sensor_msgs::JointState::ConstPtr& msg)
{
  //ROS_INFO("I heard: [%s]", msg->data.c_str());

    //std::cout << msg->data << std::endl;

    t++;

    //angle = msg->data;
    angle = msg->position[1];
    cout<< angle;
    angle= (angle/180)*M_PI;
    
    panangle= msg->position[0];
    panangle=(panangle/180)* M_PI;


   if( fabs(angle-lastangle)>=(5.5*M_PI)/180 || fabs(panangle-lastpan)>=(23*M_PI)/180 ){     //if(fabs(angle-lastangle)>0.01){
        if(ctn<156){

            scanSize= (int)laser_scan.size();

            //cloud_out.header = last_laser.header;
            cloud_out.height = 1;
            cloud_out.width  = scanSize*156;      // scanSize*168
            cloud_out.fields.resize (3);
            cloud_out.fields[0].name = "x";
            cloud_out.fields[0].offset = 0;
            cloud_out.fields[0].datatype = sensor_msgs::PointField::FLOAT32;
            cloud_out.fields[0].count = 1;
            cloud_out.fields[1].name = "y";
            cloud_out.fields[1].offset = 4;
            cloud_out.fields[1].datatype = sensor_msgs::PointField::FLOAT32;
            cloud_out.fields[1].count = 1;
            cloud_out.fields[2].name = "z";
            cloud_out.fields[2].offset = 8;
            cloud_out.fields[2].datatype = sensor_msgs::PointField::FLOAT32;
            cloud_out.fields[2].count = 1;

            int offset = 12;

            cloud_out.point_step = offset;
            cloud_out.row_step   = cloud_out.point_step * cloud_out.width;
            cloud_out.data.resize (cloud_out.row_step   * cloud_out.height);
            cloud_out.is_dense = false;

            unsigned int count = ctn*scanSize;


            for(int i=0; i<scanSize; i++){

           //     x[i+(ctn*scanSize)] = -1* laser_scan[i] * cos( laser_increment*i);
           //     y[i+(ctn*scanSize)] = laser_scan[i]* sin(laser_increment*i)*sin(angle);
           //     z[i+(ctn*scanSize)] = -1* laser_scan[i]* sin(laser_increment*i)*cos(angle);
           //     x[i+(ctn*scanSize)] = x[i+(ctn*scanSize)]*cos(panangle)+z[i+(ctn*scanSize)]*sin(panangle);
           //     z[i+(ctn*scanSize)] = -x[i+(ctn*scanSize)]*sin(panangle)+z[i+(ctn*scanSize)]*cos(panangle);

                xx = -1* laser_scan[i] * cos( laser_increment*i);
                yy = laser_scan[i]* sin(laser_increment*i)*cos(panangle);
                zz = -1* laser_scan[i]* sin(laser_increment*i)*sin(panangle);
                x[i+(ctn*scanSize)] = cos(panangle)*xx + sin(panangle)*sin(angle)*(yy-d1)+sin(panangle)*cos(angle)*(zz+d2);
                y[i+(ctn*scanSize)] = cos(angle)*(yy-d1)-sin(angle)*(zz+d2);
                z[i+(ctn*scanSize)] = -sin(panangle)*xx+ cos(panangle)*sin(angle)*(yy-d1) + cos(panangle)*cos(angle)*(zz+d2);

                //std::cout << "scan: " << laser_scan[i] << std::endl;
                std::cout << "ctn: " << ctn << std::endl;
                //std::cout << "pan: " << (panangle*180)/M_PI << std::endl;
                //std::cout << "angle: " << (angle*180)/M_PI << std::endl;
                std::cout << "z: " << z[i+(ctn*scanSize)] << std::endl;

                float *pstep = (float*)&cloud_out.data[count * cloud_out.point_step];

                pstep[0] = y[i+(ctn*scanSize)];
                pstep[1] = x[i+(ctn*scanSize)];
                pstep[2] = z[i+(ctn*scanSize)];

                ++count;

            }
        }

        if(ctn==154){
              ofstream myfile ("example1x.txt");
              if (myfile.is_open())
              {

                for(int count = 0; count < 512*154 ; count ++){    //512*168
                    myfile << x[count] << " " ;
                }
                myfile.close();
              }
              else cout << "Unable to open file";



            ofstream myfile2 ("example2y.txt");
              if (myfile2.is_open())
              {

                for(int count = 0; count < 512*154; count ++){      //512*168
                    myfile2 << y[count] << " " ;
                }
                myfile2.close();
              }
              else cout << "Unable to open file";


              ofstream myfile3 ("example3z.txt");
                if (myfile3.is_open())
                {
                  for(int count = 0; count < 512*154; count ++){      //512*168
                      myfile3 << z[count] << " " ;
                  }
                  myfile3.close();
                }
                else cout << "Unable to open file";
        }

        ctn++;
    }
    lastangle=angle;
    lastpan=panangle;
      //std::cout << "angle: " <<   angle << std::endl;

}



int main(int argc, char **argv)
{
  ros::init(argc, argv, "laser_to_pointcloud");
  ros::NodeHandle n;

 
  //subscribing topics
  ros::Subscriber sub = n.subscribe("joint_states", 1, encoCallback);
  //ros::Subscriber sub2 = n.subscribe("pan", 1, panCallback);
  ros::Subscriber laserSub = n.subscribe("hokuyo/scan", 1, laserCallback);
  //publishing resulting point cloud
  ros::Publisher pclPub = n.advertise<sensor_msgs::PointCloud2> ("output", 1);


  ros::Rate loop(2);
  while(ros::ok()){
      //points.data.assign();


      cloud_out.header.frame_id = "laser";
      cloud_out.header.stamp = last_laser.header.stamp;
      cloud_out.header.seq = cloud_out.header.seq+1;

      pclPub.publish(cloud_out);


    //  std::cout << "angle: " << laser_scan.size()<< std::endl;

  //    std::cout << " one array is read" << std::endl;

   //   pclPub.publish(cloud);

   //   std::cout << "angle: " << laser_scan.size()<< std::endl;
      ros::spinOnce();
      loop.sleep();

  }



  return 0;
}

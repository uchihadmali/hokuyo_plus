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
float d_1=0.114;
float d_2=0.02845;
float l_1=0.045;
float l_2=0.075;
float xx;
float yy;
float zz;
float e_x,e_y,e_z;
float start_angle;
float x1=0.106;

//declaring the lasercan and pointcloud objects
sensor_msgs::LaserScan last_laser;
sensor_msgs::PointCloud2 cloud_out;


// Fill in the cloud data

void laserCallback(const sensor_msgs::LaserScan::ConstPtr& msg)
{

    laser_increment = msg->angle_increment;
    laser_scan = msg->ranges;

    last_laser = *msg;

}



// %Tag(CALLBACK)%
void encoCallback(const sensor_msgs::JointState::ConstPtr& msg)
{
  //ROS_INFO("I heard: [%s]", msg->data.c_str());

    //std::cout << msg->data << std::endl;

    t++;

    //angle = msg->data;
    angle = msg->position[0];
    ROS_INFO("angle: %f",angle);
    //ROS_INFO("cos angle: %f",cos(angle));
    //cout<< angle;
    //angle= (angle/180)*M_PI;
    
    panangle= msg->position[1];
    //panangle=(panangle/180)* M_PI;
    ROS_INFO("pan angle: %f",panangle);
    
    //endpoint
    //e_x= l_1*sin(panangle)*sin(angle)+l_2*cos(panangle);
    //e_y= -l_1*cos(panangle)*sin(angle)+l_2*sin(panangle)-d_2;
    //e_z= l_1*cos(angle)+d_1;
                
    //ROS_INFO("endpoint: (%f,%f,%f) ", e_x,e_y,e_z);
    //ctn=156;


   if( fabs(angle-lastangle)>=(5.5*M_PI)/18000|| fabs(panangle-lastpan)>=(23*M_PI)/18000 ){     //if(fabs(angle-lastangle)>0.01){
        if(ctn<2000){

            scanSize= (int)laser_scan.size();

            //cloud_out.header = last_laser.header;
            cloud_out.height = 1;
            cloud_out.width  = scanSize*1000;      // scanSize*168
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
            
            	//laser to end effector frame coordinate 
                start_angle=-0.523;
                yy= laser_scan[i]*sin(laser_increment*i+start_angle);
                xx= laser_scan[i]*cos(laser_increment*i+start_angle);
                zz= 0;
                
                //kinematic map frame conversion
                x[i]=-xx*sin(panangle)-
                                    yy*cos(panangle)*cos(angle)-zz*cos(panangle)*sin(angle)+
                                    0.005*cos(panangle)-0.037*sin(panangle)-0.008*cos(panangle)*cos(angle)-x1*cos(panangle)*sin(angle);
                                    
                y[i]=xx*cos(panangle)-
                                    yy*cos(angle)*sin(panangle)-zz*sin(panangle)*sin(angle)+
                                    0.037*cos(panangle)+0.005*sin(panangle)-0.008*cos(angle)*sin(panangle)-x1*sin(panangle)*sin(angle);
                z[i]=-yy*sin(angle)+zz*cos(angle)+x1*cos(angle)-sin(angle)*0.008+0.121;
                
                
                
                
     
       

                float *pstep = (float*)&cloud_out.data[count * cloud_out.point_step];

                /*
                pstep[0] = y[i+(ctn*scanSize)];
                pstep[1] = x[i+(ctn*scanSize)];
                pstep[2] = z[i+(ctn*scanSize)];
                */
                
                pstep[0] = x[i];
                pstep[1] = y[i];
                pstep[2] = z[i];
                ++count;

            }
            
            ctn++;
        }
        
        else{
        cloud_out.data.clear();
        ctn=0;
        }

        if(ctn==-1){
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
  ros::init(argc, argv, "laser_real");
  ros::NodeHandle n;

 
  //subscribing topics
  ros::Subscriber sub = n.subscribe("/joint_states", 1000, encoCallback);
  //ros::Subscriber sub2 = n.subscribe("pan", 1, panCallback);
  ros::Subscriber laserSub = n.subscribe("/scan", 1000, laserCallback); //hokuyo_scan
  //publishing resulting point cloud
  ros::Publisher pclPub = n.advertise<sensor_msgs::PointCloud2> ("output", 10);


  ros::Rate loop(10);
  while(ros::ok()){
      //points.data.assign();


      cloud_out.header.frame_id = "map";//taban
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

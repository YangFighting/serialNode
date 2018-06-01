#include <ros/ros.h> 
#include <serial/serial.h>  //ROS已经内置了的串口包 
#include <std_msgs/String.h> 
#include <std_msgs/Empty.h> 
#include "serialnode/position.h"
#include <sstream>

serial::Serial ser; //声明串口对象 
  
int main (int argc, char** argv) 
{ 
    //初始化节点 
    ros::init(argc, argv, "serial_positoin"); 
    //声明节点句柄 
    ros::NodeHandle nh; 
    
    serialnode::position pos;

    float x,y;
    ros::Time t;
    
    x = 0.1;
    y = 0.0; 
    t = ros::Time::now();

    std::stringstream convert;
    //发布主题 
    ros::Publisher pos_pub = nh.advertise<serialnode::position>("position", 1000); 

  
    //指定循环的频率 
    ros::Rate loop_rate(1); 
    while(ros::ok()) 
    { 
        x++;
        y++; 
        t = ros::Time::now();

        convert.str("");
        convert << x;
        pos.x = convert.str();
  
 	    convert.str("");
        convert << y;
        pos.y = convert.str();
 
        convert.str("");
        convert << t;
        pos.t = convert.str();


        ROS_INFO_STREAM("x: " << pos.x<<"\ty: " << pos.y<<"\ttime: " << pos.t);
        pos_pub.publish(pos); 

        //处理ROS的信息，比如订阅消息,并调用回调函数 
        ros::spinOnce(); 
        loop_rate.sleep(); 
  
    } 
} 

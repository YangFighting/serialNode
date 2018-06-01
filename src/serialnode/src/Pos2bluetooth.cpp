#include <ros/ros.h> 
#include <serial/serial.h>  //ROS已经内置了的串口包 
#include <std_msgs/String.h> 
#include <std_msgs/Empty.h> 
#include "serialnode/position.h"

serial::Serial ser; //声明串口对象 
  
//回调函数 
void write_callback(const serialnode::positionConstPtr& Ptr_pos) 
{ 
    ROS_INFO_STREAM("Writing to serial port"); 
    ROS_INFO_STREAM("x:" <<Ptr_pos->x  <<"\ty:" <<Ptr_pos->y  <<"\ttime:" <<Ptr_pos->t); 
    
    ser.write(Ptr_pos->x);   //发送串口数据 
    ser.write(Ptr_pos->y);
    ser.write(Ptr_pos->t);
} 
  
int main (int argc, char** argv) 
{ 
    //初始化节点 
    ros::init(argc, argv, "Pos2bluetooth"); 
    //声明节点句柄 
    ros::NodeHandle nh; 
  
    //订阅主题，并配置回调函数 
    ros::Subscriber write_sub = nh.subscribe("position", 1000, write_callback); 
    //发布主题 
    ros::Publisher read_pub = nh.advertise<std_msgs::String>("read", 1000); 
  
    try 
    { 
    //设置串口属性，并打开串口 
        ser.setPort("/dev/rfcomm0"); 
        ser.setBaudrate(115200); 
        serial::Timeout to = serial::Timeout::simpleTimeout(1000); 
        ser.setTimeout(to); 
        ser.open(); 
    } 
    catch (serial::IOException& e) 
    { 
        ROS_ERROR_STREAM("Unable to open port "); 
        return -1; 
    } 
  
    //检测串口是否已经打开，并给出提示信息 
    if(ser.isOpen()) 
    { 
        ROS_INFO_STREAM("Serial Port initialized"); 
    } 
    else 
    { 
        return -1; 
    } 
  
    //指定循环的频率 
    ros::Rate loop_rate(1); 
    while(ros::ok()) 
    { 

        //处理ROS的信息，比如订阅消息,并调用回调函数 
        ros::spinOnce(); 
        loop_rate.sleep(); 
  
    } 
} 

# serialNode

功能包serialnode中的 serial_node.cpp 节点功能如下：
1、接收手机蓝牙传来的数据
2、将数据打印在屏幕上，并将数据以主题形式发布

使用说明
在手机上下载 蓝牙串口 app，并打开app

在Ubuntu上
扫描蓝牙设备
hcitool scan

为本地设备增加SPP服务
sdptool add SP

查看手机蓝牙spp服务在哪个信道 （我的是 8 ）
sdptool browse 【MAC】

创建设备节点
sudo mknod /dev/rfcomm0 c 216 0

设置权限
sudo chmod 666 /dev/rfcomm0

连接蓝牙设备 # rfcomm bind 0 蓝牙设备mac地址 信道
sudo rfcomm bind 0 【MAC】 【信道】


--------------------2018.06.01--------------

在src/serialnode/ 中增加
serial_positoin.cpp（产生位置坐标，通过自定义消息发布出去 ）
Pos2bluetooth.cpp（订阅自定义消息，通过蓝牙将 位置坐标 发送到手机）

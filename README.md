# ROS基础功能测试

#### 环境准备

* 编译代码

```bash
cd ~/ros/

catkin_make
```

* 启动roscore节点管理器

```bash
roscore
```

#### 订阅控制命令

* 案例一：控制小车(使用小乌龟代替)

```bash
# 启动带有小乌龟的测试界面节点
rosrun turtlesim turtlesim_node

# 启动乌龟移动位置接收节点
rosrun comm turtleMoveClient

# 启动控制乌龟移动节点
rosrun comm turtleMove
```

* 案例二：控制小车(使用小乌龟代替)

```bash
# 启动带有小乌龟的测试界面节点
rosrun turtlesim turtlesim_node

# 启动乌龟移动位置接收节点
rosrun comm callBackYuan

# 启动控制乌龟移动节点
rosrun comm yuan
```

#### 发布小车TF

```bash
# 启动TF广播程序节点
rosrun comm tf_broadcaster

# 启动位置监听节点
rosrun comm tf_listener
```

#### 计算并发布小车里程计

```bash
# 启动通过Odometry发布里程计信息节点
rosrun comm odometry_publisher

# 启动位置监听节点
rosrun comm tf_listener
```

#### 与STM32通信

```text
由于Ubuntu20的ROS noetic版本不自带串口(serial)连接包,需要自己编译。
```

* 编译serial
```bash
#注: 代码中相关依赖已经修改只需要编译即可
cd ros/src

git clone https://github.com/wjwwood/serial.git

cd serial

make

make install

cd ros

catkin_make -DCATKIN_WHITELIST_PACKAGES="serial"

catkin_make -DCATKIN_WHITELIST_PACKAGES="comm"
```

* 启动串口交互节点

```bash
#注: 其中自定义消息格式
rosrun comm serial_nodess
```
#include <actionlib/client/simple_action_client.h>
#include "comm/turtleMoveAction.h"
#include <turtlesim/Pose.h> 
#include <turtlesim/Spawn.h>
#include <geometry_msgs/Twist.h> 
typedef actionlib::SimpleActionClient<comm::turtleMoveAction> Client;
struct Myturtle
{
    float x;
    float y;
    float theta;
}turtle_present_pose;
 
// 当action完成后会调用该回调函数一次
void doneCb(const actionlib::SimpleClientGoalState& state,
        const comm::turtleMoveResultConstPtr& result)
{
    ROS_INFO("Yay! The turtleMove is finished!");
    ros::shutdown();
}
 
// 当action激活后会调用该回调函数一次
void activeCb()
{
    ROS_INFO("Goal just went active");
}
 
// 收到feedback后调用该回调函数
void feedbackCb(const comm::turtleMoveFeedbackConstPtr& feedback)
{
    ROS_INFO(" present_pose : %f  %f  %f", feedback->present_turtle_x,
                   feedback->present_turtle_y,feedback->present_turtle_theta);
}
 
int main(int argc, char** argv)
{
    ros::init(argc, argv, "turtleMoveClient");
 
    // 定义一个客户端
    Client client("turtleMove", true);
 
    // 等待服务器端
    ROS_INFO("Waiting for action server to start.");
    client.waitForServer();
    ROS_INFO("Action server started, sending goal.");
 
    // 创建一个action的goal
    comm::turtleMoveGoal goal;
    goal.turtle_target_x = 1;
    goal.turtle_target_y = 1;
    goal.turtle_target_theta = 0;
 
    // 发送action的goal给服务器端，并且设置回调函数
    client.sendGoal(goal,  &doneCb, &activeCb, &feedbackCb);
 
    ros::spin();
 
    return 0;
}

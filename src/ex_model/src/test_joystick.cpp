#include <ros/ros.h>
#include <std_msgs/Float64.h>
#include <sensor_msgs/Joy.h>

class TeleopExModel {
public:
	TeleopExModel();

private:
	void joyCallbackRight(const sensor_msgs::Joy::ConstPtr& joy);
	void joyCallbackLeft(const sensor_msgs::Joy::ConstPtr& joy);

	ros::NodeHandle n;
	ros::Subscriber joy_sub_right, joy_sub_left;
	ros::Publisher velocity_pub1, velocity_pub2, velocity_pub3;
};


TeleopExModel::TeleopExModel() {
	joy_sub_right = n.subscribe<sensor_msgs::Joy>("joy_right", 10, &TeleopExModel::joyCallbackRight, this);
	joy_sub_left = n.subscribe<sensor_msgs::Joy>("joy_left", 10, &TeleopExModel::joyCallbackLeft, this);

	velocity_pub1 = n.advertise<std_msgs::Float64>("ex_model/joint_velocity_controller1/command", 1);
	velocity_pub2 = n.advertise<std_msgs::Float64>("ex_model/joint_velocity_controller2/command", 1);
	velocity_pub3 = n.advertise<std_msgs::Float64>("ex_model/joint_velocity_controller3/command", 1);
}

void TeleopExModel::joyCallbackRight(const sensor_msgs::Joy::ConstPtr& joy) {
	std_msgs::Float64 command1, command3;

	if(joy->axes[1] < 0) {
		command1.data = joy->axes[1] * 0.27;
	} else {
		command1.data = joy->axes[1] * 0.33;
	}

	if(joy->axes[0] > 0) {
		command3.data = joy->axes[0] * 1.28;
	} else {
		command3.data = joy->axes[0] * 1.62;
	}

	velocity_pub1.publish(command1);
	velocity_pub3.publish(command3);
}

void TeleopExModel::joyCallbackLeft(const sensor_msgs::Joy::ConstPtr& joy) {
	std_msgs::Float64 command2;

	if(joy->axes[1] < 0) {
		command2.data = -joy->axes[1] * 0.61;
	} else {
		command2.data = -joy->axes[1] * 0.80;
	}

	velocity_pub2.publish(command2);
}

int main(int argc, char** argv) {
	ros::init(argc, argv, "teleop_ex_model");
	TeleopExModel teleop_ex_model;

	ros::spin();
}


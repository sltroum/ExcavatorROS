#include <ros/ros.h>
#include <std_msgs/Float64.h>

int main(int argc, char** argv) {
	ros::init(argc, argv, "velocity_command_publisher");
	ros::NodeHandle n;
	ros::Publisher velocity_pub1 = n.advertise<std_msgs::Float64>("ex_model/joint_velocity_controller1/command", 1);
	ros::Rate loop_rate(30);

	std_msgs::Float64 command;

	while (ros::ok()) {
		command.data = -0.1;

		// send the velocity command
		velocity_pub1.publish(command);

		// This will adjust as needed per iteration
		loop_rate.sleep();
	}

	return 0;
}

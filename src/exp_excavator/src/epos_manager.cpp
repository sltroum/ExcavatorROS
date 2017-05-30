/*
 * epos_manager.cpp
 *
 *  Created on: Feb 22, 2017
 *      Author: yutak
 */

#include <iostream>
#include <stdio.h>

#include <ros/ros.h>
#include <sensor_msgs/Joy.h>
#include <epos_library/Definitions.h>
#include <exp_excavator/JointValues.h>

class EposManager {
public:
	EposManager();
	~EposManager();

private:
	void spdComCallback(const exp_excavator::JointValuesConstPtr& msg);

	ros::NodeHandle n;
	ros::Subscriber subSpdCom;
	void *pHandleBoom, *pHandleArm;
	unsigned short nodeIdBoom;
	unsigned short nodeIdArm;
};

EposManager::EposManager() {
	unsigned int err;
	char *pDeviceName = (char*)"EPOS2";
	char *pProtocolStackName = (char*)"MAXON SERIAL V2";
	char *pInterfaceName = (char*)"USB";
	char *pPortNameBoom = (char*)"USB0";
	char *pPortNameArm = (char*)"USB1";

	nodeIdBoom = 1;
	nodeIdArm = 2;

	pHandleBoom = VCS_OpenDevice(pDeviceName, pProtocolStackName,
			 	 	 	 	 	 pInterfaceName, pPortNameBoom, &err);
	if(err) {
		ROS_ERROR("EPOS for Boom OpenDevice Error:0x%08x", err);
	}
	VCS_SetOperationMode(pHandleBoom, nodeIdBoom, OMD_VELOCITY_MODE, &err);
	if(err) {
		ROS_ERROR("EPOS for Boom SetOperationMode Error:0x%08x", err);
	}
	VCS_SetEnableState(pHandleBoom, nodeIdBoom, &err);
	if(err) {
		ROS_ERROR("EPOS for Boom SetEnableStateError:0x%08x", err);
	}

	pHandleArm = VCS_OpenDevice(pDeviceName, pProtocolStackName,
	 	 	 	 	 	 	 	pInterfaceName, pPortNameArm, &err);
	if(err) {
		ROS_ERROR("EPOS for Arm OpenDevice Error:0x%08x", err);
	}
	VCS_SetOperationMode(pHandleArm, nodeIdArm, OMD_VELOCITY_MODE, &err);
	if(err) {
		ROS_ERROR("EPOS for Arm SetOperationMode Error:0x%08x", err);
	}
	VCS_SetEnableState(pHandleArm, nodeIdArm, &err);
	if(err) {
		ROS_ERROR("EPOS for Arm device set enable state error:0x%08x", err);
	}

	subSpdCom = n.subscribe<exp_excavator::JointValues>(
			"spd_commands", 10, &EposManager::spdComCallback, this);
}

EposManager::~EposManager() {
	unsigned int err;

	VCS_SetDisableState(pHandleBoom, nodeIdBoom, &err);
	if(err) {
		ROS_ERROR("EPOS for Boom SetDisableState Error:0x%08x", err);
	}

	VCS_SetDisableState(pHandleArm, nodeIdArm, &err);
	if(err) {
		ROS_ERROR("EPOS for Arm SetDisableState Error:0x%08x", err);
	}
}

void EposManager::spdComCallback(
		const exp_excavator::JointValuesConstPtr& msg) {
	unsigned int err;

	VCS_SetVelocityMust(pHandleBoom, nodeIdBoom, long(msg->boom), &err);
	if(err) {
		ROS_ERROR("EPOS for Boom SetVelocityMust Error:0x%08x", err);
	}

	VCS_SetVelocityMust(pHandleArm, nodeIdArm, long(msg->arm), &err);
	if(err) {
		ROS_ERROR("EPOS for Arm SetVelocityMust Error:0x%08x", err);
	}
}

int main(int argc, char** argv) {
	ros::init(argc, argv, "epos_manager");
	EposManager em;
	ROS_INFO("EPOS Manager has started.");

	ros::spin();

	return 0;
}

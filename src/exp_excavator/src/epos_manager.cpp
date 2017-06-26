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
#include <sensor_msgs/JointState.h>
#include <epos_library/Definitions.h>
#include <exp_excavator/JointValues.h>

class EposManager {
public:
	EposManager();
	~EposManager();	
	void spdComCallback(const exp_excavator::JointValuesConstPtr& msg);
        void GetCurrentPositionAllDevice(double* CurrentPosition);
        void GetCurrentPosition(void *keyHandle_, int *CurrentPosition, unsigned short nodeId);
	void publishJointStates(const ros::TimerEvent&);
	
	ros::NodeHandle n;
	ros::Subscriber subSpdCom;
	ros::Publisher pubPosIs;
	ros::Timer timer;

	double motorTHETA[2];
//	void publishJointStates(const ros::TimerEvent&);
//	void startBroadcastingJointStates();
private:
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
	
	VCS_ClearFault(pHandleBoom,nodeIdBoom, &err);
	if(err) {
		ROS_ERROR("EPOS for Boom ClearFault Error:0x%08x", err);
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
	
	VCS_ClearFault(pHandleArm,nodeIdArm, &err);
	if(err) {
		ROS_ERROR("EPOS for Arm ClearFault Error:0x%08x", err);
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
			"spd_commands", 1, &EposManager::spdComCallback, this);
			
        
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
	
//sensor_msgs::JointState msg2;
//  msg2.header.stamp = ros::Time::now();
//    EposManager::GetCurrentPositionAllDevice(motorTHETA);
//      msg2.name.push_back("Boom");
//        msg2.position.push_back(motorTHETA[0]);
//        msg2.name.push_back("Arm");
//        msg2.position.push_back(motorTHETA[1]);
//        pubPosIs.publish(msg2); 
        }

//	EposManager::GetCurrentPositionAllDevice(motorTHETA);
//	 printf("%f",motorTHETA[0]);

//}

//void EposManager::startBroadcastingJointStates(){


//}

void EposManager::publishJointStates(const ros::TimerEvent& event)
{
//    printf("%f",motorTHETA[0]);
    sensor_msgs::JointState msg;
//    msg.header.stamp = ros::Time::now();
//    EposManager::GetCurrentPositionAllDevice(motorTHETA);

    msg.name.push_back("Boom");
    msg.position.push_back(0.01);
    msg.name.push_back("Arm");
    msg.position.push_back(0.02);
    pubPosIs.publish(msg);    
}

void EposManager::GetCurrentPosition(void *keyHandle_, int *CurrentPosition, unsigned short nodeId){
        unsigned int err;
        VCS_GetPositionIs(keyHandle_, nodeId, CurrentPosition, &err); 
    
        if(err) {
	        ROS_ERROR("EPOS for Arm SetVelocityMust Error:0x%08x", err);
        }
}

void EposManager::GetCurrentPositionAllDevice(double* CurrentPosition){
	int Pos;
	GetCurrentPosition(pHandleBoom, &Pos,nodeIdBoom);
	CurrentPosition[0]=(-2*3.1415926/(50*72))*Pos;
	GetCurrentPosition(pHandleArm, &Pos,nodeIdArm);
	CurrentPosition[1]=(-2*3.1415926/(50*72))*Pos;
}



// void EposManager::posGet(double *CurrentPosition) {
//	double positionBoom;
//	unsigned int err;
//      
//        VCS_GetPositionIs(pHandleBoom, nodeIdBoom, positionBoom, &err);
//	
//	if(err) {
//		ROS_ERROR("EPOS for Boom GetPositionIs Error:0x%08x", err);
//	}
//
//}



int main(int argc, char** argv) {
	ros::init(argc, argv, "epos_manager");
        
	
	EposManager em;
	ROS_INFO("EPOS Manager has started.");
	ros::Rate r(100);
	em.pubPosIs = em.n.advertise<sensor_msgs::JointState>("/joint_states_EPOS",1);


	ros::AsyncSpinner spinner(4);
	spinner.start();
	while(ros::ok()){
	
	sensor_msgs::JointState msg2;
        msg2.header.stamp = ros::Time::now();
        em.GetCurrentPositionAllDevice(em.motorTHETA);
        msg2.name.push_back("Boom");
        msg2.position.push_back(em.motorTHETA[0]);
        msg2.name.push_back("Arm");
        msg2.position.push_back(em.motorTHETA[1]);
        em.pubPosIs.publish(msg2); 
        
        }
        return 0;
}

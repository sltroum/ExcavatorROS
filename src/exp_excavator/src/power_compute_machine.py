#!/usr/bin/python
'''
@author: fes
'''

import rospy
import exp_excavator.msg as cmsg
import sensor_msgs.msg as smsg
import numpy as np

class PowerMachine:

    def __init__(self):
        rospy.init_node('power_machine', anonymous=True)
        
        self.rate = 100 #[Hz]

        self.powMsg = cmsg.PowerMachine()
             
        self.posBoom   = []
        self.posArm    = []
        self.posBucket = []
        self.velBoom   = []
        self.velArm    = []
        self.velBucket = []        
        self.curBoom   = []
        self.curArm    = []
        self.curBucket = []        

        self.powBoom   = []
        self.powArm    = []
                
        self.Torque_constant = 1.0
        
        self.sub_joints_EPOS = rospy.Subscriber('/joint_states_EPOS'
                                                ,smsg.JointState,self.cb_EPOSstate)
        self.sub_joints_DYNA = rospy.Subscriber('/joint_states_DYNA'
                                                ,smsg.JointState,self.cb_DYNAstate)
        self.pub_Power      = rospy.Publisher('PowerMachine', cmsg.PowerMachine, queue_size=10)


    def cb_EPOSstate(self, msg):
        try:
            self.posBoom = msg.position[0]
            self.posArm  = msg.position[1]
            self.velBoom = msg.velocity[0]
            self.velArm  = msg.velocity[1]
            self.curBoom = msg.effort[0]
            self.curArm  = msg.effort[1]
        except :
            print("ERROR-message-EPOS")  
    
    def cb_DYNAstate(self, msg):
        try:
            self.posBucket = msg.position[0]
            self.velBucket = msg.velocity[0]
        except :
            print("ERROR-message-DYNA")  

    def Power_update(self):
        r = rospy.Rate(self.rate)
        start_time = rospy.Time.now()
            
        while not rospy.is_shutdown(): 

            self.powBoom  = np.float64(self.Torque_constant)*np.float64(self.curBoom)*np.float64(self.velBoom)*50
            self.powArm   = np.float64(self.Torque_constant)*np.float64(self.curArm)*np.float64(self.velArm)*50
            
            self.powMsg = cmsg.PowerMachine()
            
            self.powMsg.header.stamp = rospy.Time.now()
            self.powMsg.powerBoom = self.powBoom
            self.powMsg.powerArm  = self.powArm
            
            self.pub_Power.publish(self.powMsg)
            r.sleep()
             
if __name__ == '__main__':
    pm = PowerMachine()
    try:
        pm.Power_update()
#        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")


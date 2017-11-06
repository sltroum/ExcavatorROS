#!/usr/bin/python
'''
@author: fes
'''

import rospy
from sensor_msgs.msg import JointState
import exp_excavator.msg as cmsg
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
        
        self.sub_jointsEPOS = rospy.Subscriber('JointsEPOS', JointState, self.cb_jointsEPOS)
        self.sub_jointsDYNA = rospy.Subscriber('JointsDYNA', JointState, self.cb_jointsDYNA)
        self.pub_Power      = rospy.Publisher('Power', cmsg.Power, queue_size=10)


    def cb_posEPOS(self, msg):
        try:
            self.posBoom = msg.position[0]
            self.posArm  = msg.position[1]
            self.velBoom = msg.velocity[0]
            self.velArm  = msg.velocity[1]
            self.curBoom = msg.effort[0]
            self.curArm  = msg.effort[1]
        except :
            print("ERROR-message-EPOS")  
    
    def cb_posDYNA(self, msg):
        try:
            self.posBucket = msg.position[0]
            self.velBucket = msg.velocity[0]
        except :
            print("ERROR-message-DYNA")  

    def Power_update(self):
        r = rospy.Rate(self.rate)
        start_time = rospy.Time.now()
            
        while not rospy.is_shutdown(): 

            self.powBoom  = self.np.float64(self.Torque_constant)*np.float64(self.curBoom)*np.float64(self.velBoom)*50
            self.powArm   = self.np.float64(self.Torque_constant)*np.float64(self.curArm)*np.float64(self.velArm)*50
            
            self.powMsg = cmsg.PowerMachine()
            
            self.powMsg.header.stamp = rospy.Time.now()
            self.powMsg.powerBoom = self.powBoom
            self.powMsg.powerArm  = self.powArm
            
            self.pub_Power.publish(self.powMsg)
            r.sleep()
             
if __name__ == '__main__':
    pm = PowerMachine()
    try:
        pm.Calibrate_update()
#        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")


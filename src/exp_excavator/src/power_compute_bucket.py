#!/usr/bin/python
'''
@author: fes
'''

import rospy
import exp_excavator.msg as cmsg
import sensor_msgs.msg as smsg
import numpy as np

class PowerBucket:

    def __init__(self):
        rospy.init_node('power_bucket', anonymous=True)
        
        self.rate = 100 #[Hz]

        self.powMsg = cmsg.PowerBucket()
             
        self.Torque_constant = 1.0
        
        self.sub_joints   = rospy.Subscriber('/CalibratedJoints'
                                                ,smsg.JointState,self.cb_joints)
        self.sub_jacobian = rospy.Subscriber('/jacobian'
                                                ,cmsg.Jacobian,self.cb_jacobian)
        self.sub_jacobian = rospy.Subscriber('/jacobian'
                                                ,cmsg.Jacobian,self.cb_force)
        self.pub_Power      = rospy.Publisher('Power', cmsg.PowerMachine, queue_size=10)


    def cb_joints(self, msg):
        try:
            self.velBoom    = msg.velocity[0]
            self.velArm     = msg.velocity[1]
            self.velBucket  = msg.velocity[1]
        except :
            print("ERROR-message-EPOS")  
  
    def cb_jacobian(self, msg):
        try:
            self.Jacobian    = msg
        except :
            print("ERROR-message-EPOS")  
    
    def cb_force(self, msg):
        try:
            self.force    = msg
        except :
            print("ERROR-message-EPOS")  
    
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


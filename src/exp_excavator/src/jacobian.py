#!/usr/bin/python
'''
Created on Nov 4, 2017

@author: fes
'''

import rospy
import math
from sensor_msgs.msg import JointState
import exp_excavator.msg as cmsg
import numpy as np

class JacobianCalc:
    def __init__(self):

        rospy.init_node('JacobianCalc', anonymous=True)

        self.rate = 100 #[Hz]

        self.L1 = 0.6
        self.L2 = 0.4
        self.L3 = 0.3

        self.joint_val = JointState()
        self.JacobianMsg = cmsg.Jacobian()

        self.sub_joints = rospy.Subscriber('/CalibratedJoints', JointState, self.cb_joints)
        self.pub_jacobian = rospy.Publisher('jacobian', cmsg.Jacobian,queue_size=10)
    
    def cb_joints(self, msg):
        self.joint_val = msg
    
    def Jacobian_update(self):
        r = rospy.Rate(self.rate)
        start_time = rospy.Time.now()
        rospy.sleep(3.2)
        while not rospy.is_shutdown(): 
           
            self.JacobianMsg = cmsg.Jacobian()
            t1    = self.joint_val.position[0]
            t12   = t1 + self.joint_val.position[1]
            t123  = t1 + t12 + self.joint_val.position[2]
            
            dxdq1 = 1.1;
            dxdq2 = 2.2; 
            dxdq3 = 3.3;
            
            self.JacobianMsg.dxdtboom  = -self.L1*math.sin(t1)  -self.L2*math.sin(t12)  -self.L3*math.sin(t123)
            self.JacobianMsg.dxdtarm  = -self.L2*math.sin(t12) -self.L3*math.sin(t123)          
            self.JacobianMsg.dxdtbucket  = -self.L3*math.sin(t123)
            self.JacobianMsg.dydtboom  = self.L1*math.cos(t1)  +self.L2*math.cos(t12)  +self.L3*math.cos(t123)
            self.JacobianMsg.dydtarm  = self.L2*math.cos(t12) +self.L3*math.cos(t123)          
            self.JacobianMsg.dydtbucket  = self.L3*math.cos(t123)  
            self.JacobianMsg.dphdtboom = 1.0; 
            self.JacobianMsg.dphdtarm = 1.0; 
            self.JacobianMsg.dphdtbucket = 1.0;                   
            self.pub_jacobian.publish(self.JacobianMsg)
            r.sleep()
             
            
if __name__ == '__main__':

    jc = JacobianCalc()
 
    try:
        jc.Jacobian_update()

    except rospy.ROSInterruptException:
        pass

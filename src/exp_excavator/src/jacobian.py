#!/usr/bin/python
'''
Created on Nov 4, 2017

@author: fes
'''

import rospy
import exp_excavator.msg as cmsg
from sensor_msgs.msg import Imu
from sensor_msgs.msg import JointState
import exp_excavator.msg as cmsg
import numpy as np

class JacobianCalc:
    def __init__(self):

        rospy.init_node('JacobianCalc', anonymous=True)

        self.rate = 100 #[Hz]

        self.joint_val = JointState()
        self.JacobianMsg = cmsg.Jacobian()

        self.sub_joints = rospy.Subscriber('joint_values', JointState, self.cb_joints)
        self.pub_jacobian = rospy.Publisher('jacobian', cmsg.Jacobian,queue_size=10)
    
    def cb_joints(self, msg):
        self.joint_val = msg
    
    def Jacobian_update(self):
        rospy.sleep(3.0)
        r = rospy.Rate(self.rate)
        start_time = rospy.Time.now()

        while not rospy.is_shutdown(): 
           
            self.JacobianMsg = cmsg.Jacobian()
            dxdq1 = 1.1;
            dxdq2 = 2.2; 
            dxdq3 = 3.3;
            
            self.JacobianMsg.Jacobian = [dxdq1,dxdq2,dxdq3]           
            self.pub_jacobian.publish(self.JacobianMsg)
            r.sleep()
             
            
if __name__ == '__main__':

    jc = JacobianCalc()
 
    try:
        jc.Jacobian_update()

    except rospy.ROSInterruptException:
        pass

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
from geometry_msgs.msg import WrenchStamped

class ForceTransform:
    def __init__(self):

        rospy.init_node('ForceTransform', anonymous=True)

        self.rate = 100 #[Hz]

        self.wrench_sensor = WrenchStamped()
        self.joint_val = JointState()
        self.ForceWorldMsg = cmsg.ForceWorld()

        self.sub_force_sensor  = rospy.Subscriber('/optoforce_0', WrenchStamped, self.cb_optoforce)
        self.sub_joints = rospy.Subscriber('/CalibratedJoints', JointState, self.cb_joints)
        self.pub_force_world = rospy.Publisher('SensorForceWorld', cmsg.ForceWorld,queue_size=10)
    
    def cb_optoforce(self, msg):
        self.wrench_sensor = msg

    def cb_joints(self, msg):
        self.joint_val = msg
    
    def force_update(self):
        r = rospy.Rate(self.rate)
        start_time = rospy.Time.now()
        rospy.sleep(3.2)
        while not rospy.is_shutdown(): 
            self.ForceWorldMsg = cmsg.ForceWorld()
            theta123    = self.joint_val.position[0] + self.joint_val.position[1] + self.joint_val.position[2] - 0.5*math.pi
            self.ForceWorldMsg.Fx = self.wrench_sensor.wrench.force.x*math.cos(theta123) - self.wrench_sensor.wrench.force.z*math.sin(theta123)
            self.ForceWorldMsg.Fz = self.wrench_sensor.wrench.force.x*math.sin(theta123) +self.wrench_sensor.wrench.force.z*math.cos(theta123)
            self.ForceWorldMsg.My = self.wrench_sensor.wrench.torque.y
            self.ForceWorldMsg.theta = theta123
            self.pub_force_world.publish(self.ForceWorldMsg)
            r.sleep()
             
            
if __name__ == '__main__':

    ft = ForceTransform()
 
    try:
        ft.force_update()

    except rospy.ROSInterruptException:
        pass

#!/usr/bin/python
'''
@author: fes
'''

import rospy
import exp_excavator.msg as cmsg
import sensor_msgs.msg as smsg
from geometry_msgs.msg import WrenchStamped
import numpy as np

class PowerBucket:

    def __init__(self):
        rospy.init_node('power_bucket', anonymous=True)
        
        self.rate = 100 #[Hz]

        self.powMsg = cmsg.PowerBucket()
        self.force  = cmsg.ForceWorld()    
        self.Jacobian  = cmsg.Jacobian()  
        self.velBoom    = 0.0
        self.velArm     = 0.0
        self.velBucket  = 0.0


         
        self.sub_joints   = rospy.Subscriber('/CalibratedJoints'
                                                ,smsg.JointState,self.cb_joints)
        self.sub_jacobian = rospy.Subscriber('/jacobian'
                                                ,cmsg.Jacobian,self.cb_jacobian)
        self.sub_force = rospy.Subscriber('/SensorForceWorld'
                                                ,cmsg.ForceWorld,self.cb_force)
        self.pub_Power      = rospy.Publisher('PowerBucket', cmsg.PowerBucket, queue_size=10)


    def cb_joints(self, msg):
        try:
            self.velBoom    = msg.velocity[0]
            self.velArm     = msg.velocity[1]
            self.velBucket  = msg.velocity[2]
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

            self.powMsg = cmsg.PowerBucket()
            
            self.powMsg.header.stamp = rospy.Time.now()
            
            self.powMsg.powerX    = self.force.Fx*(
                                    self.Jacobian.dxdtboom*self.velBoom +
                                    self.Jacobian.dxdtarm*self.velArm + 
                                    self.Jacobian.dxdtbucket*self.velBucket)
            self.powMsg.powerZ    = self.force.Fz*(
                                    self.Jacobian.dzdtboom*self.velBoom + 
                                    self.Jacobian.dzdtarm*self.velArm + 
                                    self.Jacobian.dzdtbucket*self.velBucket)
            self.powMsg.powerPhi  = self.force.My*(
                                    self.velBoom + self.velArm + self.velBucket)
            self.powMsg.powerTotal = self.powMsg.powerX + self.powMsg.powerZ
            self.pub_Power.publish(self.powMsg)
            r.sleep()
             
if __name__ == '__main__':
    pb = PowerBucket()
    try:
        pb.Power_update()
#        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")


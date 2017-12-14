#!/usr/bin/python
'''
@author: fes
'''

import rospy
import exp_excavator.msg as cmsg
import sensor_msgs.msg as smsg
from sensor_msgs.msg import JointState
import numpy as np
from std_msgs.msg import Float64
import numpy as np
class PowerGradient:

    def __init__(self):
        rospy.init_node('power_gradient', anonymous=True)
        
        self.rate = 100 #[Hz]
        self.buffer_length = 10
        self.powUsed = np.zeros(self.buffer_length)
        self.regressorUsed = np.zeros(self.buffer_length)
        
        self.gradientMsg = Float64()
        
        self.Torque_constant = 1.0
        
        self.sub_PowerMachine = rospy.Subscriber('/PowerMachine'
                                                ,cmsg.PowerMachine,self.cb_PowerMachine)
        
        #self.sub_PowerBucket = rospy.Subscriber('/PowerBucket'
        #                                        ,cmsg.PowerBucket,self.cb_PowerBucket)

        self.sub_joints = rospy.Subscriber('/CalibratedJoints', JointState, self.cb_joints)
        
        self.pub_Gradient      = rospy.Publisher('PowerGradient', Float64, queue_size=10)

    def cb_PowerMachine(self, msg):
        try:
            self.powUsed = np.roll(self.powUsed,1)
            self.powUsed[0] = msg.powerArm
        except :
            print("ERROR-message-EPOS")  
                
    def cb_joints(self, msg):
        try:
            self.regressorUsed = np.roll(self.regressorUsed,1)
            self.regressorUsed[0] = msg.position[0]
        except :
            print("ERROR-message-EPOS")  
        
    def Gradient_update(self):
        r = rospy.Rate(self.rate)
        rospy.sleep(4.0)
        start_time = rospy.Time.now()
        while not rospy.is_shutdown(): 
            A = np.vstack([self.regressorUsed,np.ones(self.buffer_length)]).T
            
            gradient, offset = np.linalg.lstsq(A,self.powUsed)[0]
            
            self.gradientMsg = gradient
            
            self.pub_Gradient.publish(self.gradientMsg)
            r.sleep()
             
if __name__ == '__main__':
    pg = PowerGradient()
    try:
        pg.Gradient_update()
    except KeyboardInterrupt:
        print("Shutting down")


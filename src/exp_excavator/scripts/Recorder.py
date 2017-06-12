#!/usr/bin/python
'''
@author: fes
'''

import rospy
from sensor_msgs.msg import Imu
from sensor_msgs.msg import JointState
from sensor_msgs.msg import Joy

class RosbagRecorder:
    def __init__(self):
        rospy.init_node('joy_msg_manager', anonymous=True)
        

        self.last_time = rospy.Time.now()
        self.RecStatus = 0
        
        self.sub_joy_right = rospy.Subscriber('joy_right', Joy,
                                              self.cb_joy_right)
#  start_time = rospy.Time.now()
#        d = rospy.Duration.from_sec(20)       
#        while ((rospy.Time.now() - start_time) < d):

    def cb_joy_right(self, joy):
            
            StartRecButton = joy.buttons[2]
            EndRecButton = joy.buttons[1]
            if (not self.RecStatus) and (StartRecButton

            
            
            
if __name__ == '__main__':
    rc = RosbagRecorder()
    
    try:              
        rospy.spin()

    except rospy.ROSInterruptException:
        pass

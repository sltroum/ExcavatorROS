#!/usr/bin/python
'''
Created on Feb 24, 2017

@author: yutak
'''

import rospy
import exp_excavator.msg as cmsg

class SpeedCommanderTeleop:
    def __init__(self):
        rospy.init_node('spd_com_teleop', anonymous=True)
        
        self.rate = 100 #[Hz]
        
        self.joy_val = cmsg.JointValues()
        self.sub_joy = rospy.Subscriber('joy_values', cmsg.JointValues,
                                        self.cb_joy)
        self.pub_spd_com = rospy.Publisher('spd_commands', cmsg.JointValues,
                                           queue_size=10)
    
    def cb_joy(self, msg):
        self.joy_val = msg
    
    def update(self):
        r = rospy.Rate(self.rate)
        
        # Main Loop
        while not rospy.is_shutdown():
            spd_com = cmsg.JointValues()
            spd_com.boom = self.joy_val.boom * 10.0
            spd_com.arm = self.joy_val.arm * 10.0
            spd_com.bucket = self.joy_val.bucket * 0.5
            spd_com.swing = self.joy_val.swing * 0.0
            
            self.pub_spd_com.publish(spd_com)
            
            r.sleep()
            
if __name__ == '__main__':
    sc = SpeedCommanderTeleop()
    
    try:
        sc.update()

    except rospy.ROSInterruptException:
        pass
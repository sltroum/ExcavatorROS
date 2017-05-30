#!/usr/bin/python
'''
Created on Feb 21, 2017

@author: yutak
'''

import rospy
import sensor_msgs.msg as smsg
import exp_excavator.msg as cmsg

class JoyMsgManager:
    def __init__(self):
        rospy.init_node('joy_msg_manager', anonymous=True)
        
        self.test = rospy.get_param('~test', False)
        
        self.joy_val_msg = cmsg.JointValues()        
        self.sub_joy_right = rospy.Subscriber('joy_right', smsg.Joy,
                                              self.cb_joy_right)
        self.sub_joy_left = rospy.Subscriber('joy_left', smsg.Joy,
                                             self.cb_joy_left)
        self.pub_joy_values = rospy.Publisher('joy_values', cmsg.JointValues,
                                              queue_size= 10)

    def cb_joy_right(self, joy):
            self.joy_val_msg.boom = joy.axes[1]
            self.joy_val_msg.bucket = joy.axes[0]
            
            if self.test:
                rospy.loginfo('Boom Joystick Value:%f' %self.joy_val_msg.boom)
                rospy.loginfo('Bucket Joystick Value:%f'
                              %self.joy_val_msg.bucket)
            
            self.pub_joy_values.publish(self.joy_val_msg)
            
    def cb_joy_left(self, joy):
            self.joy_val_msg.arm = joy.axes[1]
            self.joy_val_msg.swing = joy.axes[0]
            
            if self.test:
                rospy.loginfo('Arm Joystick Value:%f' %self.joy_val_msg.arm)
                rospy.loginfo('Swing Joystick Value:%f'
                              %self.joy_val_msg.swing)
            
            self.pub_joy_values.publish(self.joy_val_msg)
        
if __name__ == '__main__':
    jm = JoyMsgManager()
    
    try:              
        rospy.spin()

    except rospy.ROSInterruptException:
        pass
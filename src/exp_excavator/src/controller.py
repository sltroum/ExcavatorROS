#!/usr/bin/python
'''
Created on Feb 24, 2017

@author: fes
'''

import rospy
import exp_excavator.msg as cmsg
import sensor_msgs.msg as smsg

class SpeedCommanderTeleop:
    def __init__(self):
        rospy.init_node('controller', anonymous=True)
        
        self.rate = 100 #[Hz]

        self.joy_val = cmsg.JointValues()
        self.joint_states = smsg.JointState()
       
        self.joy_switch = []
        self.Kmode = False 
        self.time_switch_last = rospy.get_rostime()
        self.initial_position_boom = 0.0
        self.sub_joy_right = rospy.Subscriber('joy_right', smsg.Joy,
                                              self.cb_joy_right)
        self.sub_joy = rospy.Subscriber('joy_values', cmsg.JointValues,
                                        self.cb_joy)
        self.sub_joints_EPOS = rospy.Subscriber('/joint_states_EPOS'
                                                ,smsg.JointState,self.cb_state)
        self.pub_com = rospy.Publisher('commands', cmsg.JointCommand,
                                           queue_size=10)
    
    def cb_joy(self, msg):
        self.joy_val = msg
        
    def cb_joy_right(self, joy):
        self.joy_switch = joy.buttons[1]
        print(self.joint_states.position[0]*((50*72)/(-2.0*3.1415926)))
        if self.joy_switch == 1 and rospy.get_rostime()-self.time_switch_last>rospy.Duration(1, 0):
            self.initial_position_boom = self.joint_states.position[0]*((50*72)/(-2.0*3.1415926))
            print('switch mode controller FROM:')
            print(self.Kmode)
            self.Kmode = not self.Kmode
            print('to')
            print(self.Kmode)
            self.time_switch_last = rospy.get_rostime()
    
    def cb_state(self, msg):
        self.joint_states = msg
                   
    
    def update(self):
        r = rospy.Rate(self.rate)
        
        # Main Loop
        while not rospy.is_shutdown():
            controller_msg = cmsg.JointCommand()
            if self.Kmode == False:
                controller_msg.boomV   = self.joy_val.boom*200.0
                controller_msg.armV    = self.joy_val.arm*(-200.0)
                controller_msg.bucketV = self.joy_val.bucket*0.5
                controller_msg.swingV  = self.joy_val.swing*0.0
            else:
                controller_msg.boomP   =  self.initial_position_boom
                controller_msg.armI    = 500.0        
                controller_msg.bucketV = self.joy_val.bucket * 0.5
            
            controller_msg.Kmode = self.Kmode
            self.pub_com.publish(controller_msg)
            r.sleep()
            
if __name__ == '__main__':
    sc = SpeedCommanderTeleop()
    
    try:
        sc.update()

    except rospy.ROSInterruptException:
        pass
#!/usr/bin/python
'''
@author: fes
'''

import rospy
from sensor_msgs.msg import Image
from sensor_msgs.msg import CompressedImage
from std_msgs.msg import Float32

from cv_bridge import CvBridge, CvBridgeError


import numpy as np
import cv2
import video
from opencv_apps.msg import FlowArrayStamped
from opencv_apps.msg import Flow
from opencv_apps.msg import Point2D
from std_msgs.msg    import Float64
from common import anorm2, draw_str
from time import clock
from time import sleep 


class soil_est():
	def __init__(self):
		rospy.init_node('soil_estimation_node', anonymous=True)
		self.sub_Img = rospy.Subscriber('Crop_Flow', FlowArrayStamped, self.add_up)
		self.pub_est_x = rospy.Publisher('Sum_soil_x', Float64, queue_size=1)
		self.pub_est_y = rospy.Publisher('Sum_soil_y', Float64, queue_size=1)
		self.x_sum = 0.0
		self.y_sum = 0.0
	

	def add_up(self, msg):
		flow_msg = msg.flow
		f_v_x = 0
		f_v_y = 0
		v_x = []
 		v_y = []
	
        	try:
	    	    for i in range(len(flow_msg)):
		        v_x.append(float(flow_msg[i].velocity.x))
		        v_y.append(float(flow_msg[i].velocity.y))
	      	        f_v_x += float(flow_msg[i].velocity.x)
		        f_v_y += float(flow_msg[i].velocity.y)
	    	    self.x_sum += f_v_x
	    	    self.y_sum += f_v_y
            	    self.pub_est_x.publish(float(self.x_sum))
	    	    self.pub_est_y.publish(float(self.y_sum))
	    	    sleep(1)
        	except:
            	    print('Could not update')    


if __name__ == '__main__':
    c = soil_est()
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")
    cv2.destroyAllWindows()


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
from common import anorm2, draw_str
from time import clock
from time import sleep 



def image_crop():
	rospy.init_node('crop_image_node', anonymous=True)
	sub_Img = rospy.Subscriber('UBC_Image', Image, cb_Img)
	

def cb_Img(msg):
        try:
	    Img_cv = []
	    bridge = CvBridge()
            image_decoded = bridge.imgmsg_to_cv2(msg,desired_encoding="bgr8")	#decode ROS messages to opencv format
            Img_cv = cv2.transpose(image_decoded)
	    ymin = rospy.get_param('~ymin')
	    ymax = rospy.get_param('~ymax')
	    xmin = rospy.get_param('~xmin')
	    xmax = rospy.get_param('~xmax')
	    crop_img = Img_cv[ymin:ymax, xmin:xmax] # ymin ymax xmin xmax
	    cv2.imshow("cropped", crop_img)
	    cv2.waitKey(3)
	    pub_Img = rospy.Publisher('Crop_Image', Image, queue_size=1)
	    pub_Img.publish(bridge.cv2_to_imgmsg(crop_img, "bgr8"))

        except:
            print('Could not update')    


if __name__ == '__main__':
    image_crop()
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")
    cv2.destroyAllWindows()


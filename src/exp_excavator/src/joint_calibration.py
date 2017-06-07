#!/usr/bin/env python  
import rospy
import tf
import geometry_msgs.msg
import numpy as np
from std_msgs.msg import Float64
if __name__ == '__main__':
    rospy.init_node('joint_calibration')

    listener = tf.TransformListener()
    pub_x = rospy.Publisher('X_tf', Float64, queue_size=1)
    rate = rospy.Rate(10.0)
    while not rospy.is_shutdown():
        try:
            (trans,rot) = listener.lookupTransform('/camera1',
             '/tag_0', rospy.Time(0))
            rospy.loginfo("Distance between the camera and tag is = {0:f}".format(np.linalg.norm(trans)))
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue
            
        try:
            pub_x.publish(np.linalg.norm(trans))
        except CvBridgeError as e:
            print(e)


        rate.sleep()

#!/usr/bin/python
'''
@author: fes
'''

import rospy
from sensor_msgs.msg import JointState
from geometry_msgs.msg import WrenchStamped, Vector3
from std_msgs.msg import Float64

import numpy as np
from time import clock
from time import sleep 
from math import sqrt, cos, acos

class WeightEstimation:

    def __init__(self):

	rospy.init_node('weight_estimation_node', anonymous=True)
	
	self.posBoom   = 0.0
        self.posArm    = 0.0
        self.posBucket = 0.0
	self.force     = Vector3()
	

	self.nb_sensor = rospy.get_param('~nb_sensor', 1)
	starting_index = rospy.get_param("~starting_index", 0)
	
	sub_Cal   = rospy.Subscriber("cal_Data", JointState, self.cb_CalValue)
	subSensor = rospy.Subscriber("force_Data",WrenchStamped, self.cb_ForceValue)
	self.pub_weight_est = rospy.Publisher("Weight_est",Float64, queue_size=1)

    def cb_CalValue(self, msg):
        try:
            self.posBoom   = msg.position[0]
            self.posArm    = msg.position[1]
	    self.posBucket = msg.position[2]
        except :
            print("ERRORCalValue")

    def cb_ForceValue(self, msg):
	try:
            self.force = msg.wrench.force
	    #self.update()
        except :
            print("ERRORForceValue")


    def update(self):
	while not rospy.is_shutdown(): 
		V_z = np.array([0.0,0.0,1.0])
		F_t = np.array([self.force.x, self.force.y, self.force.z])
		if abs(float(np.linalg.norm(F_t)) - 0.0 ) < 0.01:
	    		theta_sens = 0.0
		else:
	    		theta_sens = acos(float(np.dot(V_z,F_t)/np.linalg.norm(F_t)))
		theta_coor = self.posBoom - self.posArm + self.posBucket
		weight_estimate = np.linalg.norm(F_t*cos(theta_sens - theta_coor))
		#print("c: " + str(theta_coor) + "  s: " + str(theta_sens) + "  w: " + str(weight_estimate) + "      ")
		self.pub_weight_est.publish(weight_estimate)

if __name__ == '__main__':
    W = WeightEstimation()
    try:
	W.update()
        #rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")



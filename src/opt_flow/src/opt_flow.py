#!/usr/bin/python
'''
@author: fes
'''

import rospy
#import opt_flow.msg as opt_msg
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

import numpy as np
import cv2
import video
from common import anorm2, draw_str
from time import clock
from time import sleep 
from sklearn.cluster import AffinityPropagation
from sklearn.cluster import KMeans
from sklearn.cluster import AgglomerativeClustering
from sklearn.cluster import DBSCAN
from sklearn.preprocessing import StandardScaler
import matplotlib.pyplot as plt 
from scipy.spatial.distance import euclidean
import shapely.geometry as geometry
from shapely.geometry import Polygon
from descartes import PolygonPatch
from scipy.spatial import ConvexHull
from sklearn import metrics
import colorsys
from pandas import ewma
from scipy import interpolate


class LK_tracker:
    lk_params = dict( winSize  = (50, 50),maxLevel = 2,criteria = (cv2.TERM_CRITERIA_EPS | cv2.TERM_CRITERIA_COUNT, 10, 0.03))    
    feature_params = dict( maxCorners = 3,qualityLevel = 0.1,minDistance = 7,blockSize = 7 )
    def __init__(self):
        rospy.init_node('opt_flow_node', anonymous=True)
        self.rate = 25 #[Hz]
        self.Img = Image()
        self.Img_cv = []
        self.bridge = CvBridge()
        self.sub_Img = rospy.Subscriber('UBC_Image', Image, self.cb_Img)
        self.pub_Img = rospy.Publisher('Flow_Image', Image, queue_size=1)
        self.track_len = 4
        self.detect_interval = 5
        self.tracks = []
        self.frame_idx = 0

    def cb_Img(self, msg):
        try:
            self.Img_cv = self.bridge.imgmsg_to_cv2(msg)
        except CvBridgeError as e:
            print(e)      
        try:
            self.flow_update()
        except CvBridgeError as e:
            print(e)      

    def flow_update(self):
        frame_gray = cv2.cvtColor(self.Img_cv,cv2.COLOR_BGR2GRAY)
        vis = self.Img_cv.copy()		
        if len(self.tracks) > 0:
            img0, img1 = self.prev_gray, frame_gray
            p0 = np.float32([tr[-1] for tr in self.tracks]).reshape(-1, 1, 2)
            p1, st, err = cv2.calcOpticalFlowPyrLK(img0, img1, p0, None, **self.lk_params)
            p0r, st, err = cv2.calcOpticalFlowPyrLK(img1, img0, p1, None, **self.lk_params)
            d = abs(p0-p0r).reshape(-1, 2).max(-1)
            good = d < 2
            new_tracks = []
            XX = []
            XY = []

            for tr, (x, y),(x_old, y_old), good_flag in zip(self.tracks, p1.reshape(-1,2),p0.reshape(-1, 2), good):
                if not good_flag:
                    continue
                tr.append((x, y))
                if len(tr) > self.track_len:
                    del tr[0]
                new_tracks.append(tr)
                XX.append(tuple(np.concatenate((np.subtract((x,y),(x_old, y_old)),[x,y]),axis=0)))
                XY.append((x,y))
            self.tracks = new_tracks
            XX_array=np.array(XX)
            XY_array=np.array(XY)

#		XX_norm = StandardScaler().fit_transform(XX_array)

        if self.frame_idx % self.detect_interval == 0:
            mask = np.zeros_like(frame_gray)
            mask[:] = 255
            for x, y in [np.int32(tr[-1]) for tr in self.tracks]:
                cv2.circle(mask, (x, y), 5, 0, -1)
            p = cv2.goodFeaturesToTrack(frame_gray, mask = mask, **self.feature_params)
            if p is not None:
                for x, y in np.float32(p).reshape(-1, 2):
                    self.tracks.append([(x, y)])

        self.frame_idx += 1
        self.prev_gray = frame_gray
		
        try:
            self.pub_Img.publish(self.bridge.cv2_to_imgmsg(vis, "bgr8"))
        except CvBridgeError as e:
            print(e)

    def update(self):
        r = rospy.Rate(self.rate)
        
        # Main Loop
        while not rospy.is_shutdown():
            r.sleep()
            
if __name__ == '__main__':
    LK = LK_tracker()
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")
    cv2.destroyAllWindows()
#    try:
#        LK.update()
#  except rospy.ROSInterruptException:
#   pass

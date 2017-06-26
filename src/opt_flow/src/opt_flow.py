#!/usr/bin/python
'''
@author: fes
'''

import rospy
#import opt_flow.msg as opt_msg
from sensor_msgs.msg import Image
from sensor_msgs.msg import CompressedImage

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
    lk_params = dict( winSize  = (50, 50),maxLevel = 5,criteria = (cv2.TERM_CRITERIA_EPS | cv2.TERM_CRITERIA_COUNT, 10, 0.03))    
    feature_params = dict( maxCorners = 300, qualityLevel = 0.05 , minDistance = 20,blockSize = 7 )
    def __init__(self):
        rospy.init_node('opt_flow_node', anonymous=True)
        self.rate = 25 #[Hz]
        self.Img = Image()
        self.w = []
        self.h = []
        self.Img_cv = []
        self.bridge = CvBridge()
        self.sub_Img = rospy.Subscriber('UBC_Image', Image, self.cb_Img)
#        self.sub_Img = rospy.Subscriber('UBC_Image', CompressedImage, self.cb_CompImg)
        self.pub_Img = rospy.Publisher('Flow_Image', Image, queue_size=1)
        self.track_len = 4
        self.detect_interval = 5
        self.tracks = []
        self.frame_idx = 0

    def cb_Img(self, msg):
        try:
            image_decoded = self.bridge.imgmsg_to_cv2(msg,desired_encoding="bgr8")
            self.Img_cv = cv2.transpose(image_decoded)
            self.h, self.w = self.Img_cv.shape[:2]
            try:
                self.flow_update()
            except:
                print('Could not update1')  
        except:
            print('Could not update2')     
            
    def cb_CompImg(self, msg):
        try:
            np_arr = np.fromstring(msg.data, np.uint8)
            image_decoded = cv2.imdecode(np_arr, cv2.CV_LOAD_IMAGE_COLOR)
            self.Img_cv = cv2.transpose(image_decoded)
#        self.Img_cv = self.bridge.imgmsg_to_cv2(msg,desired_encoding="bgr8")
#        print(self.Img_cv)
            try:
                self.flow_update()
            except:
                print('Could not update1')  
        except:
            print('Could not update2')   
    

    def flow_update(self):
        frame_gray = self.Img_cv[:]
        frame_gray = cv2.cvtColor(self.Img_cv,cv2.COLOR_BGR2GRAY)
        vis = self.Img_cv.copy()
#        print(len(self.tracks))		
        if len(self.tracks) > 0:
            img0, img1 = self.prev_gray, frame_gray
            p0 = np.float32([tr[-1] for tr in self.tracks]).reshape(-1, 1, 2)
            p1, st, err = cv2.calcOpticalFlowPyrLK(img0, img1, p0, None, **self.lk_params)
            p0r, st, err = cv2.calcOpticalFlowPyrLK(img1, img0, p1, None, **self.lk_params)
            d = abs(p0-p0r).reshape(-1, 2).max(-1)
            good = d < 1
            new_tracks = []
            XX = []
            XY = []

            for tr, (x, y),(x_old, y_old), good_flag in zip(self.tracks, p1.reshape(-1,2),p0.reshape(-1, 2), good):
                if not good_flag:
                    continue
                if y<300:
                    continue     
                
                tr.append((x, y))
                if len(tr) > self.track_len:
                    del tr[0]
                new_tracks.append(tr)
                
                XX.append(tuple(np.concatenate((np.subtract((x,y),(x_old, y_old)),[x,y]),axis=0)))
#                XX.append(tuple(np.subtract((x,y),(x_old, y_old))))
                XY.append((x,y))
            self.tracks = new_tracks
            XX_array=np.array(XX)
            XY_array=np.array(XY)
#            XX_norm = StandardScaler().fit_transform(XX_array)
            XX_norm = XX_array[:]

            print(np.divide(np.mean(XX_norm[:,2:3]),np.mean(XX_norm[:,0:1])))
            
            XX_norm[:,0:2] *= 350.0
            print([np.std(XX_norm[:,0]),np.std(XX_norm[:,1]),np.std(XX_norm[:,2]),np.std(XX_norm[:,3])])
 #           XX_norm[:,2:3] *= 2*(0.5)
#            cv2.circle(vis, (1, 1), 200, 0, -1)
############################################################################ 
####                     Perform Clustering                              ### 

            dbscan = DBSCAN(eps=120, min_samples=30,).fit(XX_norm)
            labels = dbscan.labels_
            n_clusters_ = len(set(labels)) - (1 if -1 in labels else 0)
            
            centroids = []
            if n_clusters_>0:
                for l in range(1+n_clusters_) :
                    XY_array_l = XY_array[np.where(labels==l)]
                    centroids.append(np.mean(XY_array_l,axis=0))
                
            HSV_tuples = [(xc*1.0/n_clusters_, 1, 1) for xc in range(n_clusters_)]
            RGB_tuples = np.multiply(map(lambda xc: colorsys.hsv_to_rgb(*xc), HSV_tuples),255)


#                print('Estimated number of clusters: %d' % n_clusters_)
#            print(n_clusters_)
            
            all_tracks = new_tracks[:]
            max_L_k =  np.array([])   
############################################################################ 
####                        Plot points and clusters                     ###
            
            
            class_members = labels == -1
            points_k  = np.array([i[-1] for indx,i in enumerate(all_tracks) if class_members[indx]])
            draw_tr_k = [i    for indx,i in enumerate(all_tracks) if class_members[indx]]
            cv2.polylines(vis, [np.int32(tr) for tr in draw_tr_k], False, (255,255,255))

            TR = []
            
            for tr in draw_tr_k:
                cv2.circle(vis, tuple(np.int32(tr[-1])), 2, (255, 255 , 255), -1)

                TR.append(tr[-1])
                
            for k, col in zip(range(n_clusters_),RGB_tuples):
                class_members = labels == k

                points_k  = np.array([i[-1] for indx,i in enumerate(all_tracks) if class_members[indx]])
                draw_tr_k = [i    for indx,i in enumerate(all_tracks) if class_members[indx]]
                
                hull = ConvexHull(points_k)
                point_collection = geometry.MultiPoint(points_k)
                convex_hull_polygon = point_collection.convex_hull
                convex_hull_polygon.centroid
                centre_bounds =  Polygon(((210, 170), (210, 380), (450, 380), (450, 170)))
#                    cv2.rectangle(vis, (230, 170),(430, 380), (0,255,0))
        
#                    print('x %d' % convex_hull_polygon.centroid.bounds[0])
#                    print('y %d' % convex_hull_polygon.centroid.bounds[1])
               
                if centre_bounds.contains(convex_hull_polygon.centroid):
                    max_L_k=np.append(max_L_k,np.min(points_k,axis=0)) 

                cv2.polylines(vis, [np.int32(tr) for tr in draw_tr_k], False, col)
                cv2.circle(vis, tuple(np.int32(centroids[k])), 10, tuple(col), -1)

                
#                boundary_k = np.array([points_k[hull.vertices,0], points_k[hull.vertices,1]])
#                boundary_k = np.transpose(boundary_k)
#                boundary_k = boundary_k.reshape((-1,1,2))
#                cv2.polylines(vis,np.int32([boundary_k]),True,tuple(col))

                TR = []
                for tr in draw_tr_k:
                    cv2.circle(vis, tuple(np.int32(tr[-1])), 2, tuple(col), -1)
                    TR.append(tr[-1])
            
############################################################################ 
####                        Add new features to track                    ###
        if self.frame_idx % self.detect_interval == 0:
            mask = np.zeros_like(frame_gray)
            mask[:] = 255
            for x, y in [np.int32(tr[-1]) for tr in self.tracks]:
                cv2.circle(mask, (x, y), 5, 0, -1)
                
            cv2.rectangle(mask,(0,0),(self.w,300),0,-1)
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

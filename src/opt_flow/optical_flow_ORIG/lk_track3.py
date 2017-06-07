# -*- coding: utf-8 -*-
"""
Created on Wed May 17 12:12:23 2017

@author: Filippos
"""

# -*- coding: utf-8 -*-
"""
Created on Tue Feb 07 11:32:26 2017

@author: Filippos
"""

'''
Lucas-Kanade tracker
====================
Lucas-Kanade sparse optical flow demo. Uses goodFeaturesToTrack
for track initialization and back-tracking for match verification
between frames.
Usage
-----
lk_track.py [<video_source>]
Keys
----
ESC - exit
'''

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
#import kinematics as kin 

#m_per_pixel = 0.14/215
    #Pixel distance from curring surface to top of frame    
def holt_winters_second_order_ewma( x, span, beta ):
    N = x.size
    alpha = 2.0 / ( 1 + span )
    s = np.zeros(( N, ))
    b = np.zeros(( N, ))
    s[0] = x[0]
    for i in range( 1, N ):
        s[i] = alpha * x[i] + ( 1 - alpha )*( s[i-1] + b[i-1] )
        b[i] = beta * ( s[i] - s[i-1] ) + ( 1 - beta ) * b[i-1]
    return s

class LK_TRACKER:
    
    lk_params = dict( winSize  = (50, 50), 
                  maxLevel = 2, 
                  criteria = (cv2.TERM_CRITERIA_EPS | cv2.TERM_CRITERIA_COUNT, 10, 0.03))    

    feature_params = dict( maxCorners = 300, 
                       qualityLevel = 0.1,
                       minDistance = 7,
                       blockSize = 7 )
   
    def __init__(self, video_src,start_frame,end_frame):
        self.track_len = 4
        self.detect_interval = 5
        self.tracks = []
        self.cam = cv2.VideoCapture(video_src)
        self.cam = video.create_capture(0)
        self.cam.set(1,start_frame)
        self.frame_idx = 0
        self.start_frame =start_frame
        self.end_frame = end_frame

    def run(self):
        L_edge      = 335 
        L_last      = 300
        L_array     = []
        video_writer = cv2.VideoWriter('LK_out4.avi', -1, 10, (640L,480L))

        for tt in range(self.start_frame,self.end_frame):
            ret, frame = self.cam.read()
            frame_gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
            vis = frame.copy()
            a=0
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

                for tr, (x, y),(x_old, y_old), good_flag in zip(self.tracks, p1.reshape(-1, 2),p0.reshape(-1, 2), good):
                    if not good_flag:
                        continue
                    tr.append((x, y))
                    if len(tr) > self.track_len:
                        del tr[0]
                    new_tracks.append(tr)
                    XX.append(tuple(np.concatenate((np.subtract((x,y),(x_old, y_old)),[x,y]),axis=0)))
#                    XX.append(tuple(np.subtract((x,y),(x_old, y_old))))
#                    XX.append(tuple([x,y]))
                    XY.append((x,y))

                self.tracks = new_tracks
                XX_array=np.array(XX)
                XY_array=np.array(XY)

                XX_norm = StandardScaler().fit_transform(XX_array)
                hull = ConvexHull(XY)

#               ############################################################################# 
#               #Perform Clustering

                dbscan = DBSCAN(eps=0.5, min_samples=50,).fit(XX_norm)
                labels = dbscan.labels_
                n_clusters_ = len(set(labels)) - (1 if -1 in labels else 0)
                
                centroids = []
                if n_clusters_>0:
                    for l in range(1+n_clusters_) :
                        XY_array_l = XY_array[np.where(labels==l)]
                        centroids.append(np.mean(XY_array_l,axis=0))
            
                HSV_tuples = [(xc*1.0/n_clusters_, 1, 1) for xc in range(n_clusters_)]
                RGB_tuples = np.multiply(map(lambda xc: colorsys.hsv_to_rgb(*xc), HSV_tuples),360)
                RGB_tuples = RGB_tuples[1:] + RGB_tuples[:1]
#                print('Estimated number of clusters: %d' % n_clusters_)
                
                all_tracks = new_tracks[:]
                

                
                max_L_k =  np.array([])   
########  Plot unclustered  points
                class_members = labels == -1
                points_k  = np.array([i[-1] for indx,i in enumerate(all_tracks) if class_members[indx]])
                draw_tr_k = [i    for indx,i in enumerate(all_tracks) if class_members[indx]]
                cv2.polylines(vis, [np.int32(tr) for tr in draw_tr_k], False, (255,255,255))
#                cv2.polylines(vis, [np.int32(tr) for t1r in draw_tr_k], False, (255, 0 , 0 ))

                TR = []
                
                for tr in draw_tr_k:
                    cv2.circle(vis, tuple(np.int32(tr[-1])), 2, (255,255,255), -1)
                    cv2.circle(vis, tuple(np.int32(tr[-1])), 2, (255, 0 , 0 ), -1)

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
                        col =(255,0,0)
                        print('YES')
                        a=1

                    cv2.polylines(vis, [np.int32(tr) for tr in draw_tr_k], False, col)
                    cv2.circle(vis, tuple(np.int32(centroids[k])), 10, tuple(col), -1)
                    
#                    cv2.polylines(vis, [np.int32(tr) for tr in draw_tr_k], False, (255, 0 , 0 ))
                    
                    
                    
                    boundary_k = np.array([points_k[hull.vertices,0], points_k[hull.vertices,1]])
                    boundary_k = np.transpose(boundary_k)
                    boundary_k = boundary_k.reshape((-1,1,2))
                    cv2.polylines(vis,np.int32([boundary_k]),True,tuple(col))
#                    cv2.polylines(vis,np.int32([boundary_k]),True,(255, 0 , 0 ))

                    TR = []
                    for tr in draw_tr_k:
                        cv2.circle(vis, tuple(np.int32(tr[-1])), 2, tuple(col), -1)
#                        cv2.circle(vis, tuple(np.int32(tr[-1])), 2, (255,0,0), -1)

                        TR.append(tr[-1])
                
                if max_L_k.any():
                    L_array = np.append(L_array, np.min(np.reshape(max_L_k,[-1,2])[:,1]))
                    L_last  = np.min(np.reshape(max_L_k,[-1,2])[:,1])
                else:
                    L_array = np.append(L_array, L_last)

                fr_num  = 180
                if tt == fr_num:
                    cv2.imwrite("frame%d.jpg" % fr_num,vis)
                
#                draw_str(vis, (20, 20), 'track count: %d' % len(self.tracks))
                video_writer.write(vis)

            ##############################################################################

            if self.frame_idx % self.detect_interval == 0:
                mask = np.zeros_like(frame_gray)
                mask[:] = 255
                for x, y in [np.int32(tr[-1]) for tr in self.tracks]:
                    cv2.circle(mask, (x, y), 5, 0, -1)
                p = cv2.goodFeaturesToTrack(frame_gray, mask = mask, **self.feature_params)
                if p is not None:
                    for x, y in np.float32(p).reshape(-1, 2):
                        self.tracks.append([(x, y)])
            
#            cv2.circle(vis, tuple(np.int32(np.array([220,L_edge]))), 5, (0,255,0), -1)
#            cv2.circle(vis, tuple(np.int32(np.array([435,L_edge]))), 5, (0,255,0), -1)

            
            self.frame_idx += 1
            self.prev_gray = frame_gray
            cv2.imshow('lk_track', vis)
            cv2.moveWindow('lk_track', 0, 0)
            if a==1:
                print('YES2')
                print('YES2')

            ch = 0xFF & cv2.waitKey(1)
            if ch == 27:
                break
        
#        L_calib = 335-L_array
#        L_ewma  = ewma(L_calib,com=5)
#        L_HW    = holt_winters_second_order_ewma(L_calib, 5, 0.5 )
#        cv2.destroyAllWindows()

        cv2.destroyAllWindows() 	
        return L_array
    
#
#def hsv2rgb(h,s,v):
#    return tuple(int(i * 255) for i in colorsys.hsv_to_rgb(h,s,v))

def main():
    import sys
    try: video_src = sys.argv[1]
    except: video_src = 'output.avi'

    print __doc__
    L = LK_TRACKER(video_src).run()
    cv2.destroyAllWindows() 	
    return L		

if __name__ == '__main__':
    m_per_pixel = 0.14/215
    gamma = 1500
    
    start_frame = 1
    end_frame   = 210
    

        
#    L_ewma  = ewma(L,com=5)
#    L_HW    = holt_winters_second_order_ewma(L, 5, 0.4)
#    M       = 0.5*gamma*0.05*L_cal*215*m_per_pixel**2
#    M_HW    = holt_winters_second_order_ewma(M, 5, 0.4)

#    Test_log = (("20161129-154534",[6,8]),("20161130-115222",[5,10]),("20161130-115001",[6,12]))
 
#    ii=1
    
#    test_info = Test_log[ii]
#    test_name = test_info[0]
#    test_time = test_info[1]

#    p1 = np.load("C:\Users\Filippos\OneDrive - Massachusetts Institute of Technology\MIT\KomatsuProject\Python\RawData\Plate"+test_name+"\pot_1.npy")
#    p2 = np.load("C:\Users\Filippos\OneDrive - Massachusetts Institute of Technology\MIT\KomatsuProject\Python\RawData\Plate"+test_name+"\pot_2.npy")
#    p3 = np.load("C:\Users\Filippos\OneDrive - Massachusetts Institute of Technology\MIT\KomatsuProject\Python\RawData\Plate"+test_name+"\pot_3.npy")
#   tP = np.load("C:\Users\Filippos\OneDrive - Massachusetts Institute of Technology\MIT\KomatsuProject\Python\RawData\Plate"+test_name+"\pot_time.npy")
#   tF = np.load("C:\Users\Filippos\OneDrive - Massachusetts Institute of Technology\MIT\KomatsuProject\Python\RawData\Plate"+test_name+"\\force_time.npy")
#   tV = np.load("C:\Users\Filippos\OneDrive - Massachusetts Institute of Technology\MIT\KomatsuProject\Python\RawData\Plate"+test_name+"\\vid_time.npy")
#    video_src = "C:\Users\Filippos\OneDrive - Massachusetts Institute of Technology\MIT\KomatsuProject\Python\RawData\Plate"+test_name+"\output.avi"

#    tP = tP[1:]-tF[1]
 #   tV = tV[1:]-tF[1]
 #   tF = tF[1:]-tF[1]
#    start_frame         = min([j for (i,j) in zip(tV,range(len(tV))) if i > test_time[0]])
#    end_frame           = min([j for (i,j) in zip(tV,range(len(tV))) if i > test_time[1]])  
    video_src ='output.avi'
    Track_obj = LK_TRACKER(video_src, start_frame , end_frame )
    L = Track_obj.run()
    


    p1 = p1[1:]
    p2 = p2[1:]
    p3 = p3[1:]
    
    e1 =  2.09
    e3 =  2.02
    eS = 10.75

    a1=90./(894.-497.)
    b1=90 - a1*894

    a2=90./(721.-330.)
    b2=90. + a2*330.
        
    a3 =0.24
    b3 =90. + a3*688.
        
    p1= np.pi*( a1*p1   +b1  +e1)/180.
    p2= np.pi*(-a2*p2   +b2  -e1)/180.
    p3= np.pi*(-a3*p3   +b3  +e3)/180.   
    p1_int = interpolate.interp1d(tP,p1)
    p2_int = interpolate.interp1d(tP,p2)
    p3_int = interpolate.interp1d(tP,p3)
    
    V_range             = range( start_frame , end_frame )
    H           = []
    x_end       = []
    z_end       = []
    for j in V_range:
        x3,z3,phi = kin.forward_kin_arm(p1_int(tV[j]),p2_int(tV[j]),p3_int(tV[j]))  
        H                       = np.append(H,-z3-0.28)
        x_end     = np.append(x_end,x3)
        z_end     = np.append(z_end,z3)
    
    
    L_cal   = (335-L)*m_per_pixel
#    M = 0.5*gamma*0.05*np.multiply(L_cal,H[1:])
    M = 0.5*gamma*0.1*np.multiply(L_cal,0.05)
    M_HW    = holt_winters_second_order_ewma(M, 5, 0.4)

    
    
    fig1 = plt.figure()
    ax1  = fig1.add_subplot(111)
    ax1.set_title('Estimated Added Mass ')
    ax1.set_xlabel('Time (s)')
    ax1.set_ylabel('Added Mass (kg)')
    ax1.plot(
            np.array(V_range[1:]),M)
#    ax1.plot(0.03*np.array(V_range[1:]),M_HW)
    ax1.axis([4.15, 6.3, 0, .7])
    plt.show()  
    
    

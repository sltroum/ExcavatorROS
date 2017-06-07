# -*- coding: utf-8 -*-
"""
Created on Tue Oct 25 12:38:28 2016

@author: Filippos
"""
import numpy as np
import cv2

def colour_mask(img,c1_lower,c1_upper,c2_lower,c2_upper):
    img_blur=cv2.GaussianBlur(img, (3, 3), 0) 
        # Switch image from BGR colorspace to HSV
    img_hsv = cv2.cvtColor(img_blur, cv2.COLOR_BGR2HSV)
    mask1   = cv2.inRange(img_hsv, c1_lower, c1_upper)
    mask2   = cv2.inRange(img_hsv, c2_lower, c2_upper)
    mask    = cv2.bitwise_or(mask1,mask2)
    
    kernel1 = np.ones((5,5),np.uint8)
    kernel2 = np.ones((5,5),np.uint8)

    mask    = cv2.erode(mask, kernel1, iterations=2)
    mask    = cv2.dilate(mask, kernel2, iterations=2)
    mask    = cv2.bitwise_and(img_hsv, img_hsv,mask = mask)
    mask    = cv2.cvtColor(mask, cv2.COLOR_HSV2BGR)
#    mask    = cv2.morphologyEx(mask, cv2.MORPH_OPEN, None)
#        cv2.imshow("images1", np.hstack([img, output]))
    return mask
        
if __name__ == '__main__':
    c1_lower= (0, 0,0)
    c1_upper= (180, 255, 10) 
    c2_lower= (0, 0, 0) 
    c2_upper= (180, 255, 50)         
    img = cv2.imread('crayon.jpg')
    masked = colour_mask(img,c1_lower,c1_upper,c2_lower,c2_upper)
    cv2.imshow("images1", np.hstack([img, masked]))
    cv2.waitKey(0)
    
#    
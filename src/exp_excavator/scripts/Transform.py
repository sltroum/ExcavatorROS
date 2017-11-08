# -*- coding: utf-8 -*-
"""
Created on Fri Nov 04 11:32:29 2016

@author: Filippos
"""
import numpy as np

O_global = np.array([0,0,0])

def endForce_bucket(F_s,M_s, theta1,theta2,theta3):
    F_s1=F_s
    F_s = F_s[np.newaxis]
    M_s = M_s[np.newaxis]
    F_s = F_s.T
    M_s = M_s.T

    eps= 25*np.pi/180
    L1 = 0.695
    L2 = 0.370
    L3 = 0.35
    Ls = 0.15
    
    Ox_e     = L1*np.sin(theta1)+ L2*np.sin(theta1+theta2)+L3*np.sin(theta1+theta2+theta3+eps)
    Oy_e     = O_global[1]
    Oz_e     = L1*np.cos(theta1)+ L2*np.cos(theta1+theta2)+L3*np.cos(theta1+theta2+theta3+eps)
    O_e      = np.array([Ox_e,Oy_e,Oz_e])
    
    Ox_s     = L1*np.sin(theta1)+ L2*np.sin(theta1+theta2)+Ls*np.sin(theta1+theta2+theta3)
    Oy_s     = O_global[1]
    Oz_s     = L1*np.cos(theta1)+ L2*np.cos(theta1+theta2)+Ls*np.cos(theta1+theta2+theta3)
    O_s      = np.array([Ox_s,Oy_s,Oz_s])
    
    theta    = theta1+theta2+theta3
    R        = np.matrix([[np.cos(theta) , 0, -np.sin(theta)],[0,1,0],[np.sin(theta) , 0, np.cos(theta)]])
    
    r_es     = +O_e - O_s
#    r_es = r_es[np.newaxis]
#    r_es = r_es.T
    
    F_e      = R*F_s
    cross_prod = np.cross(r_es, F_s1)
    cross_prod = cross_prod[np.newaxis]
    cross_prod = cross_prod.T
    
    M_e      = R*M_s + cross_prod
#    print M_e
   
    return F_e,M_e
    
def endForce_plate(F_s,M_s, theta1,theta2,theta3):
    F_s1=F_s
    F_s = F_s[np.newaxis]
    M_s = M_s[np.newaxis]
    F_s = F_s.T
    M_s = M_s.T

    e3 = np.pi*2.16/180
    eS = np.pi*20.17/180
#    eS = np.pi*35.75/180
    L1 = 0.689
    L2 = 0.370
    L3 = 0.2910
#    Ls = 0.083
    Ls = 0.093
    
    Ox_e     = L1*np.sin(theta1)+ L2*np.sin(theta1+theta2)+L3*np.sin(theta1+theta2+theta3)
    Oy_e     = O_global[1]
    Oz_e     = L1*np.cos(theta1)+ L2*np.cos(theta1+theta2)+L3*np.cos(theta1+theta2+theta3)
    O_e      = np.array([Ox_e,Oy_e,Oz_e])
    
    Ox_s     = L1*np.sin(theta1)+ L2*np.sin(theta1+theta2)+Ls*np.sin(theta1+theta2+theta3-(eS+e3))
    Oy_s     = O_global[1]
    Oz_s     = L1*np.cos(theta1)+ L2*np.cos(theta1+theta2)+Ls*np.cos(theta1+theta2+theta3-(eS+e3))
    O_s      = np.array([Ox_s,Oy_s,Oz_s])
    
    theta    = theta1+theta2+theta3-(eS+e3)
#    print theta
    R        = np.matrix([[np.cos(theta) ,  0, np.sin(theta)],
                          [0             ,  1,              0],
                          [-np.sin(theta) ,  0,  np.cos(theta)]])
#    print R
    r_es     = O_e - O_s
#    r_es = r_es[np.newaxis]
#    r_es = r_es.T
    
    F_e      = R*F_s
    cross_prod = np.cross(r_es, F_s1)
    cross_prod = cross_prod[np.newaxis]
    cross_prod = cross_prod.T
    
    M_e      = R*M_s + cross_prod
#    print M_e
   
    return F_e,M_e
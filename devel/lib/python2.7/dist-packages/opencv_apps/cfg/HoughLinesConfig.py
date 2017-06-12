## *********************************************************
## 
## File autogenerated for the hough_lines package 
## by the dynamic_reconfigure package.
## Please do not edit.
## 
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 293, 'description': 'Indicates that the camera_info topic should be subscribed to to get the default input_frame_id. Otherwise the frame from the image message will be used.', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'use_camera_info', 'edit_method': '', 'default': False, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 293, 'description': 'Hough Line Methods', 'max': 1, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'hough_type', 'edit_method': "{'enum_description': 'An enum for Hough Transform Mehtods', 'enum': [{'srcline': 42, 'description': 'Standard Hough Line', 'srcfile': '/home/filippos/ros_ws/src/opencv_apps/cfg/HoughLines.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Standard_Hough_Transform'}, {'srcline': 43, 'description': 'Probabilistic Hough Line', 'srcfile': '/home/filippos/ros_ws/src/opencv_apps/cfg/HoughLines.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'Probabilistic_Hough_Transform'}]}", 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 293, 'description': 'Hough Line Threshold', 'max': 150, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'threshold', 'edit_method': '', 'default': 150, 'level': 150, 'min': 50, 'type': 'int'}, {'srcline': 293, 'description': 'The resolution of the parameter r in pixels. We use 1 pixel.', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'rho', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 1.0, 'type': 'double'}, {'srcline': 293, 'description': 'The resolution of the parameter \theta in radians. We use 1 degree (CV_PI/180)', 'max': 90.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'theta', 'edit_method': '', 'default': 1.0, 'level': 0, 'min': 1.0, 'type': 'double'}, {'srcline': 293, 'description': 'The minimum number of points that can form a line. Lines with less than this number of points are disregarded.', 'max': 500.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'minLineLength', 'edit_method': '', 'default': 30.0, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 293, 'description': 'The maximum gap between two points to be considered in the same line.', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/indigo/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'maxLineGap', 'edit_method': '', 'default': 10.0, 'level': 0, 'min': 0.0, 'type': 'double'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])    
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

HoughLines_Standard_Hough_Transform = 0
HoughLines_Probabilistic_Hough_Transform = 1
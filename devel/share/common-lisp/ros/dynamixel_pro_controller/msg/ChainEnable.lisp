; Auto-generated. Do not edit!


(cl:in-package dynamixel_pro_controller-msg)


;//! \htmlinclude ChainEnable.msg.html

(cl:defclass <ChainEnable> (roslisp-msg-protocol:ros-message)
  ((list
    :reader list
    :initarg :list
    :type (cl:vector dynamixel_pro_controller-msg:JointEnable)
   :initform (cl:make-array 0 :element-type 'dynamixel_pro_controller-msg:JointEnable :initial-element (cl:make-instance 'dynamixel_pro_controller-msg:JointEnable))))
)

(cl:defclass ChainEnable (<ChainEnable>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChainEnable>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChainEnable)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_pro_controller-msg:<ChainEnable> is deprecated: use dynamixel_pro_controller-msg:ChainEnable instead.")))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <ChainEnable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_pro_controller-msg:list-val is deprecated.  Use dynamixel_pro_controller-msg:list instead.")
  (list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChainEnable>) ostream)
  "Serializes a message object of type '<ChainEnable>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChainEnable>) istream)
  "Deserializes a message object of type '<ChainEnable>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dynamixel_pro_controller-msg:JointEnable))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChainEnable>)))
  "Returns string type for a message object of type '<ChainEnable>"
  "dynamixel_pro_controller/ChainEnable")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChainEnable)))
  "Returns string type for a message object of type 'ChainEnable"
  "dynamixel_pro_controller/ChainEnable")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChainEnable>)))
  "Returns md5sum for a message object of type '<ChainEnable>"
  "11398f4d863b015da8e3b093b8350d42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChainEnable)))
  "Returns md5sum for a message object of type 'ChainEnable"
  "11398f4d863b015da8e3b093b8350d42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChainEnable>)))
  "Returns full string definition for message of type '<ChainEnable>"
  (cl:format cl:nil "JointEnable[] list~%================================================================================~%MSG: dynamixel_pro_controller/JointEnable~%string name~%bool enable~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChainEnable)))
  "Returns full string definition for message of type 'ChainEnable"
  (cl:format cl:nil "JointEnable[] list~%================================================================================~%MSG: dynamixel_pro_controller/JointEnable~%string name~%bool enable~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChainEnable>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChainEnable>))
  "Converts a ROS message object to a list"
  (cl:list 'ChainEnable
    (cl:cons ':list (list msg))
))

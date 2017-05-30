; Auto-generated. Do not edit!


(cl:in-package dynamixel_pro_controller-msg)


;//! \htmlinclude ChainLimits.msg.html

(cl:defclass <ChainLimits> (roslisp-msg-protocol:ros-message)
  ((list
    :reader list
    :initarg :list
    :type (cl:vector dynamixel_pro_controller-msg:JointLimits)
   :initform (cl:make-array 0 :element-type 'dynamixel_pro_controller-msg:JointLimits :initial-element (cl:make-instance 'dynamixel_pro_controller-msg:JointLimits))))
)

(cl:defclass ChainLimits (<ChainLimits>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChainLimits>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChainLimits)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_pro_controller-msg:<ChainLimits> is deprecated: use dynamixel_pro_controller-msg:ChainLimits instead.")))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <ChainLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_pro_controller-msg:list-val is deprecated.  Use dynamixel_pro_controller-msg:list instead.")
  (list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChainLimits>) ostream)
  "Serializes a message object of type '<ChainLimits>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChainLimits>) istream)
  "Deserializes a message object of type '<ChainLimits>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dynamixel_pro_controller-msg:JointLimits))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChainLimits>)))
  "Returns string type for a message object of type '<ChainLimits>"
  "dynamixel_pro_controller/ChainLimits")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChainLimits)))
  "Returns string type for a message object of type 'ChainLimits"
  "dynamixel_pro_controller/ChainLimits")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChainLimits>)))
  "Returns md5sum for a message object of type '<ChainLimits>"
  "b47be590d3fb3136f9c73af0da18f610")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChainLimits)))
  "Returns md5sum for a message object of type 'ChainLimits"
  "b47be590d3fb3136f9c73af0da18f610")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChainLimits>)))
  "Returns full string definition for message of type '<ChainLimits>"
  (cl:format cl:nil "JointLimits[] list~%================================================================================~%MSG: dynamixel_pro_controller/JointLimits~%string name~%float64 min_angle~%float64 max_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChainLimits)))
  "Returns full string definition for message of type 'ChainLimits"
  (cl:format cl:nil "JointLimits[] list~%================================================================================~%MSG: dynamixel_pro_controller/JointLimits~%string name~%float64 min_angle~%float64 max_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChainLimits>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChainLimits>))
  "Converts a ROS message object to a list"
  (cl:list 'ChainLimits
    (cl:cons ':list (list msg))
))

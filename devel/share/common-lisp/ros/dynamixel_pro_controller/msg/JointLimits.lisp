; Auto-generated. Do not edit!


(cl:in-package dynamixel_pro_controller-msg)


;//! \htmlinclude JointLimits.msg.html

(cl:defclass <JointLimits> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (min_angle
    :reader min_angle
    :initarg :min_angle
    :type cl:float
    :initform 0.0)
   (max_angle
    :reader max_angle
    :initarg :max_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointLimits (<JointLimits>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointLimits>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointLimits)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_pro_controller-msg:<JointLimits> is deprecated: use dynamixel_pro_controller-msg:JointLimits instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <JointLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_pro_controller-msg:name-val is deprecated.  Use dynamixel_pro_controller-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'min_angle-val :lambda-list '(m))
(cl:defmethod min_angle-val ((m <JointLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_pro_controller-msg:min_angle-val is deprecated.  Use dynamixel_pro_controller-msg:min_angle instead.")
  (min_angle m))

(cl:ensure-generic-function 'max_angle-val :lambda-list '(m))
(cl:defmethod max_angle-val ((m <JointLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_pro_controller-msg:max_angle-val is deprecated.  Use dynamixel_pro_controller-msg:max_angle instead.")
  (max_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointLimits>) ostream)
  "Serializes a message object of type '<JointLimits>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointLimits>) istream)
  "Deserializes a message object of type '<JointLimits>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointLimits>)))
  "Returns string type for a message object of type '<JointLimits>"
  "dynamixel_pro_controller/JointLimits")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointLimits)))
  "Returns string type for a message object of type 'JointLimits"
  "dynamixel_pro_controller/JointLimits")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointLimits>)))
  "Returns md5sum for a message object of type '<JointLimits>"
  "412154068b5c07c08fd1b683d6e1b4a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointLimits)))
  "Returns md5sum for a message object of type 'JointLimits"
  "412154068b5c07c08fd1b683d6e1b4a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointLimits>)))
  "Returns full string definition for message of type '<JointLimits>"
  (cl:format cl:nil "string name~%float64 min_angle~%float64 max_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointLimits)))
  "Returns full string definition for message of type 'JointLimits"
  (cl:format cl:nil "string name~%float64 min_angle~%float64 max_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointLimits>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointLimits>))
  "Converts a ROS message object to a list"
  (cl:list 'JointLimits
    (cl:cons ':name (name msg))
    (cl:cons ':min_angle (min_angle msg))
    (cl:cons ':max_angle (max_angle msg))
))

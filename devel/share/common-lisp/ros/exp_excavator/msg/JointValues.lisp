; Auto-generated. Do not edit!


(cl:in-package exp_excavator-msg)


;//! \htmlinclude JointValues.msg.html

(cl:defclass <JointValues> (roslisp-msg-protocol:ros-message)
  ((boom
    :reader boom
    :initarg :boom
    :type cl:float
    :initform 0.0)
   (arm
    :reader arm
    :initarg :arm
    :type cl:float
    :initform 0.0)
   (bucket
    :reader bucket
    :initarg :bucket
    :type cl:float
    :initform 0.0)
   (swing
    :reader swing
    :initarg :swing
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointValues (<JointValues>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointValues>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointValues)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exp_excavator-msg:<JointValues> is deprecated: use exp_excavator-msg:JointValues instead.")))

(cl:ensure-generic-function 'boom-val :lambda-list '(m))
(cl:defmethod boom-val ((m <JointValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:boom-val is deprecated.  Use exp_excavator-msg:boom instead.")
  (boom m))

(cl:ensure-generic-function 'arm-val :lambda-list '(m))
(cl:defmethod arm-val ((m <JointValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:arm-val is deprecated.  Use exp_excavator-msg:arm instead.")
  (arm m))

(cl:ensure-generic-function 'bucket-val :lambda-list '(m))
(cl:defmethod bucket-val ((m <JointValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:bucket-val is deprecated.  Use exp_excavator-msg:bucket instead.")
  (bucket m))

(cl:ensure-generic-function 'swing-val :lambda-list '(m))
(cl:defmethod swing-val ((m <JointValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:swing-val is deprecated.  Use exp_excavator-msg:swing instead.")
  (swing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointValues>) ostream)
  "Serializes a message object of type '<JointValues>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'boom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'arm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bucket))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'swing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointValues>) istream)
  "Deserializes a message object of type '<JointValues>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'boom) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bucket) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'swing) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointValues>)))
  "Returns string type for a message object of type '<JointValues>"
  "exp_excavator/JointValues")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointValues)))
  "Returns string type for a message object of type 'JointValues"
  "exp_excavator/JointValues")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointValues>)))
  "Returns md5sum for a message object of type '<JointValues>"
  "9d95cfbc464254b141f1bf3578f27d92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointValues)))
  "Returns md5sum for a message object of type 'JointValues"
  "9d95cfbc464254b141f1bf3578f27d92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointValues>)))
  "Returns full string definition for message of type '<JointValues>"
  (cl:format cl:nil "float64 boom~%float64 arm~%float64 bucket~%float64 swing~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointValues)))
  "Returns full string definition for message of type 'JointValues"
  (cl:format cl:nil "float64 boom~%float64 arm~%float64 bucket~%float64 swing~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointValues>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointValues>))
  "Converts a ROS message object to a list"
  (cl:list 'JointValues
    (cl:cons ':boom (boom msg))
    (cl:cons ':arm (arm msg))
    (cl:cons ':bucket (bucket msg))
    (cl:cons ':swing (swing msg))
))

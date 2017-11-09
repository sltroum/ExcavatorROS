; Auto-generated. Do not edit!


(cl:in-package exp_excavator-msg)


;//! \htmlinclude Jacobian.msg.html

(cl:defclass <Jacobian> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (dxdtboom
    :reader dxdtboom
    :initarg :dxdtboom
    :type cl:float
    :initform 0.0)
   (dxdtarm
    :reader dxdtarm
    :initarg :dxdtarm
    :type cl:float
    :initform 0.0)
   (dxdtbucket
    :reader dxdtbucket
    :initarg :dxdtbucket
    :type cl:float
    :initform 0.0)
   (dzdtboom
    :reader dzdtboom
    :initarg :dzdtboom
    :type cl:float
    :initform 0.0)
   (dzdtarm
    :reader dzdtarm
    :initarg :dzdtarm
    :type cl:float
    :initform 0.0)
   (dzdtbucket
    :reader dzdtbucket
    :initarg :dzdtbucket
    :type cl:float
    :initform 0.0)
   (dphdtboom
    :reader dphdtboom
    :initarg :dphdtboom
    :type cl:float
    :initform 0.0)
   (dphdtarm
    :reader dphdtarm
    :initarg :dphdtarm
    :type cl:float
    :initform 0.0)
   (dphdtbucket
    :reader dphdtbucket
    :initarg :dphdtbucket
    :type cl:float
    :initform 0.0))
)

(cl:defclass Jacobian (<Jacobian>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Jacobian>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Jacobian)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exp_excavator-msg:<Jacobian> is deprecated: use exp_excavator-msg:Jacobian instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Jacobian>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:header-val is deprecated.  Use exp_excavator-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'dxdtboom-val :lambda-list '(m))
(cl:defmethod dxdtboom-val ((m <Jacobian>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:dxdtboom-val is deprecated.  Use exp_excavator-msg:dxdtboom instead.")
  (dxdtboom m))

(cl:ensure-generic-function 'dxdtarm-val :lambda-list '(m))
(cl:defmethod dxdtarm-val ((m <Jacobian>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:dxdtarm-val is deprecated.  Use exp_excavator-msg:dxdtarm instead.")
  (dxdtarm m))

(cl:ensure-generic-function 'dxdtbucket-val :lambda-list '(m))
(cl:defmethod dxdtbucket-val ((m <Jacobian>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:dxdtbucket-val is deprecated.  Use exp_excavator-msg:dxdtbucket instead.")
  (dxdtbucket m))

(cl:ensure-generic-function 'dzdtboom-val :lambda-list '(m))
(cl:defmethod dzdtboom-val ((m <Jacobian>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:dzdtboom-val is deprecated.  Use exp_excavator-msg:dzdtboom instead.")
  (dzdtboom m))

(cl:ensure-generic-function 'dzdtarm-val :lambda-list '(m))
(cl:defmethod dzdtarm-val ((m <Jacobian>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:dzdtarm-val is deprecated.  Use exp_excavator-msg:dzdtarm instead.")
  (dzdtarm m))

(cl:ensure-generic-function 'dzdtbucket-val :lambda-list '(m))
(cl:defmethod dzdtbucket-val ((m <Jacobian>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:dzdtbucket-val is deprecated.  Use exp_excavator-msg:dzdtbucket instead.")
  (dzdtbucket m))

(cl:ensure-generic-function 'dphdtboom-val :lambda-list '(m))
(cl:defmethod dphdtboom-val ((m <Jacobian>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:dphdtboom-val is deprecated.  Use exp_excavator-msg:dphdtboom instead.")
  (dphdtboom m))

(cl:ensure-generic-function 'dphdtarm-val :lambda-list '(m))
(cl:defmethod dphdtarm-val ((m <Jacobian>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:dphdtarm-val is deprecated.  Use exp_excavator-msg:dphdtarm instead.")
  (dphdtarm m))

(cl:ensure-generic-function 'dphdtbucket-val :lambda-list '(m))
(cl:defmethod dphdtbucket-val ((m <Jacobian>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:dphdtbucket-val is deprecated.  Use exp_excavator-msg:dphdtbucket instead.")
  (dphdtbucket m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Jacobian>) ostream)
  "Serializes a message object of type '<Jacobian>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dxdtboom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dxdtarm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dxdtbucket))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dzdtboom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dzdtarm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dzdtbucket))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dphdtboom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dphdtarm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dphdtbucket))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Jacobian>) istream)
  "Deserializes a message object of type '<Jacobian>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dxdtboom) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dxdtarm) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dxdtbucket) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dzdtboom) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dzdtarm) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dzdtbucket) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dphdtboom) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dphdtarm) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dphdtbucket) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Jacobian>)))
  "Returns string type for a message object of type '<Jacobian>"
  "exp_excavator/Jacobian")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Jacobian)))
  "Returns string type for a message object of type 'Jacobian"
  "exp_excavator/Jacobian")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Jacobian>)))
  "Returns md5sum for a message object of type '<Jacobian>"
  "d027c0fe0722f555e8df21a5df02ef47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Jacobian)))
  "Returns md5sum for a message object of type 'Jacobian"
  "d027c0fe0722f555e8df21a5df02ef47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Jacobian>)))
  "Returns full string definition for message of type '<Jacobian>"
  (cl:format cl:nil "Header header~%float64 dxdtboom~%float64 dxdtarm~%float64 dxdtbucket~%float64 dzdtboom~%float64 dzdtarm~%float64 dzdtbucket~%float64 dphdtboom~%float64 dphdtarm~%float64 dphdtbucket~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Jacobian)))
  "Returns full string definition for message of type 'Jacobian"
  (cl:format cl:nil "Header header~%float64 dxdtboom~%float64 dxdtarm~%float64 dxdtbucket~%float64 dzdtboom~%float64 dzdtarm~%float64 dzdtbucket~%float64 dphdtboom~%float64 dphdtarm~%float64 dphdtbucket~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Jacobian>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Jacobian>))
  "Converts a ROS message object to a list"
  (cl:list 'Jacobian
    (cl:cons ':header (header msg))
    (cl:cons ':dxdtboom (dxdtboom msg))
    (cl:cons ':dxdtarm (dxdtarm msg))
    (cl:cons ':dxdtbucket (dxdtbucket msg))
    (cl:cons ':dzdtboom (dzdtboom msg))
    (cl:cons ':dzdtarm (dzdtarm msg))
    (cl:cons ':dzdtbucket (dzdtbucket msg))
    (cl:cons ':dphdtboom (dphdtboom msg))
    (cl:cons ':dphdtarm (dphdtarm msg))
    (cl:cons ':dphdtbucket (dphdtbucket msg))
))

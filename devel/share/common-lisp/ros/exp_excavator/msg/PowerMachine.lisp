; Auto-generated. Do not edit!


(cl:in-package exp_excavator-msg)


;//! \htmlinclude PowerMachine.msg.html

(cl:defclass <PowerMachine> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (powerBoom
    :reader powerBoom
    :initarg :powerBoom
    :type cl:float
    :initform 0.0)
   (powerArm
    :reader powerArm
    :initarg :powerArm
    :type cl:float
    :initform 0.0))
)

(cl:defclass PowerMachine (<PowerMachine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerMachine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerMachine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exp_excavator-msg:<PowerMachine> is deprecated: use exp_excavator-msg:PowerMachine instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PowerMachine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:header-val is deprecated.  Use exp_excavator-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'powerBoom-val :lambda-list '(m))
(cl:defmethod powerBoom-val ((m <PowerMachine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:powerBoom-val is deprecated.  Use exp_excavator-msg:powerBoom instead.")
  (powerBoom m))

(cl:ensure-generic-function 'powerArm-val :lambda-list '(m))
(cl:defmethod powerArm-val ((m <PowerMachine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:powerArm-val is deprecated.  Use exp_excavator-msg:powerArm instead.")
  (powerArm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerMachine>) ostream)
  "Serializes a message object of type '<PowerMachine>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'powerBoom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'powerArm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerMachine>) istream)
  "Deserializes a message object of type '<PowerMachine>"
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
    (cl:setf (cl:slot-value msg 'powerBoom) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'powerArm) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerMachine>)))
  "Returns string type for a message object of type '<PowerMachine>"
  "exp_excavator/PowerMachine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerMachine)))
  "Returns string type for a message object of type 'PowerMachine"
  "exp_excavator/PowerMachine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerMachine>)))
  "Returns md5sum for a message object of type '<PowerMachine>"
  "31441b6a5fb7ce5defb6de4d1c8460c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerMachine)))
  "Returns md5sum for a message object of type 'PowerMachine"
  "31441b6a5fb7ce5defb6de4d1c8460c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerMachine>)))
  "Returns full string definition for message of type '<PowerMachine>"
  (cl:format cl:nil "Header header~%~%float64 powerBoom~%float64 powerArm~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerMachine)))
  "Returns full string definition for message of type 'PowerMachine"
  (cl:format cl:nil "Header header~%~%float64 powerBoom~%float64 powerArm~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerMachine>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerMachine>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerMachine
    (cl:cons ':header (header msg))
    (cl:cons ':powerBoom (powerBoom msg))
    (cl:cons ':powerArm (powerArm msg))
))

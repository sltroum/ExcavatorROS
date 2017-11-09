; Auto-generated. Do not edit!


(cl:in-package exp_excavator-msg)


;//! \htmlinclude PowerBucket.msg.html

(cl:defclass <PowerBucket> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (powerTotal
    :reader powerTotal
    :initarg :powerTotal
    :type cl:float
    :initform 0.0)
   (powerX
    :reader powerX
    :initarg :powerX
    :type cl:float
    :initform 0.0)
   (powerZ
    :reader powerZ
    :initarg :powerZ
    :type cl:float
    :initform 0.0)
   (powerPhi
    :reader powerPhi
    :initarg :powerPhi
    :type cl:float
    :initform 0.0))
)

(cl:defclass PowerBucket (<PowerBucket>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerBucket>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerBucket)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exp_excavator-msg:<PowerBucket> is deprecated: use exp_excavator-msg:PowerBucket instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PowerBucket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:header-val is deprecated.  Use exp_excavator-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'powerTotal-val :lambda-list '(m))
(cl:defmethod powerTotal-val ((m <PowerBucket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:powerTotal-val is deprecated.  Use exp_excavator-msg:powerTotal instead.")
  (powerTotal m))

(cl:ensure-generic-function 'powerX-val :lambda-list '(m))
(cl:defmethod powerX-val ((m <PowerBucket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:powerX-val is deprecated.  Use exp_excavator-msg:powerX instead.")
  (powerX m))

(cl:ensure-generic-function 'powerZ-val :lambda-list '(m))
(cl:defmethod powerZ-val ((m <PowerBucket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:powerZ-val is deprecated.  Use exp_excavator-msg:powerZ instead.")
  (powerZ m))

(cl:ensure-generic-function 'powerPhi-val :lambda-list '(m))
(cl:defmethod powerPhi-val ((m <PowerBucket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:powerPhi-val is deprecated.  Use exp_excavator-msg:powerPhi instead.")
  (powerPhi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerBucket>) ostream)
  "Serializes a message object of type '<PowerBucket>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'powerTotal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'powerX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'powerZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'powerPhi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerBucket>) istream)
  "Deserializes a message object of type '<PowerBucket>"
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
    (cl:setf (cl:slot-value msg 'powerTotal) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'powerX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'powerZ) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'powerPhi) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerBucket>)))
  "Returns string type for a message object of type '<PowerBucket>"
  "exp_excavator/PowerBucket")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerBucket)))
  "Returns string type for a message object of type 'PowerBucket"
  "exp_excavator/PowerBucket")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerBucket>)))
  "Returns md5sum for a message object of type '<PowerBucket>"
  "84172ec58d9e5c45ba7540e94032220c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerBucket)))
  "Returns md5sum for a message object of type 'PowerBucket"
  "84172ec58d9e5c45ba7540e94032220c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerBucket>)))
  "Returns full string definition for message of type '<PowerBucket>"
  (cl:format cl:nil "Header header~%~%float64 powerTotal~%float64 powerX~%float64 powerZ~%float64 powerPhi~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerBucket)))
  "Returns full string definition for message of type 'PowerBucket"
  (cl:format cl:nil "Header header~%~%float64 powerTotal~%float64 powerX~%float64 powerZ~%float64 powerPhi~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerBucket>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerBucket>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerBucket
    (cl:cons ':header (header msg))
    (cl:cons ':powerTotal (powerTotal msg))
    (cl:cons ':powerX (powerX msg))
    (cl:cons ':powerZ (powerZ msg))
    (cl:cons ':powerPhi (powerPhi msg))
))

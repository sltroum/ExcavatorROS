; Auto-generated. Do not edit!


(cl:in-package ros_gpio-msg)


;//! \htmlinclude GpioState.msg.html

(cl:defclass <GpioState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GpioState (<GpioState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpioState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpioState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-msg:<GpioState> is deprecated: use ros_gpio-msg:GpioState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GpioState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-msg:header-val is deprecated.  Use ros_gpio-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <GpioState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-msg:pin-val is deprecated.  Use ros_gpio-msg:pin instead.")
  (pin m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GpioState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-msg:value-val is deprecated.  Use ros_gpio-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpioState>) ostream)
  "Serializes a message object of type '<GpioState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpioState>) istream)
  "Deserializes a message object of type '<GpioState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpioState>)))
  "Returns string type for a message object of type '<GpioState>"
  "ros_gpio/GpioState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpioState)))
  "Returns string type for a message object of type 'GpioState"
  "ros_gpio/GpioState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpioState>)))
  "Returns md5sum for a message object of type '<GpioState>"
  "63669a74df2fbbf347dcb1c5113aef63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpioState)))
  "Returns md5sum for a message object of type 'GpioState"
  "63669a74df2fbbf347dcb1c5113aef63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpioState>)))
  "Returns full string definition for message of type '<GpioState>"
  (cl:format cl:nil "Header header~%uint8 pin~%uint8 value~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpioState)))
  "Returns full string definition for message of type 'GpioState"
  (cl:format cl:nil "Header header~%uint8 pin~%uint8 value~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpioState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpioState>))
  "Converts a ROS message object to a list"
  (cl:list 'GpioState
    (cl:cons ':header (header msg))
    (cl:cons ':pin (pin msg))
    (cl:cons ':value (value msg))
))

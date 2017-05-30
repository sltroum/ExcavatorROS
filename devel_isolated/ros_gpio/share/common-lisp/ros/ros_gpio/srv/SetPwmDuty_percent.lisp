; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude SetPwmDuty_percent-request.msg.html

(cl:defclass <SetPwmDuty_percent-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (period_ms
    :reader period_ms
    :initarg :period_ms
    :type cl:integer
    :initform 0)
   (percent
    :reader percent
    :initarg :percent
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetPwmDuty_percent-request (<SetPwmDuty_percent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPwmDuty_percent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPwmDuty_percent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<SetPwmDuty_percent-request> is deprecated: use ros_gpio-srv:SetPwmDuty_percent-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <SetPwmDuty_percent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'period_ms-val :lambda-list '(m))
(cl:defmethod period_ms-val ((m <SetPwmDuty_percent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:period_ms-val is deprecated.  Use ros_gpio-srv:period_ms instead.")
  (period_ms m))

(cl:ensure-generic-function 'percent-val :lambda-list '(m))
(cl:defmethod percent-val ((m <SetPwmDuty_percent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:percent-val is deprecated.  Use ros_gpio-srv:percent instead.")
  (percent m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPwmDuty_percent-request>) ostream)
  "Serializes a message object of type '<SetPwmDuty_percent-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'period_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'period_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'period_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'period_ms)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPwmDuty_percent-request>) istream)
  "Deserializes a message object of type '<SetPwmDuty_percent-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'period_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'period_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'period_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'period_ms)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percent) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPwmDuty_percent-request>)))
  "Returns string type for a service object of type '<SetPwmDuty_percent-request>"
  "ros_gpio/SetPwmDuty_percentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPwmDuty_percent-request)))
  "Returns string type for a service object of type 'SetPwmDuty_percent-request"
  "ros_gpio/SetPwmDuty_percentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPwmDuty_percent-request>)))
  "Returns md5sum for a message object of type '<SetPwmDuty_percent-request>"
  "c795464c6101769899fab4edd93f315f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPwmDuty_percent-request)))
  "Returns md5sum for a message object of type 'SetPwmDuty_percent-request"
  "c795464c6101769899fab4edd93f315f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPwmDuty_percent-request>)))
  "Returns full string definition for message of type '<SetPwmDuty_percent-request>"
  (cl:format cl:nil "uint8 pin~%uint32 period_ms~%float32 percent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPwmDuty_percent-request)))
  "Returns full string definition for message of type 'SetPwmDuty_percent-request"
  (cl:format cl:nil "uint8 pin~%uint32 period_ms~%float32 percent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPwmDuty_percent-request>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPwmDuty_percent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPwmDuty_percent-request
    (cl:cons ':pin (pin msg))
    (cl:cons ':period_ms (period_ms msg))
    (cl:cons ':percent (percent msg))
))
;//! \htmlinclude SetPwmDuty_percent-response.msg.html

(cl:defclass <SetPwmDuty_percent-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetPwmDuty_percent-response (<SetPwmDuty_percent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPwmDuty_percent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPwmDuty_percent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<SetPwmDuty_percent-response> is deprecated: use ros_gpio-srv:SetPwmDuty_percent-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetPwmDuty_percent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPwmDuty_percent-response>) ostream)
  "Serializes a message object of type '<SetPwmDuty_percent-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPwmDuty_percent-response>) istream)
  "Deserializes a message object of type '<SetPwmDuty_percent-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPwmDuty_percent-response>)))
  "Returns string type for a service object of type '<SetPwmDuty_percent-response>"
  "ros_gpio/SetPwmDuty_percentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPwmDuty_percent-response)))
  "Returns string type for a service object of type 'SetPwmDuty_percent-response"
  "ros_gpio/SetPwmDuty_percentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPwmDuty_percent-response>)))
  "Returns md5sum for a message object of type '<SetPwmDuty_percent-response>"
  "c795464c6101769899fab4edd93f315f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPwmDuty_percent-response)))
  "Returns md5sum for a message object of type 'SetPwmDuty_percent-response"
  "c795464c6101769899fab4edd93f315f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPwmDuty_percent-response>)))
  "Returns full string definition for message of type '<SetPwmDuty_percent-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPwmDuty_percent-response)))
  "Returns full string definition for message of type 'SetPwmDuty_percent-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPwmDuty_percent-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPwmDuty_percent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPwmDuty_percent-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPwmDuty_percent)))
  'SetPwmDuty_percent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPwmDuty_percent)))
  'SetPwmDuty_percent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPwmDuty_percent)))
  "Returns string type for a service object of type '<SetPwmDuty_percent>"
  "ros_gpio/SetPwmDuty_percent")
; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude SetPwmPeriod-request.msg.html

(cl:defclass <SetPwmPeriod-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (us
    :reader us
    :initarg :us
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetPwmPeriod-request (<SetPwmPeriod-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPwmPeriod-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPwmPeriod-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<SetPwmPeriod-request> is deprecated: use ros_gpio-srv:SetPwmPeriod-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <SetPwmPeriod-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'us-val :lambda-list '(m))
(cl:defmethod us-val ((m <SetPwmPeriod-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:us-val is deprecated.  Use ros_gpio-srv:us instead.")
  (us m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPwmPeriod-request>) ostream)
  "Serializes a message object of type '<SetPwmPeriod-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'us))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPwmPeriod-request>) istream)
  "Deserializes a message object of type '<SetPwmPeriod-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'us) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPwmPeriod-request>)))
  "Returns string type for a service object of type '<SetPwmPeriod-request>"
  "ros_gpio/SetPwmPeriodRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPwmPeriod-request)))
  "Returns string type for a service object of type 'SetPwmPeriod-request"
  "ros_gpio/SetPwmPeriodRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPwmPeriod-request>)))
  "Returns md5sum for a message object of type '<SetPwmPeriod-request>"
  "6402e67c22c9390eed6cabea0cd0db31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPwmPeriod-request)))
  "Returns md5sum for a message object of type 'SetPwmPeriod-request"
  "6402e67c22c9390eed6cabea0cd0db31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPwmPeriod-request>)))
  "Returns full string definition for message of type '<SetPwmPeriod-request>"
  (cl:format cl:nil "uint8 pin~%float32 us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPwmPeriod-request)))
  "Returns full string definition for message of type 'SetPwmPeriod-request"
  (cl:format cl:nil "uint8 pin~%float32 us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPwmPeriod-request>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPwmPeriod-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPwmPeriod-request
    (cl:cons ':pin (pin msg))
    (cl:cons ':us (us msg))
))
;//! \htmlinclude SetPwmPeriod-response.msg.html

(cl:defclass <SetPwmPeriod-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetPwmPeriod-response (<SetPwmPeriod-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPwmPeriod-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPwmPeriod-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<SetPwmPeriod-response> is deprecated: use ros_gpio-srv:SetPwmPeriod-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetPwmPeriod-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPwmPeriod-response>) ostream)
  "Serializes a message object of type '<SetPwmPeriod-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPwmPeriod-response>) istream)
  "Deserializes a message object of type '<SetPwmPeriod-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPwmPeriod-response>)))
  "Returns string type for a service object of type '<SetPwmPeriod-response>"
  "ros_gpio/SetPwmPeriodResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPwmPeriod-response)))
  "Returns string type for a service object of type 'SetPwmPeriod-response"
  "ros_gpio/SetPwmPeriodResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPwmPeriod-response>)))
  "Returns md5sum for a message object of type '<SetPwmPeriod-response>"
  "6402e67c22c9390eed6cabea0cd0db31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPwmPeriod-response)))
  "Returns md5sum for a message object of type 'SetPwmPeriod-response"
  "6402e67c22c9390eed6cabea0cd0db31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPwmPeriod-response>)))
  "Returns full string definition for message of type '<SetPwmPeriod-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPwmPeriod-response)))
  "Returns full string definition for message of type 'SetPwmPeriod-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPwmPeriod-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPwmPeriod-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPwmPeriod-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPwmPeriod)))
  'SetPwmPeriod-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPwmPeriod)))
  'SetPwmPeriod-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPwmPeriod)))
  "Returns string type for a service object of type '<SetPwmPeriod>"
  "ros_gpio/SetPwmPeriod")
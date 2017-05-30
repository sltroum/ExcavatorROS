; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude StopPwm-request.msg.html

(cl:defclass <StopPwm-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StopPwm-request (<StopPwm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopPwm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopPwm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<StopPwm-request> is deprecated: use ros_gpio-srv:StopPwm-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <StopPwm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopPwm-request>) ostream)
  "Serializes a message object of type '<StopPwm-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopPwm-request>) istream)
  "Deserializes a message object of type '<StopPwm-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopPwm-request>)))
  "Returns string type for a service object of type '<StopPwm-request>"
  "ros_gpio/StopPwmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopPwm-request)))
  "Returns string type for a service object of type 'StopPwm-request"
  "ros_gpio/StopPwmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopPwm-request>)))
  "Returns md5sum for a message object of type '<StopPwm-request>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopPwm-request)))
  "Returns md5sum for a message object of type 'StopPwm-request"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopPwm-request>)))
  "Returns full string definition for message of type '<StopPwm-request>"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopPwm-request)))
  "Returns full string definition for message of type 'StopPwm-request"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopPwm-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopPwm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopPwm-request
    (cl:cons ':pin (pin msg))
))
;//! \htmlinclude StopPwm-response.msg.html

(cl:defclass <StopPwm-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StopPwm-response (<StopPwm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopPwm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopPwm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<StopPwm-response> is deprecated: use ros_gpio-srv:StopPwm-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <StopPwm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopPwm-response>) ostream)
  "Serializes a message object of type '<StopPwm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopPwm-response>) istream)
  "Deserializes a message object of type '<StopPwm-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopPwm-response>)))
  "Returns string type for a service object of type '<StopPwm-response>"
  "ros_gpio/StopPwmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopPwm-response)))
  "Returns string type for a service object of type 'StopPwm-response"
  "ros_gpio/StopPwmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopPwm-response>)))
  "Returns md5sum for a message object of type '<StopPwm-response>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopPwm-response)))
  "Returns md5sum for a message object of type 'StopPwm-response"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopPwm-response>)))
  "Returns full string definition for message of type '<StopPwm-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopPwm-response)))
  "Returns full string definition for message of type 'StopPwm-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopPwm-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopPwm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopPwm-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopPwm)))
  'StopPwm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopPwm)))
  'StopPwm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopPwm)))
  "Returns string type for a service object of type '<StopPwm>"
  "ros_gpio/StopPwm")
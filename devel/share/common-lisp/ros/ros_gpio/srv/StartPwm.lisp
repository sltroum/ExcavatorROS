; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude StartPwm-request.msg.html

(cl:defclass <StartPwm-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StartPwm-request (<StartPwm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartPwm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartPwm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<StartPwm-request> is deprecated: use ros_gpio-srv:StartPwm-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <StartPwm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartPwm-request>) ostream)
  "Serializes a message object of type '<StartPwm-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartPwm-request>) istream)
  "Deserializes a message object of type '<StartPwm-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartPwm-request>)))
  "Returns string type for a service object of type '<StartPwm-request>"
  "ros_gpio/StartPwmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartPwm-request)))
  "Returns string type for a service object of type 'StartPwm-request"
  "ros_gpio/StartPwmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartPwm-request>)))
  "Returns md5sum for a message object of type '<StartPwm-request>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartPwm-request)))
  "Returns md5sum for a message object of type 'StartPwm-request"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartPwm-request>)))
  "Returns full string definition for message of type '<StartPwm-request>"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartPwm-request)))
  "Returns full string definition for message of type 'StartPwm-request"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartPwm-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartPwm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartPwm-request
    (cl:cons ':pin (pin msg))
))
;//! \htmlinclude StartPwm-response.msg.html

(cl:defclass <StartPwm-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StartPwm-response (<StartPwm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartPwm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartPwm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<StartPwm-response> is deprecated: use ros_gpio-srv:StartPwm-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <StartPwm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartPwm-response>) ostream)
  "Serializes a message object of type '<StartPwm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartPwm-response>) istream)
  "Deserializes a message object of type '<StartPwm-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartPwm-response>)))
  "Returns string type for a service object of type '<StartPwm-response>"
  "ros_gpio/StartPwmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartPwm-response)))
  "Returns string type for a service object of type 'StartPwm-response"
  "ros_gpio/StartPwmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartPwm-response>)))
  "Returns md5sum for a message object of type '<StartPwm-response>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartPwm-response)))
  "Returns md5sum for a message object of type 'StartPwm-response"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartPwm-response>)))
  "Returns full string definition for message of type '<StartPwm-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartPwm-response)))
  "Returns full string definition for message of type 'StartPwm-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartPwm-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartPwm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartPwm-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartPwm)))
  'StartPwm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartPwm)))
  'StartPwm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartPwm)))
  "Returns string type for a service object of type '<StartPwm>"
  "ros_gpio/StartPwm")
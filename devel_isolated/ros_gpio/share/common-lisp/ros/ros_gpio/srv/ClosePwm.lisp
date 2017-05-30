; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude ClosePwm-request.msg.html

(cl:defclass <ClosePwm-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ClosePwm-request (<ClosePwm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClosePwm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClosePwm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<ClosePwm-request> is deprecated: use ros_gpio-srv:ClosePwm-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <ClosePwm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClosePwm-request>) ostream)
  "Serializes a message object of type '<ClosePwm-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClosePwm-request>) istream)
  "Deserializes a message object of type '<ClosePwm-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClosePwm-request>)))
  "Returns string type for a service object of type '<ClosePwm-request>"
  "ros_gpio/ClosePwmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClosePwm-request)))
  "Returns string type for a service object of type 'ClosePwm-request"
  "ros_gpio/ClosePwmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClosePwm-request>)))
  "Returns md5sum for a message object of type '<ClosePwm-request>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClosePwm-request)))
  "Returns md5sum for a message object of type 'ClosePwm-request"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClosePwm-request>)))
  "Returns full string definition for message of type '<ClosePwm-request>"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClosePwm-request)))
  "Returns full string definition for message of type 'ClosePwm-request"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClosePwm-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClosePwm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClosePwm-request
    (cl:cons ':pin (pin msg))
))
;//! \htmlinclude ClosePwm-response.msg.html

(cl:defclass <ClosePwm-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ClosePwm-response (<ClosePwm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClosePwm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClosePwm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<ClosePwm-response> is deprecated: use ros_gpio-srv:ClosePwm-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ClosePwm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClosePwm-response>) ostream)
  "Serializes a message object of type '<ClosePwm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClosePwm-response>) istream)
  "Deserializes a message object of type '<ClosePwm-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClosePwm-response>)))
  "Returns string type for a service object of type '<ClosePwm-response>"
  "ros_gpio/ClosePwmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClosePwm-response)))
  "Returns string type for a service object of type 'ClosePwm-response"
  "ros_gpio/ClosePwmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClosePwm-response>)))
  "Returns md5sum for a message object of type '<ClosePwm-response>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClosePwm-response)))
  "Returns md5sum for a message object of type 'ClosePwm-response"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClosePwm-response>)))
  "Returns full string definition for message of type '<ClosePwm-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClosePwm-response)))
  "Returns full string definition for message of type 'ClosePwm-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClosePwm-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClosePwm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClosePwm-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClosePwm)))
  'ClosePwm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClosePwm)))
  'ClosePwm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClosePwm)))
  "Returns string type for a service object of type '<ClosePwm>"
  "ros_gpio/ClosePwm")
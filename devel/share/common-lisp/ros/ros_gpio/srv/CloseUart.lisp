; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude CloseUart-request.msg.html

(cl:defclass <CloseUart-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CloseUart-request (<CloseUart-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CloseUart-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CloseUart-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<CloseUart-request> is deprecated: use ros_gpio-srv:CloseUart-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <CloseUart-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CloseUart-request>) ostream)
  "Serializes a message object of type '<CloseUart-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CloseUart-request>) istream)
  "Deserializes a message object of type '<CloseUart-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CloseUart-request>)))
  "Returns string type for a service object of type '<CloseUart-request>"
  "ros_gpio/CloseUartRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseUart-request)))
  "Returns string type for a service object of type 'CloseUart-request"
  "ros_gpio/CloseUartRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CloseUart-request>)))
  "Returns md5sum for a message object of type '<CloseUart-request>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CloseUart-request)))
  "Returns md5sum for a message object of type 'CloseUart-request"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CloseUart-request>)))
  "Returns full string definition for message of type '<CloseUart-request>"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CloseUart-request)))
  "Returns full string definition for message of type 'CloseUart-request"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CloseUart-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CloseUart-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CloseUart-request
    (cl:cons ':pin (pin msg))
))
;//! \htmlinclude CloseUart-response.msg.html

(cl:defclass <CloseUart-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CloseUart-response (<CloseUart-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CloseUart-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CloseUart-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<CloseUart-response> is deprecated: use ros_gpio-srv:CloseUart-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CloseUart-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CloseUart-response>) ostream)
  "Serializes a message object of type '<CloseUart-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CloseUart-response>) istream)
  "Deserializes a message object of type '<CloseUart-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CloseUart-response>)))
  "Returns string type for a service object of type '<CloseUart-response>"
  "ros_gpio/CloseUartResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseUart-response)))
  "Returns string type for a service object of type 'CloseUart-response"
  "ros_gpio/CloseUartResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CloseUart-response>)))
  "Returns md5sum for a message object of type '<CloseUart-response>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CloseUart-response)))
  "Returns md5sum for a message object of type 'CloseUart-response"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CloseUart-response>)))
  "Returns full string definition for message of type '<CloseUart-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CloseUart-response)))
  "Returns full string definition for message of type 'CloseUart-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CloseUart-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CloseUart-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CloseUart-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CloseUart)))
  'CloseUart-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CloseUart)))
  'CloseUart-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseUart)))
  "Returns string type for a service object of type '<CloseUart>"
  "ros_gpio/CloseUart")
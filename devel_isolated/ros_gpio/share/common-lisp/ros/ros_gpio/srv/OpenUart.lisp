; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude OpenUart-request.msg.html

(cl:defclass <OpenUart-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OpenUart-request (<OpenUart-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenUart-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenUart-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<OpenUart-request> is deprecated: use ros_gpio-srv:OpenUart-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <OpenUart-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenUart-request>) ostream)
  "Serializes a message object of type '<OpenUart-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenUart-request>) istream)
  "Deserializes a message object of type '<OpenUart-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenUart-request>)))
  "Returns string type for a service object of type '<OpenUart-request>"
  "ros_gpio/OpenUartRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenUart-request)))
  "Returns string type for a service object of type 'OpenUart-request"
  "ros_gpio/OpenUartRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenUart-request>)))
  "Returns md5sum for a message object of type '<OpenUart-request>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenUart-request)))
  "Returns md5sum for a message object of type 'OpenUart-request"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenUart-request>)))
  "Returns full string definition for message of type '<OpenUart-request>"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenUart-request)))
  "Returns full string definition for message of type 'OpenUart-request"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenUart-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenUart-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenUart-request
    (cl:cons ':pin (pin msg))
))
;//! \htmlinclude OpenUart-response.msg.html

(cl:defclass <OpenUart-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OpenUart-response (<OpenUart-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenUart-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenUart-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<OpenUart-response> is deprecated: use ros_gpio-srv:OpenUart-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <OpenUart-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenUart-response>) ostream)
  "Serializes a message object of type '<OpenUart-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenUart-response>) istream)
  "Deserializes a message object of type '<OpenUart-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenUart-response>)))
  "Returns string type for a service object of type '<OpenUart-response>"
  "ros_gpio/OpenUartResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenUart-response)))
  "Returns string type for a service object of type 'OpenUart-response"
  "ros_gpio/OpenUartResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenUart-response>)))
  "Returns md5sum for a message object of type '<OpenUart-response>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenUart-response)))
  "Returns md5sum for a message object of type 'OpenUart-response"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenUart-response>)))
  "Returns full string definition for message of type '<OpenUart-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenUart-response)))
  "Returns full string definition for message of type 'OpenUart-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenUart-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenUart-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenUart-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OpenUart)))
  'OpenUart-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OpenUart)))
  'OpenUart-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenUart)))
  "Returns string type for a service object of type '<OpenUart>"
  "ros_gpio/OpenUart")
; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude OpenGpio-request.msg.html

(cl:defclass <OpenGpio-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OpenGpio-request (<OpenGpio-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenGpio-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenGpio-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<OpenGpio-request> is deprecated: use ros_gpio-srv:OpenGpio-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <OpenGpio-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenGpio-request>) ostream)
  "Serializes a message object of type '<OpenGpio-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenGpio-request>) istream)
  "Deserializes a message object of type '<OpenGpio-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenGpio-request>)))
  "Returns string type for a service object of type '<OpenGpio-request>"
  "ros_gpio/OpenGpioRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenGpio-request)))
  "Returns string type for a service object of type 'OpenGpio-request"
  "ros_gpio/OpenGpioRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenGpio-request>)))
  "Returns md5sum for a message object of type '<OpenGpio-request>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenGpio-request)))
  "Returns md5sum for a message object of type 'OpenGpio-request"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenGpio-request>)))
  "Returns full string definition for message of type '<OpenGpio-request>"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenGpio-request)))
  "Returns full string definition for message of type 'OpenGpio-request"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenGpio-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenGpio-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenGpio-request
    (cl:cons ':pin (pin msg))
))
;//! \htmlinclude OpenGpio-response.msg.html

(cl:defclass <OpenGpio-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OpenGpio-response (<OpenGpio-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenGpio-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenGpio-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<OpenGpio-response> is deprecated: use ros_gpio-srv:OpenGpio-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <OpenGpio-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenGpio-response>) ostream)
  "Serializes a message object of type '<OpenGpio-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenGpio-response>) istream)
  "Deserializes a message object of type '<OpenGpio-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenGpio-response>)))
  "Returns string type for a service object of type '<OpenGpio-response>"
  "ros_gpio/OpenGpioResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenGpio-response)))
  "Returns string type for a service object of type 'OpenGpio-response"
  "ros_gpio/OpenGpioResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenGpio-response>)))
  "Returns md5sum for a message object of type '<OpenGpio-response>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenGpio-response)))
  "Returns md5sum for a message object of type 'OpenGpio-response"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenGpio-response>)))
  "Returns full string definition for message of type '<OpenGpio-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenGpio-response)))
  "Returns full string definition for message of type 'OpenGpio-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenGpio-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenGpio-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenGpio-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OpenGpio)))
  'OpenGpio-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OpenGpio)))
  'OpenGpio-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenGpio)))
  "Returns string type for a service object of type '<OpenGpio>"
  "ros_gpio/OpenGpio")
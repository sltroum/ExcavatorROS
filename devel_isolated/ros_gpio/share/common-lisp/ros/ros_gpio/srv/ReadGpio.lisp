; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude ReadGpio-request.msg.html

(cl:defclass <ReadGpio-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ReadGpio-request (<ReadGpio-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadGpio-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadGpio-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<ReadGpio-request> is deprecated: use ros_gpio-srv:ReadGpio-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <ReadGpio-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadGpio-request>) ostream)
  "Serializes a message object of type '<ReadGpio-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadGpio-request>) istream)
  "Deserializes a message object of type '<ReadGpio-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadGpio-request>)))
  "Returns string type for a service object of type '<ReadGpio-request>"
  "ros_gpio/ReadGpioRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadGpio-request)))
  "Returns string type for a service object of type 'ReadGpio-request"
  "ros_gpio/ReadGpioRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadGpio-request>)))
  "Returns md5sum for a message object of type '<ReadGpio-request>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadGpio-request)))
  "Returns md5sum for a message object of type 'ReadGpio-request"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadGpio-request>)))
  "Returns full string definition for message of type '<ReadGpio-request>"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadGpio-request)))
  "Returns full string definition for message of type 'ReadGpio-request"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadGpio-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadGpio-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadGpio-request
    (cl:cons ':pin (pin msg))
))
;//! \htmlinclude ReadGpio-response.msg.html

(cl:defclass <ReadGpio-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ReadGpio-response (<ReadGpio-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadGpio-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadGpio-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<ReadGpio-response> is deprecated: use ros_gpio-srv:ReadGpio-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ReadGpio-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadGpio-response>) ostream)
  "Serializes a message object of type '<ReadGpio-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadGpio-response>) istream)
  "Deserializes a message object of type '<ReadGpio-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadGpio-response>)))
  "Returns string type for a service object of type '<ReadGpio-response>"
  "ros_gpio/ReadGpioResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadGpio-response)))
  "Returns string type for a service object of type 'ReadGpio-response"
  "ros_gpio/ReadGpioResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadGpio-response>)))
  "Returns md5sum for a message object of type '<ReadGpio-response>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadGpio-response)))
  "Returns md5sum for a message object of type 'ReadGpio-response"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadGpio-response>)))
  "Returns full string definition for message of type '<ReadGpio-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadGpio-response)))
  "Returns full string definition for message of type 'ReadGpio-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadGpio-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadGpio-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadGpio-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReadGpio)))
  'ReadGpio-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReadGpio)))
  'ReadGpio-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadGpio)))
  "Returns string type for a service object of type '<ReadGpio>"
  "ros_gpio/ReadGpio")
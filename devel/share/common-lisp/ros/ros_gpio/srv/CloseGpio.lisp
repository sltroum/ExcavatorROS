; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude CloseGpio-request.msg.html

(cl:defclass <CloseGpio-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CloseGpio-request (<CloseGpio-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CloseGpio-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CloseGpio-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<CloseGpio-request> is deprecated: use ros_gpio-srv:CloseGpio-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <CloseGpio-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CloseGpio-request>) ostream)
  "Serializes a message object of type '<CloseGpio-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CloseGpio-request>) istream)
  "Deserializes a message object of type '<CloseGpio-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CloseGpio-request>)))
  "Returns string type for a service object of type '<CloseGpio-request>"
  "ros_gpio/CloseGpioRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseGpio-request)))
  "Returns string type for a service object of type 'CloseGpio-request"
  "ros_gpio/CloseGpioRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CloseGpio-request>)))
  "Returns md5sum for a message object of type '<CloseGpio-request>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CloseGpio-request)))
  "Returns md5sum for a message object of type 'CloseGpio-request"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CloseGpio-request>)))
  "Returns full string definition for message of type '<CloseGpio-request>"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CloseGpio-request)))
  "Returns full string definition for message of type 'CloseGpio-request"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CloseGpio-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CloseGpio-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CloseGpio-request
    (cl:cons ':pin (pin msg))
))
;//! \htmlinclude CloseGpio-response.msg.html

(cl:defclass <CloseGpio-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CloseGpio-response (<CloseGpio-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CloseGpio-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CloseGpio-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<CloseGpio-response> is deprecated: use ros_gpio-srv:CloseGpio-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CloseGpio-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CloseGpio-response>) ostream)
  "Serializes a message object of type '<CloseGpio-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CloseGpio-response>) istream)
  "Deserializes a message object of type '<CloseGpio-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CloseGpio-response>)))
  "Returns string type for a service object of type '<CloseGpio-response>"
  "ros_gpio/CloseGpioResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseGpio-response)))
  "Returns string type for a service object of type 'CloseGpio-response"
  "ros_gpio/CloseGpioResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CloseGpio-response>)))
  "Returns md5sum for a message object of type '<CloseGpio-response>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CloseGpio-response)))
  "Returns md5sum for a message object of type 'CloseGpio-response"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CloseGpio-response>)))
  "Returns full string definition for message of type '<CloseGpio-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CloseGpio-response)))
  "Returns full string definition for message of type 'CloseGpio-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CloseGpio-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CloseGpio-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CloseGpio-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CloseGpio)))
  'CloseGpio-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CloseGpio)))
  'CloseGpio-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseGpio)))
  "Returns string type for a service object of type '<CloseGpio>"
  "ros_gpio/CloseGpio")
; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude WriteGpio-request.msg.html

(cl:defclass <WriteGpio-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WriteGpio-request (<WriteGpio-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteGpio-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteGpio-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<WriteGpio-request> is deprecated: use ros_gpio-srv:WriteGpio-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <WriteGpio-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <WriteGpio-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:value-val is deprecated.  Use ros_gpio-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteGpio-request>) ostream)
  "Serializes a message object of type '<WriteGpio-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteGpio-request>) istream)
  "Deserializes a message object of type '<WriteGpio-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteGpio-request>)))
  "Returns string type for a service object of type '<WriteGpio-request>"
  "ros_gpio/WriteGpioRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteGpio-request)))
  "Returns string type for a service object of type 'WriteGpio-request"
  "ros_gpio/WriteGpioRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteGpio-request>)))
  "Returns md5sum for a message object of type '<WriteGpio-request>"
  "745c2434a6adca63dd033d5eb53a0db9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteGpio-request)))
  "Returns md5sum for a message object of type 'WriteGpio-request"
  "745c2434a6adca63dd033d5eb53a0db9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteGpio-request>)))
  "Returns full string definition for message of type '<WriteGpio-request>"
  (cl:format cl:nil "uint8 pin~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteGpio-request)))
  "Returns full string definition for message of type 'WriteGpio-request"
  (cl:format cl:nil "uint8 pin~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteGpio-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteGpio-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteGpio-request
    (cl:cons ':pin (pin msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude WriteGpio-response.msg.html

(cl:defclass <WriteGpio-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WriteGpio-response (<WriteGpio-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteGpio-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteGpio-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<WriteGpio-response> is deprecated: use ros_gpio-srv:WriteGpio-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <WriteGpio-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteGpio-response>) ostream)
  "Serializes a message object of type '<WriteGpio-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteGpio-response>) istream)
  "Deserializes a message object of type '<WriteGpio-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteGpio-response>)))
  "Returns string type for a service object of type '<WriteGpio-response>"
  "ros_gpio/WriteGpioResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteGpio-response)))
  "Returns string type for a service object of type 'WriteGpio-response"
  "ros_gpio/WriteGpioResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteGpio-response>)))
  "Returns md5sum for a message object of type '<WriteGpio-response>"
  "745c2434a6adca63dd033d5eb53a0db9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteGpio-response)))
  "Returns md5sum for a message object of type 'WriteGpio-response"
  "745c2434a6adca63dd033d5eb53a0db9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteGpio-response>)))
  "Returns full string definition for message of type '<WriteGpio-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteGpio-response)))
  "Returns full string definition for message of type 'WriteGpio-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteGpio-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteGpio-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteGpio-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WriteGpio)))
  'WriteGpio-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WriteGpio)))
  'WriteGpio-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteGpio)))
  "Returns string type for a service object of type '<WriteGpio>"
  "ros_gpio/WriteGpio")
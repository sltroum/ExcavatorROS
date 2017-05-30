; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude ReadPwm-request.msg.html

(cl:defclass <ReadPwm-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ReadPwm-request (<ReadPwm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadPwm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadPwm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<ReadPwm-request> is deprecated: use ros_gpio-srv:ReadPwm-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <ReadPwm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadPwm-request>) ostream)
  "Serializes a message object of type '<ReadPwm-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadPwm-request>) istream)
  "Deserializes a message object of type '<ReadPwm-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadPwm-request>)))
  "Returns string type for a service object of type '<ReadPwm-request>"
  "ros_gpio/ReadPwmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadPwm-request)))
  "Returns string type for a service object of type 'ReadPwm-request"
  "ros_gpio/ReadPwmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadPwm-request>)))
  "Returns md5sum for a message object of type '<ReadPwm-request>"
  "354dacb149f02d0b643577e3f431fdb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadPwm-request)))
  "Returns md5sum for a message object of type 'ReadPwm-request"
  "354dacb149f02d0b643577e3f431fdb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadPwm-request>)))
  "Returns full string definition for message of type '<ReadPwm-request>"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadPwm-request)))
  "Returns full string definition for message of type 'ReadPwm-request"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadPwm-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadPwm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadPwm-request
    (cl:cons ':pin (pin msg))
))
;//! \htmlinclude ReadPwm-response.msg.html

(cl:defclass <ReadPwm-response> (roslisp-msg-protocol:ros-message)
  ((percent
    :reader percent
    :initarg :percent
    :type cl:float
    :initform 0.0))
)

(cl:defclass ReadPwm-response (<ReadPwm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadPwm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadPwm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<ReadPwm-response> is deprecated: use ros_gpio-srv:ReadPwm-response instead.")))

(cl:ensure-generic-function 'percent-val :lambda-list '(m))
(cl:defmethod percent-val ((m <ReadPwm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:percent-val is deprecated.  Use ros_gpio-srv:percent instead.")
  (percent m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadPwm-response>) ostream)
  "Serializes a message object of type '<ReadPwm-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadPwm-response>) istream)
  "Deserializes a message object of type '<ReadPwm-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percent) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadPwm-response>)))
  "Returns string type for a service object of type '<ReadPwm-response>"
  "ros_gpio/ReadPwmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadPwm-response)))
  "Returns string type for a service object of type 'ReadPwm-response"
  "ros_gpio/ReadPwmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadPwm-response>)))
  "Returns md5sum for a message object of type '<ReadPwm-response>"
  "354dacb149f02d0b643577e3f431fdb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadPwm-response)))
  "Returns md5sum for a message object of type 'ReadPwm-response"
  "354dacb149f02d0b643577e3f431fdb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadPwm-response>)))
  "Returns full string definition for message of type '<ReadPwm-response>"
  (cl:format cl:nil "float32 percent~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadPwm-response)))
  "Returns full string definition for message of type 'ReadPwm-response"
  (cl:format cl:nil "float32 percent~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadPwm-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadPwm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadPwm-response
    (cl:cons ':percent (percent msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReadPwm)))
  'ReadPwm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReadPwm)))
  'ReadPwm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadPwm)))
  "Returns string type for a service object of type '<ReadPwm>"
  "ros_gpio/ReadPwm")
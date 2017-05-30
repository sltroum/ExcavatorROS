; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude OpenPwm-request.msg.html

(cl:defclass <OpenPwm-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OpenPwm-request (<OpenPwm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenPwm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenPwm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<OpenPwm-request> is deprecated: use ros_gpio-srv:OpenPwm-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <OpenPwm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenPwm-request>) ostream)
  "Serializes a message object of type '<OpenPwm-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenPwm-request>) istream)
  "Deserializes a message object of type '<OpenPwm-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenPwm-request>)))
  "Returns string type for a service object of type '<OpenPwm-request>"
  "ros_gpio/OpenPwmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenPwm-request)))
  "Returns string type for a service object of type 'OpenPwm-request"
  "ros_gpio/OpenPwmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenPwm-request>)))
  "Returns md5sum for a message object of type '<OpenPwm-request>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenPwm-request)))
  "Returns md5sum for a message object of type 'OpenPwm-request"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenPwm-request>)))
  "Returns full string definition for message of type '<OpenPwm-request>"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenPwm-request)))
  "Returns full string definition for message of type 'OpenPwm-request"
  (cl:format cl:nil "uint8 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenPwm-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenPwm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenPwm-request
    (cl:cons ':pin (pin msg))
))
;//! \htmlinclude OpenPwm-response.msg.html

(cl:defclass <OpenPwm-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OpenPwm-response (<OpenPwm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenPwm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenPwm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<OpenPwm-response> is deprecated: use ros_gpio-srv:OpenPwm-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <OpenPwm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenPwm-response>) ostream)
  "Serializes a message object of type '<OpenPwm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenPwm-response>) istream)
  "Deserializes a message object of type '<OpenPwm-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenPwm-response>)))
  "Returns string type for a service object of type '<OpenPwm-response>"
  "ros_gpio/OpenPwmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenPwm-response)))
  "Returns string type for a service object of type 'OpenPwm-response"
  "ros_gpio/OpenPwmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenPwm-response>)))
  "Returns md5sum for a message object of type '<OpenPwm-response>"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenPwm-response)))
  "Returns md5sum for a message object of type 'OpenPwm-response"
  "09a5a8266af8d6f25a1d421823e44e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenPwm-response>)))
  "Returns full string definition for message of type '<OpenPwm-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenPwm-response)))
  "Returns full string definition for message of type 'OpenPwm-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenPwm-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenPwm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenPwm-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OpenPwm)))
  'OpenPwm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OpenPwm)))
  'OpenPwm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenPwm)))
  "Returns string type for a service object of type '<OpenPwm>"
  "ros_gpio/OpenPwm")
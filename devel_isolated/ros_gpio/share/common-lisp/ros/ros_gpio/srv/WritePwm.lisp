; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude WritePwm-request.msg.html

(cl:defclass <WritePwm-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (percent
    :reader percent
    :initarg :percent
    :type cl:float
    :initform 0.0))
)

(cl:defclass WritePwm-request (<WritePwm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WritePwm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WritePwm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<WritePwm-request> is deprecated: use ros_gpio-srv:WritePwm-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <WritePwm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'percent-val :lambda-list '(m))
(cl:defmethod percent-val ((m <WritePwm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:percent-val is deprecated.  Use ros_gpio-srv:percent instead.")
  (percent m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WritePwm-request>) ostream)
  "Serializes a message object of type '<WritePwm-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WritePwm-request>) istream)
  "Deserializes a message object of type '<WritePwm-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percent) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WritePwm-request>)))
  "Returns string type for a service object of type '<WritePwm-request>"
  "ros_gpio/WritePwmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WritePwm-request)))
  "Returns string type for a service object of type 'WritePwm-request"
  "ros_gpio/WritePwmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WritePwm-request>)))
  "Returns md5sum for a message object of type '<WritePwm-request>"
  "a2df55be2706973ca3e6bece6c75ed9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WritePwm-request)))
  "Returns md5sum for a message object of type 'WritePwm-request"
  "a2df55be2706973ca3e6bece6c75ed9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WritePwm-request>)))
  "Returns full string definition for message of type '<WritePwm-request>"
  (cl:format cl:nil "uint8 pin~%float32 percent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WritePwm-request)))
  "Returns full string definition for message of type 'WritePwm-request"
  (cl:format cl:nil "uint8 pin~%float32 percent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WritePwm-request>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WritePwm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WritePwm-request
    (cl:cons ':pin (pin msg))
    (cl:cons ':percent (percent msg))
))
;//! \htmlinclude WritePwm-response.msg.html

(cl:defclass <WritePwm-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WritePwm-response (<WritePwm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WritePwm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WritePwm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<WritePwm-response> is deprecated: use ros_gpio-srv:WritePwm-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <WritePwm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WritePwm-response>) ostream)
  "Serializes a message object of type '<WritePwm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WritePwm-response>) istream)
  "Deserializes a message object of type '<WritePwm-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WritePwm-response>)))
  "Returns string type for a service object of type '<WritePwm-response>"
  "ros_gpio/WritePwmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WritePwm-response)))
  "Returns string type for a service object of type 'WritePwm-response"
  "ros_gpio/WritePwmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WritePwm-response>)))
  "Returns md5sum for a message object of type '<WritePwm-response>"
  "a2df55be2706973ca3e6bece6c75ed9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WritePwm-response)))
  "Returns md5sum for a message object of type 'WritePwm-response"
  "a2df55be2706973ca3e6bece6c75ed9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WritePwm-response>)))
  "Returns full string definition for message of type '<WritePwm-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WritePwm-response)))
  "Returns full string definition for message of type 'WritePwm-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WritePwm-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WritePwm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WritePwm-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WritePwm)))
  'WritePwm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WritePwm)))
  'WritePwm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WritePwm)))
  "Returns string type for a service object of type '<WritePwm>"
  "ros_gpio/WritePwm")
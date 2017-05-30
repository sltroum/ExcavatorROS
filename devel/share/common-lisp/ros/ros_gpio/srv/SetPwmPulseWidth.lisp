; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude SetPwmPulseWidth-request.msg.html

(cl:defclass <SetPwmPulseWidth-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (us
    :reader us
    :initarg :us
    :type cl:integer
    :initform 0))
)

(cl:defclass SetPwmPulseWidth-request (<SetPwmPulseWidth-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPwmPulseWidth-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPwmPulseWidth-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<SetPwmPulseWidth-request> is deprecated: use ros_gpio-srv:SetPwmPulseWidth-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <SetPwmPulseWidth-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'us-val :lambda-list '(m))
(cl:defmethod us-val ((m <SetPwmPulseWidth-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:us-val is deprecated.  Use ros_gpio-srv:us instead.")
  (us m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPwmPulseWidth-request>) ostream)
  "Serializes a message object of type '<SetPwmPulseWidth-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'us)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPwmPulseWidth-request>) istream)
  "Deserializes a message object of type '<SetPwmPulseWidth-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'us)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPwmPulseWidth-request>)))
  "Returns string type for a service object of type '<SetPwmPulseWidth-request>"
  "ros_gpio/SetPwmPulseWidthRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPwmPulseWidth-request)))
  "Returns string type for a service object of type 'SetPwmPulseWidth-request"
  "ros_gpio/SetPwmPulseWidthRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPwmPulseWidth-request>)))
  "Returns md5sum for a message object of type '<SetPwmPulseWidth-request>"
  "487036c83e332bf69c50f08dda36b7bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPwmPulseWidth-request)))
  "Returns md5sum for a message object of type 'SetPwmPulseWidth-request"
  "487036c83e332bf69c50f08dda36b7bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPwmPulseWidth-request>)))
  "Returns full string definition for message of type '<SetPwmPulseWidth-request>"
  (cl:format cl:nil "uint8 pin~%uint32 us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPwmPulseWidth-request)))
  "Returns full string definition for message of type 'SetPwmPulseWidth-request"
  (cl:format cl:nil "uint8 pin~%uint32 us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPwmPulseWidth-request>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPwmPulseWidth-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPwmPulseWidth-request
    (cl:cons ':pin (pin msg))
    (cl:cons ':us (us msg))
))
;//! \htmlinclude SetPwmPulseWidth-response.msg.html

(cl:defclass <SetPwmPulseWidth-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetPwmPulseWidth-response (<SetPwmPulseWidth-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPwmPulseWidth-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPwmPulseWidth-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<SetPwmPulseWidth-response> is deprecated: use ros_gpio-srv:SetPwmPulseWidth-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetPwmPulseWidth-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPwmPulseWidth-response>) ostream)
  "Serializes a message object of type '<SetPwmPulseWidth-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPwmPulseWidth-response>) istream)
  "Deserializes a message object of type '<SetPwmPulseWidth-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPwmPulseWidth-response>)))
  "Returns string type for a service object of type '<SetPwmPulseWidth-response>"
  "ros_gpio/SetPwmPulseWidthResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPwmPulseWidth-response)))
  "Returns string type for a service object of type 'SetPwmPulseWidth-response"
  "ros_gpio/SetPwmPulseWidthResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPwmPulseWidth-response>)))
  "Returns md5sum for a message object of type '<SetPwmPulseWidth-response>"
  "487036c83e332bf69c50f08dda36b7bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPwmPulseWidth-response)))
  "Returns md5sum for a message object of type 'SetPwmPulseWidth-response"
  "487036c83e332bf69c50f08dda36b7bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPwmPulseWidth-response>)))
  "Returns full string definition for message of type '<SetPwmPulseWidth-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPwmPulseWidth-response)))
  "Returns full string definition for message of type 'SetPwmPulseWidth-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPwmPulseWidth-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPwmPulseWidth-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPwmPulseWidth-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPwmPulseWidth)))
  'SetPwmPulseWidth-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPwmPulseWidth)))
  'SetPwmPulseWidth-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPwmPulseWidth)))
  "Returns string type for a service object of type '<SetPwmPulseWidth>"
  "ros_gpio/SetPwmPulseWidth")
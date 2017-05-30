; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude SetGpioMode-request.msg.html

(cl:defclass <SetGpioMode-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform ""))
)

(cl:defclass SetGpioMode-request (<SetGpioMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGpioMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGpioMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<SetGpioMode-request> is deprecated: use ros_gpio-srv:SetGpioMode-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <SetGpioMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetGpioMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:mode-val is deprecated.  Use ros_gpio-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGpioMode-request>) ostream)
  "Serializes a message object of type '<SetGpioMode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGpioMode-request>) istream)
  "Deserializes a message object of type '<SetGpioMode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGpioMode-request>)))
  "Returns string type for a service object of type '<SetGpioMode-request>"
  "ros_gpio/SetGpioModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGpioMode-request)))
  "Returns string type for a service object of type 'SetGpioMode-request"
  "ros_gpio/SetGpioModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGpioMode-request>)))
  "Returns md5sum for a message object of type '<SetGpioMode-request>"
  "1ff581ae789deaa3ee98533ea6dd13d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGpioMode-request)))
  "Returns md5sum for a message object of type 'SetGpioMode-request"
  "1ff581ae789deaa3ee98533ea6dd13d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGpioMode-request>)))
  "Returns full string definition for message of type '<SetGpioMode-request>"
  (cl:format cl:nil "uint8 pin~%string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGpioMode-request)))
  "Returns full string definition for message of type 'SetGpioMode-request"
  (cl:format cl:nil "uint8 pin~%string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGpioMode-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGpioMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGpioMode-request
    (cl:cons ':pin (pin msg))
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude SetGpioMode-response.msg.html

(cl:defclass <SetGpioMode-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetGpioMode-response (<SetGpioMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGpioMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGpioMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<SetGpioMode-response> is deprecated: use ros_gpio-srv:SetGpioMode-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetGpioMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGpioMode-response>) ostream)
  "Serializes a message object of type '<SetGpioMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGpioMode-response>) istream)
  "Deserializes a message object of type '<SetGpioMode-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGpioMode-response>)))
  "Returns string type for a service object of type '<SetGpioMode-response>"
  "ros_gpio/SetGpioModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGpioMode-response)))
  "Returns string type for a service object of type 'SetGpioMode-response"
  "ros_gpio/SetGpioModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGpioMode-response>)))
  "Returns md5sum for a message object of type '<SetGpioMode-response>"
  "1ff581ae789deaa3ee98533ea6dd13d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGpioMode-response)))
  "Returns md5sum for a message object of type 'SetGpioMode-response"
  "1ff581ae789deaa3ee98533ea6dd13d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGpioMode-response>)))
  "Returns full string definition for message of type '<SetGpioMode-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGpioMode-response)))
  "Returns full string definition for message of type 'SetGpioMode-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGpioMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGpioMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGpioMode-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGpioMode)))
  'SetGpioMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGpioMode)))
  'SetGpioMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGpioMode)))
  "Returns string type for a service object of type '<SetGpioMode>"
  "ros_gpio/SetGpioMode")
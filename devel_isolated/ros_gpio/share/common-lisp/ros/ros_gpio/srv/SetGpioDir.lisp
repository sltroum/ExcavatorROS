; Auto-generated. Do not edit!


(cl:in-package ros_gpio-srv)


;//! \htmlinclude SetGpioDir-request.msg.html

(cl:defclass <SetGpioDir-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform ""))
)

(cl:defclass SetGpioDir-request (<SetGpioDir-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGpioDir-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGpioDir-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<SetGpioDir-request> is deprecated: use ros_gpio-srv:SetGpioDir-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <SetGpioDir-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:pin-val is deprecated.  Use ros_gpio-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <SetGpioDir-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:direction-val is deprecated.  Use ros_gpio-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGpioDir-request>) ostream)
  "Serializes a message object of type '<SetGpioDir-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGpioDir-request>) istream)
  "Deserializes a message object of type '<SetGpioDir-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGpioDir-request>)))
  "Returns string type for a service object of type '<SetGpioDir-request>"
  "ros_gpio/SetGpioDirRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGpioDir-request)))
  "Returns string type for a service object of type 'SetGpioDir-request"
  "ros_gpio/SetGpioDirRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGpioDir-request>)))
  "Returns md5sum for a message object of type '<SetGpioDir-request>"
  "6d358357ecc16b0c29bb10bde80568e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGpioDir-request)))
  "Returns md5sum for a message object of type 'SetGpioDir-request"
  "6d358357ecc16b0c29bb10bde80568e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGpioDir-request>)))
  "Returns full string definition for message of type '<SetGpioDir-request>"
  (cl:format cl:nil "uint8 pin~%string direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGpioDir-request)))
  "Returns full string definition for message of type 'SetGpioDir-request"
  (cl:format cl:nil "uint8 pin~%string direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGpioDir-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGpioDir-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGpioDir-request
    (cl:cons ':pin (pin msg))
    (cl:cons ':direction (direction msg))
))
;//! \htmlinclude SetGpioDir-response.msg.html

(cl:defclass <SetGpioDir-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetGpioDir-response (<SetGpioDir-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGpioDir-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGpioDir-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gpio-srv:<SetGpioDir-response> is deprecated: use ros_gpio-srv:SetGpioDir-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetGpioDir-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gpio-srv:result-val is deprecated.  Use ros_gpio-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGpioDir-response>) ostream)
  "Serializes a message object of type '<SetGpioDir-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGpioDir-response>) istream)
  "Deserializes a message object of type '<SetGpioDir-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGpioDir-response>)))
  "Returns string type for a service object of type '<SetGpioDir-response>"
  "ros_gpio/SetGpioDirResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGpioDir-response)))
  "Returns string type for a service object of type 'SetGpioDir-response"
  "ros_gpio/SetGpioDirResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGpioDir-response>)))
  "Returns md5sum for a message object of type '<SetGpioDir-response>"
  "6d358357ecc16b0c29bb10bde80568e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGpioDir-response)))
  "Returns md5sum for a message object of type 'SetGpioDir-response"
  "6d358357ecc16b0c29bb10bde80568e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGpioDir-response>)))
  "Returns full string definition for message of type '<SetGpioDir-response>"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGpioDir-response)))
  "Returns full string definition for message of type 'SetGpioDir-response"
  (cl:format cl:nil "uint8 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGpioDir-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGpioDir-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGpioDir-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGpioDir)))
  'SetGpioDir-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGpioDir)))
  'SetGpioDir-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGpioDir)))
  "Returns string type for a service object of type '<SetGpioDir>"
  "ros_gpio/SetGpioDir")
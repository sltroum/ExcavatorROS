; Auto-generated. Do not edit!


(cl:in-package dynamixel_pro_controller-msg)


;//! \htmlinclude JointEnable.msg.html

(cl:defclass <JointEnable> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass JointEnable (<JointEnable>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointEnable>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointEnable)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamixel_pro_controller-msg:<JointEnable> is deprecated: use dynamixel_pro_controller-msg:JointEnable instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <JointEnable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_pro_controller-msg:name-val is deprecated.  Use dynamixel_pro_controller-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <JointEnable>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamixel_pro_controller-msg:enable-val is deprecated.  Use dynamixel_pro_controller-msg:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointEnable>) ostream)
  "Serializes a message object of type '<JointEnable>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointEnable>) istream)
  "Deserializes a message object of type '<JointEnable>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointEnable>)))
  "Returns string type for a message object of type '<JointEnable>"
  "dynamixel_pro_controller/JointEnable")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointEnable)))
  "Returns string type for a message object of type 'JointEnable"
  "dynamixel_pro_controller/JointEnable")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointEnable>)))
  "Returns md5sum for a message object of type '<JointEnable>"
  "8a37ef20262e91550d3fdac3a6dd9d01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointEnable)))
  "Returns md5sum for a message object of type 'JointEnable"
  "8a37ef20262e91550d3fdac3a6dd9d01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointEnable>)))
  "Returns full string definition for message of type '<JointEnable>"
  (cl:format cl:nil "string name~%bool enable~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointEnable)))
  "Returns full string definition for message of type 'JointEnable"
  (cl:format cl:nil "string name~%bool enable~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointEnable>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointEnable>))
  "Converts a ROS message object to a list"
  (cl:list 'JointEnable
    (cl:cons ':name (name msg))
    (cl:cons ':enable (enable msg))
))

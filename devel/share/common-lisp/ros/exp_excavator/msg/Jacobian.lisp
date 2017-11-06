; Auto-generated. Do not edit!


(cl:in-package exp_excavator-msg)


;//! \htmlinclude Jacobian.msg.html

(cl:defclass <Jacobian> (roslisp-msg-protocol:ros-message)
  ((Jacobian
    :reader Jacobian
    :initarg :Jacobian
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Jacobian (<Jacobian>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Jacobian>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Jacobian)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exp_excavator-msg:<Jacobian> is deprecated: use exp_excavator-msg:Jacobian instead.")))

(cl:ensure-generic-function 'Jacobian-val :lambda-list '(m))
(cl:defmethod Jacobian-val ((m <Jacobian>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exp_excavator-msg:Jacobian-val is deprecated.  Use exp_excavator-msg:Jacobian instead.")
  (Jacobian m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Jacobian>) ostream)
  "Serializes a message object of type '<Jacobian>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Jacobian))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'Jacobian))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Jacobian>) istream)
  "Deserializes a message object of type '<Jacobian>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Jacobian) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Jacobian)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Jacobian>)))
  "Returns string type for a message object of type '<Jacobian>"
  "exp_excavator/Jacobian")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Jacobian)))
  "Returns string type for a message object of type 'Jacobian"
  "exp_excavator/Jacobian")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Jacobian>)))
  "Returns md5sum for a message object of type '<Jacobian>"
  "8a2548826baa65273568a06e13730e1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Jacobian)))
  "Returns md5sum for a message object of type 'Jacobian"
  "8a2548826baa65273568a06e13730e1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Jacobian>)))
  "Returns full string definition for message of type '<Jacobian>"
  (cl:format cl:nil "float64[] Jacobian ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Jacobian)))
  "Returns full string definition for message of type 'Jacobian"
  (cl:format cl:nil "float64[] Jacobian ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Jacobian>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Jacobian) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Jacobian>))
  "Converts a ROS message object to a list"
  (cl:list 'Jacobian
    (cl:cons ':Jacobian (Jacobian msg))
))

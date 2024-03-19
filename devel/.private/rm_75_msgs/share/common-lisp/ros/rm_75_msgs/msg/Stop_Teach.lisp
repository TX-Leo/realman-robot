; Auto-generated. Do not edit!


(cl:in-package rm_75_msgs-msg)


;//! \htmlinclude Stop_Teach.msg.html

(cl:defclass <Stop_Teach> (roslisp-msg-protocol:ros-message)
  ((teach_stop
    :reader teach_stop
    :initarg :teach_stop
    :type cl:string
    :initform ""))
)

(cl:defclass Stop_Teach (<Stop_Teach>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stop_Teach>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stop_Teach)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_75_msgs-msg:<Stop_Teach> is deprecated: use rm_75_msgs-msg:Stop_Teach instead.")))

(cl:ensure-generic-function 'teach_stop-val :lambda-list '(m))
(cl:defmethod teach_stop-val ((m <Stop_Teach>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_75_msgs-msg:teach_stop-val is deprecated.  Use rm_75_msgs-msg:teach_stop instead.")
  (teach_stop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stop_Teach>) ostream)
  "Serializes a message object of type '<Stop_Teach>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'teach_stop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'teach_stop))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stop_Teach>) istream)
  "Deserializes a message object of type '<Stop_Teach>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'teach_stop) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'teach_stop) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stop_Teach>)))
  "Returns string type for a message object of type '<Stop_Teach>"
  "rm_75_msgs/Stop_Teach")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stop_Teach)))
  "Returns string type for a message object of type 'Stop_Teach"
  "rm_75_msgs/Stop_Teach")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stop_Teach>)))
  "Returns md5sum for a message object of type '<Stop_Teach>"
  "92f5433909a48bf4fc2cea4eb11481b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stop_Teach)))
  "Returns md5sum for a message object of type 'Stop_Teach"
  "92f5433909a48bf4fc2cea4eb11481b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stop_Teach>)))
  "Returns full string definition for message of type '<Stop_Teach>"
  (cl:format cl:nil "#示教停止~%string teach_stop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stop_Teach)))
  "Returns full string definition for message of type 'Stop_Teach"
  (cl:format cl:nil "#示教停止~%string teach_stop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stop_Teach>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'teach_stop))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stop_Teach>))
  "Converts a ROS message object to a list"
  (cl:list 'Stop_Teach
    (cl:cons ':teach_stop (teach_stop msg))
))

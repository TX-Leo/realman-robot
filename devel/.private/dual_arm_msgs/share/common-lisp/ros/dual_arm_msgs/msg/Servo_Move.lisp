; Auto-generated. Do not edit!


(cl:in-package dual_arm_msgs-msg)


;//! \htmlinclude Servo_Move.msg.html

(cl:defclass <Servo_Move> (roslisp-msg-protocol:ros-message)
  ((servo_id
    :reader servo_id
    :initarg :servo_id
    :type cl:fixnum
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Servo_Move (<Servo_Move>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Servo_Move>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Servo_Move)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dual_arm_msgs-msg:<Servo_Move> is deprecated: use dual_arm_msgs-msg:Servo_Move instead.")))

(cl:ensure-generic-function 'servo_id-val :lambda-list '(m))
(cl:defmethod servo_id-val ((m <Servo_Move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dual_arm_msgs-msg:servo_id-val is deprecated.  Use dual_arm_msgs-msg:servo_id instead.")
  (servo_id m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <Servo_Move>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dual_arm_msgs-msg:angle-val is deprecated.  Use dual_arm_msgs-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Servo_Move>) ostream)
  "Serializes a message object of type '<Servo_Move>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servo_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'servo_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'angle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'angle)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Servo_Move>) istream)
  "Deserializes a message object of type '<Servo_Move>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servo_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'servo_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'angle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'angle)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Servo_Move>)))
  "Returns string type for a message object of type '<Servo_Move>"
  "dual_arm_msgs/Servo_Move")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Servo_Move)))
  "Returns string type for a message object of type 'Servo_Move"
  "dual_arm_msgs/Servo_Move")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Servo_Move>)))
  "Returns md5sum for a message object of type '<Servo_Move>"
  "4b1ffad65c396de7e89b3adea80fcd0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Servo_Move)))
  "Returns md5sum for a message object of type 'Servo_Move"
  "4b1ffad65c396de7e89b3adea80fcd0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Servo_Move>)))
  "Returns full string definition for message of type '<Servo_Move>"
  (cl:format cl:nil "#舵机转动控制~%uint16 servo_id	#舵机ID~%uint16 angle	#角度位置0~~1000~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Servo_Move)))
  "Returns full string definition for message of type 'Servo_Move"
  (cl:format cl:nil "#舵机转动控制~%uint16 servo_id	#舵机ID~%uint16 angle	#角度位置0~~1000~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Servo_Move>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Servo_Move>))
  "Converts a ROS message object to a list"
  (cl:list 'Servo_Move
    (cl:cons ':servo_id (servo_id msg))
    (cl:cons ':angle (angle msg))
))

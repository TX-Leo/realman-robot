; Auto-generated. Do not edit!


(cl:in-package dual_arm_msgs-msg)


;//! \htmlinclude Servo_GetAngle.msg.html

(cl:defclass <Servo_GetAngle> (roslisp-msg-protocol:ros-message)
  ((servo_id
    :reader servo_id
    :initarg :servo_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Servo_GetAngle (<Servo_GetAngle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Servo_GetAngle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Servo_GetAngle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dual_arm_msgs-msg:<Servo_GetAngle> is deprecated: use dual_arm_msgs-msg:Servo_GetAngle instead.")))

(cl:ensure-generic-function 'servo_id-val :lambda-list '(m))
(cl:defmethod servo_id-val ((m <Servo_GetAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dual_arm_msgs-msg:servo_id-val is deprecated.  Use dual_arm_msgs-msg:servo_id instead.")
  (servo_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Servo_GetAngle>) ostream)
  "Serializes a message object of type '<Servo_GetAngle>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servo_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'servo_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Servo_GetAngle>) istream)
  "Deserializes a message object of type '<Servo_GetAngle>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servo_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'servo_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Servo_GetAngle>)))
  "Returns string type for a message object of type '<Servo_GetAngle>"
  "dual_arm_msgs/Servo_GetAngle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Servo_GetAngle)))
  "Returns string type for a message object of type 'Servo_GetAngle"
  "dual_arm_msgs/Servo_GetAngle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Servo_GetAngle>)))
  "Returns md5sum for a message object of type '<Servo_GetAngle>"
  "44a63dfe689e2d7241879f9eb59bd488")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Servo_GetAngle)))
  "Returns md5sum for a message object of type 'Servo_GetAngle"
  "44a63dfe689e2d7241879f9eb59bd488")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Servo_GetAngle>)))
  "Returns full string definition for message of type '<Servo_GetAngle>"
  (cl:format cl:nil "#读取舵机角度位置值~%uint16 servo_id	#舵机ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Servo_GetAngle)))
  "Returns full string definition for message of type 'Servo_GetAngle"
  (cl:format cl:nil "#读取舵机角度位置值~%uint16 servo_id	#舵机ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Servo_GetAngle>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Servo_GetAngle>))
  "Converts a ROS message object to a list"
  (cl:list 'Servo_GetAngle
    (cl:cons ':servo_id (servo_id msg))
))

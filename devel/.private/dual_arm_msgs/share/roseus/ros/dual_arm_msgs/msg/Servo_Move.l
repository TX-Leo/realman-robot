;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::Servo_Move)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'Servo_Move (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::SERVO_MOVE")
  (make-package "DUAL_ARM_MSGS::SERVO_MOVE"))

(in-package "ROS")
;;//! \htmlinclude Servo_Move.msg.html


(defclass dual_arm_msgs::Servo_Move
  :super ros::object
  :slots (_servo_id _angle ))

(defmethod dual_arm_msgs::Servo_Move
  (:init
   (&key
    ((:servo_id __servo_id) 0)
    ((:angle __angle) 0)
    )
   (send-super :init)
   (setq _servo_id (round __servo_id))
   (setq _angle (round __angle))
   self)
  (:servo_id
   (&optional __servo_id)
   (if __servo_id (setq _servo_id __servo_id)) _servo_id)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; uint16 _servo_id
    2
    ;; uint16 _angle
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _servo_id
       (write-word _servo_id s)
     ;; uint16 _angle
       (write-word _angle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _servo_id
     (setq _servo_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _angle
     (setq _angle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dual_arm_msgs::Servo_Move :md5sum-) "4b1ffad65c396de7e89b3adea80fcd0f")
(setf (get dual_arm_msgs::Servo_Move :datatype-) "dual_arm_msgs/Servo_Move")
(setf (get dual_arm_msgs::Servo_Move :definition-)
      "#舵机转动控制
uint16 servo_id	#舵机ID
uint16 angle	#角度位置0~1000

")



(provide :dual_arm_msgs/Servo_Move "4b1ffad65c396de7e89b3adea80fcd0f")



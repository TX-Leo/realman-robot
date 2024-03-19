;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::Joint_Teach)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'Joint_Teach (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::JOINT_TEACH")
  (make-package "DUAL_ARM_MSGS::JOINT_TEACH"))

(in-package "ROS")
;;//! \htmlinclude Joint_Teach.msg.html


(defclass dual_arm_msgs::Joint_Teach
  :super ros::object
  :slots (_teach_joint _direction _v ))

(defmethod dual_arm_msgs::Joint_Teach
  (:init
   (&key
    ((:teach_joint __teach_joint) 0)
    ((:direction __direction) "")
    ((:v __v) 0)
    )
   (send-super :init)
   (setq _teach_joint (round __teach_joint))
   (setq _direction (string __direction))
   (setq _v (round __v))
   self)
  (:teach_joint
   (&optional __teach_joint)
   (if __teach_joint (setq _teach_joint __teach_joint)) _teach_joint)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:serialization-length
   ()
   (+
    ;; int16 _teach_joint
    2
    ;; string _direction
    4 (length _direction)
    ;; int16 _v
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _teach_joint
       (write-word _teach_joint s)
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;; int16 _v
       (write-word _v s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _teach_joint
     (setq _teach_joint (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _v
     (setq _v (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dual_arm_msgs::Joint_Teach :md5sum-) "60cfaf744f64f5ac1ac6f8d51dde58e6")
(setf (get dual_arm_msgs::Joint_Teach :datatype-) "dual_arm_msgs/Joint_Teach")
(setf (get dual_arm_msgs::Joint_Teach :definition-)
      "int16 teach_joint
string direction
int16 v

")



(provide :dual_arm_msgs/Joint_Teach "60cfaf744f64f5ac1ac6f8d51dde58e6")



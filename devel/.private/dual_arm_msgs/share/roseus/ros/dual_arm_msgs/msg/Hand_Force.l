;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::Hand_Force)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'Hand_Force (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::HAND_FORCE")
  (make-package "DUAL_ARM_MSGS::HAND_FORCE"))

(in-package "ROS")
;;//! \htmlinclude Hand_Force.msg.html


(defclass dual_arm_msgs::Hand_Force
  :super ros::object
  :slots (_hand_force ))

(defmethod dual_arm_msgs::Hand_Force
  (:init
   (&key
    ((:hand_force __hand_force) 0)
    )
   (send-super :init)
   (setq _hand_force (round __hand_force))
   self)
  (:hand_force
   (&optional __hand_force)
   (if __hand_force (setq _hand_force __hand_force)) _hand_force)
  (:serialization-length
   ()
   (+
    ;; uint16 _hand_force
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _hand_force
       (write-word _hand_force s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _hand_force
     (setq _hand_force (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dual_arm_msgs::Hand_Force :md5sum-) "9b910d20d2c9bd5f156199fd98e2fdc4")
(setf (get dual_arm_msgs::Hand_Force :datatype-) "dual_arm_msgs/Hand_Force")
(setf (get dual_arm_msgs::Hand_Force :definition-)
      "#设置灵巧手关节力阈值
uint16 hand_force         #手指力，范围：1~1000

")



(provide :dual_arm_msgs/Hand_Force "9b910d20d2c9bd5f156199fd98e2fdc4")



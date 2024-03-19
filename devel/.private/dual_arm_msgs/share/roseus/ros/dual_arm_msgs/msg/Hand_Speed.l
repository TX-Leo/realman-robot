;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::Hand_Speed)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'Hand_Speed (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::HAND_SPEED")
  (make-package "DUAL_ARM_MSGS::HAND_SPEED"))

(in-package "ROS")
;;//! \htmlinclude Hand_Speed.msg.html


(defclass dual_arm_msgs::Hand_Speed
  :super ros::object
  :slots (_hand_speed ))

(defmethod dual_arm_msgs::Hand_Speed
  (:init
   (&key
    ((:hand_speed __hand_speed) 0)
    )
   (send-super :init)
   (setq _hand_speed (round __hand_speed))
   self)
  (:hand_speed
   (&optional __hand_speed)
   (if __hand_speed (setq _hand_speed __hand_speed)) _hand_speed)
  (:serialization-length
   ()
   (+
    ;; uint16 _hand_speed
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _hand_speed
       (write-word _hand_speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _hand_speed
     (setq _hand_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dual_arm_msgs::Hand_Speed :md5sum-) "2c60da357dfc1989f0a4de469bbeae28")
(setf (get dual_arm_msgs::Hand_Speed :datatype-) "dual_arm_msgs/Hand_Speed")
(setf (get dual_arm_msgs::Hand_Speed :definition-)
      "#设置灵巧手关节速度
uint16 hand_speed         #手指速度，范围：1~1000

")



(provide :dual_arm_msgs/Hand_Speed "2c60da357dfc1989f0a4de469bbeae28")



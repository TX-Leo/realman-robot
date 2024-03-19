;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::Lift_Height)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'Lift_Height (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::LIFT_HEIGHT")
  (make-package "DUAL_ARM_MSGS::LIFT_HEIGHT"))

(in-package "ROS")
;;//! \htmlinclude Lift_Height.msg.html


(defclass dual_arm_msgs::Lift_Height
  :super ros::object
  :slots (_height _speed ))

(defmethod dual_arm_msgs::Lift_Height
  (:init
   (&key
    ((:height __height) 0)
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _height (round __height))
   (setq _speed (round __speed))
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; uint16 _height
    2
    ;; uint16 _speed
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _height
       (write-word _height s)
     ;; uint16 _speed
       (write-word _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _height
     (setq _height (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dual_arm_msgs::Lift_Height :md5sum-) "ce92ed992837df41fa85260a11a529b8")
(setf (get dual_arm_msgs::Lift_Height :datatype-) "dual_arm_msgs/Lift_Height")
(setf (get dual_arm_msgs::Lift_Height :definition-)
      "#升降机构运行到指定高度
uint16 height        #目标高度，单位 mm，范围：0~2600
uint16 speed         #速度百分比，1~100

")



(provide :dual_arm_msgs/Lift_Height "ce92ed992837df41fa85260a11a529b8")



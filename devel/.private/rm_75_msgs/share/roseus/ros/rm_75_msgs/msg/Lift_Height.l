;; Auto-generated. Do not edit!


(when (boundp 'rm_75_msgs::Lift_Height)
  (if (not (find-package "RM_75_MSGS"))
    (make-package "RM_75_MSGS"))
  (shadow 'Lift_Height (find-package "RM_75_MSGS")))
(unless (find-package "RM_75_MSGS::LIFT_HEIGHT")
  (make-package "RM_75_MSGS::LIFT_HEIGHT"))

(in-package "ROS")
;;//! \htmlinclude Lift_Height.msg.html


(defclass rm_75_msgs::Lift_Height
  :super ros::object
  :slots (_height _speed ))

(defmethod rm_75_msgs::Lift_Height
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
    ;; int16 _height
    2
    ;; int16 _speed
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _height
       (write-word _height s)
     ;; int16 _speed
       (write-word _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _height
     (setq _height (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_75_msgs::Lift_Height :md5sum-) "3194a2ec091b1121600fa447121b02dc")
(setf (get rm_75_msgs::Lift_Height :datatype-) "rm_75_msgs/Lift_Height")
(setf (get rm_75_msgs::Lift_Height :definition-)
      "#升降机构运行到指定高度
int16 height        #目标高度，单位 mm，范围：0~2600
int16 speed         #速度百分比，1~100

")



(provide :rm_75_msgs/Lift_Height "3194a2ec091b1121600fa447121b02dc")



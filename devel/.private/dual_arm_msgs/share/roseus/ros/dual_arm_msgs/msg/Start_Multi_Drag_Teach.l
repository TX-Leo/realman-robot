;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::Start_Multi_Drag_Teach)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'Start_Multi_Drag_Teach (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::START_MULTI_DRAG_TEACH")
  (make-package "DUAL_ARM_MSGS::START_MULTI_DRAG_TEACH"))

(in-package "ROS")
;;//! \htmlinclude Start_Multi_Drag_Teach.msg.html


(defclass dual_arm_msgs::Start_Multi_Drag_Teach
  :super ros::object
  :slots (_mode ))

(defmethod dual_arm_msgs::Start_Multi_Drag_Teach
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dual_arm_msgs::Start_Multi_Drag_Teach :md5sum-) "89b81386720be1cd0ce7a3953fcd1b19")
(setf (get dual_arm_msgs::Start_Multi_Drag_Teach :datatype-) "dual_arm_msgs/Start_Multi_Drag_Teach")
(setf (get dual_arm_msgs::Start_Multi_Drag_Teach :definition-)
      "uint8 mode

")



(provide :dual_arm_msgs/Start_Multi_Drag_Teach "89b81386720be1cd0ce7a3953fcd1b19")



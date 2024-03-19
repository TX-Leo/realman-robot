;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::Manual_Set_Force_Pose)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'Manual_Set_Force_Pose (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::MANUAL_SET_FORCE_POSE")
  (make-package "DUAL_ARM_MSGS::MANUAL_SET_FORCE_POSE"))

(in-package "ROS")
;;//! \htmlinclude Manual_Set_Force_Pose.msg.html


(defclass dual_arm_msgs::Manual_Set_Force_Pose
  :super ros::object
  :slots (_joint ))

(defmethod dual_arm_msgs::Manual_Set_Force_Pose
  (:init
   (&key
    ((:joint __joint) (make-array 6 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _joint __joint)
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:serialization-length
   ()
   (+
    ;; int16[6] _joint
    (* 2    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[6] _joint
     (dotimes (i 6)
       (write-word (elt _joint i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[6] _joint
   (dotimes (i (length _joint))
     (setf (elt _joint i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get dual_arm_msgs::Manual_Set_Force_Pose :md5sum-) "115602d63d436656f43358faf13c608e")
(setf (get dual_arm_msgs::Manual_Set_Force_Pose :datatype-) "dual_arm_msgs/Manual_Set_Force_Pose")
(setf (get dual_arm_msgs::Manual_Set_Force_Pose :definition-)
      "int16[6] joint


")



(provide :dual_arm_msgs/Manual_Set_Force_Pose "115602d63d436656f43358faf13c608e")



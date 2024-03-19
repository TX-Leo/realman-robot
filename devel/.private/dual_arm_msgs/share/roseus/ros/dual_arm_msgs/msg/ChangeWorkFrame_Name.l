;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::ChangeWorkFrame_Name)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'ChangeWorkFrame_Name (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::CHANGEWORKFRAME_NAME")
  (make-package "DUAL_ARM_MSGS::CHANGEWORKFRAME_NAME"))

(in-package "ROS")
;;//! \htmlinclude ChangeWorkFrame_Name.msg.html


(defclass dual_arm_msgs::ChangeWorkFrame_Name
  :super ros::object
  :slots (_WorkFrame_name ))

(defmethod dual_arm_msgs::ChangeWorkFrame_Name
  (:init
   (&key
    ((:WorkFrame_name __WorkFrame_name) "")
    )
   (send-super :init)
   (setq _WorkFrame_name (string __WorkFrame_name))
   self)
  (:WorkFrame_name
   (&optional __WorkFrame_name)
   (if __WorkFrame_name (setq _WorkFrame_name __WorkFrame_name)) _WorkFrame_name)
  (:serialization-length
   ()
   (+
    ;; string _WorkFrame_name
    4 (length _WorkFrame_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _WorkFrame_name
       (write-long (length _WorkFrame_name) s) (princ _WorkFrame_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _WorkFrame_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _WorkFrame_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dual_arm_msgs::ChangeWorkFrame_Name :md5sum-) "58a6b74050d8d3918fe8554a7dbbb407")
(setf (get dual_arm_msgs::ChangeWorkFrame_Name :datatype-) "dual_arm_msgs/ChangeWorkFrame_Name")
(setf (get dual_arm_msgs::ChangeWorkFrame_Name :definition-)
      "string WorkFrame_name

")



(provide :dual_arm_msgs/ChangeWorkFrame_Name "58a6b74050d8d3918fe8554a7dbbb407")



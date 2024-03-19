;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::IO_Update)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'IO_Update (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::IO_UPDATE")
  (make-package "DUAL_ARM_MSGS::IO_UPDATE"))

(in-package "ROS")
;;//! \htmlinclude IO_Update.msg.html


(defclass dual_arm_msgs::IO_Update
  :super ros::object
  :slots (_type ))

(defmethod dual_arm_msgs::IO_Update
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dual_arm_msgs::IO_Update :md5sum-) "3958533281df6e9cc0a725a386f3b5df")
(setf (get dual_arm_msgs::IO_Update :datatype-) "dual_arm_msgs/IO_Update")
(setf (get dual_arm_msgs::IO_Update :definition-)
      "uint8 type

")



(provide :dual_arm_msgs/IO_Update "3958533281df6e9cc0a725a386f3b5df")



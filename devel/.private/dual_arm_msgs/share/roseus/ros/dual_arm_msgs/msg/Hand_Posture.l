;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::Hand_Posture)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'Hand_Posture (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::HAND_POSTURE")
  (make-package "DUAL_ARM_MSGS::HAND_POSTURE"))

(in-package "ROS")
;;//! \htmlinclude Hand_Posture.msg.html


(defclass dual_arm_msgs::Hand_Posture
  :super ros::object
  :slots (_posture_num ))

(defmethod dual_arm_msgs::Hand_Posture
  (:init
   (&key
    ((:posture_num __posture_num) 0)
    )
   (send-super :init)
   (setq _posture_num (round __posture_num))
   self)
  (:posture_num
   (&optional __posture_num)
   (if __posture_num (setq _posture_num __posture_num)) _posture_num)
  (:serialization-length
   ()
   (+
    ;; uint16 _posture_num
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _posture_num
       (write-word _posture_num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _posture_num
     (setq _posture_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dual_arm_msgs::Hand_Posture :md5sum-) "86dfac3ab8ac2be02ec067def631c96c")
(setf (get dual_arm_msgs::Hand_Posture :datatype-) "dual_arm_msgs/Hand_Posture")
(setf (get dual_arm_msgs::Hand_Posture :definition-)
      "#设置灵巧手手势
uint16 posture_num         #预先保存在灵巧手内的手势序号，范围：1~40

")



(provide :dual_arm_msgs/Hand_Posture "86dfac3ab8ac2be02ec067def631c96c")



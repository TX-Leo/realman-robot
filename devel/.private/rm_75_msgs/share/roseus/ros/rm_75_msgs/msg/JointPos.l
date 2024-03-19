;; Auto-generated. Do not edit!


(when (boundp 'rm_75_msgs::JointPos)
  (if (not (find-package "RM_75_MSGS"))
    (make-package "RM_75_MSGS"))
  (shadow 'JointPos (find-package "RM_75_MSGS")))
(unless (find-package "RM_75_MSGS::JOINTPOS")
  (make-package "RM_75_MSGS::JOINTPOS"))

(in-package "ROS")
;;//! \htmlinclude JointPos.msg.html


(defclass rm_75_msgs::JointPos
  :super ros::object
  :slots (_joint ))

(defmethod rm_75_msgs::JointPos
  (:init
   (&key
    ((:joint __joint) (make-array 7 :initial-element 0.0 :element-type :float))
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
    ;; float32[7] _joint
    (* 4    7)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[7] _joint
     (dotimes (i 7)
       (sys::poke (elt _joint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[7] _joint
   (dotimes (i (length _joint))
     (setf (elt _joint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get rm_75_msgs::JointPos :md5sum-) "90209662d1c28163f8eb45d185f4f0a8")
(setf (get rm_75_msgs::JointPos :datatype-) "rm_75_msgs/JointPos")
(setf (get rm_75_msgs::JointPos :definition-)
      "#control arm joints without planning

float32[7] joint

")



(provide :rm_75_msgs/JointPos "90209662d1c28163f8eb45d185f4f0a8")



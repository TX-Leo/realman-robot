;; Auto-generated. Do not edit!


(when (boundp 'rm_75_msgs::MoveJ)
  (if (not (find-package "RM_75_MSGS"))
    (make-package "RM_75_MSGS"))
  (shadow 'MoveJ (find-package "RM_75_MSGS")))
(unless (find-package "RM_75_MSGS::MOVEJ")
  (make-package "RM_75_MSGS::MOVEJ"))

(in-package "ROS")
;;//! \htmlinclude MoveJ.msg.html


(defclass rm_75_msgs::MoveJ
  :super ros::object
  :slots (_joint _speed ))

(defmethod rm_75_msgs::MoveJ
  (:init
   (&key
    ((:joint __joint) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _joint __joint)
   (setq _speed (float __speed))
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float32[7] _joint
    (* 4    7)
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[7] _joint
     (dotimes (i 7)
       (sys::poke (elt _joint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[7] _joint
   (dotimes (i (length _joint))
     (setf (elt _joint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_75_msgs::MoveJ :md5sum-) "22d46e6d96280e79ad6f5d786447086d")
(setf (get rm_75_msgs::MoveJ :datatype-) "rm_75_msgs/MoveJ")
(setf (get rm_75_msgs::MoveJ :definition-)
      "float32[7] joint
float32 speed

")



(provide :rm_75_msgs/MoveJ "22d46e6d96280e79ad6f5d786447086d")



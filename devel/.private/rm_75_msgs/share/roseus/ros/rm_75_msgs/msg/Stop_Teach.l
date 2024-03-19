;; Auto-generated. Do not edit!


(when (boundp 'rm_75_msgs::Stop_Teach)
  (if (not (find-package "RM_75_MSGS"))
    (make-package "RM_75_MSGS"))
  (shadow 'Stop_Teach (find-package "RM_75_MSGS")))
(unless (find-package "RM_75_MSGS::STOP_TEACH")
  (make-package "RM_75_MSGS::STOP_TEACH"))

(in-package "ROS")
;;//! \htmlinclude Stop_Teach.msg.html


(defclass rm_75_msgs::Stop_Teach
  :super ros::object
  :slots (_teach_stop ))

(defmethod rm_75_msgs::Stop_Teach
  (:init
   (&key
    ((:teach_stop __teach_stop) "")
    )
   (send-super :init)
   (setq _teach_stop (string __teach_stop))
   self)
  (:teach_stop
   (&optional __teach_stop)
   (if __teach_stop (setq _teach_stop __teach_stop)) _teach_stop)
  (:serialization-length
   ()
   (+
    ;; string _teach_stop
    4 (length _teach_stop)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _teach_stop
       (write-long (length _teach_stop) s) (princ _teach_stop s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _teach_stop
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _teach_stop (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rm_75_msgs::Stop_Teach :md5sum-) "92f5433909a48bf4fc2cea4eb11481b4")
(setf (get rm_75_msgs::Stop_Teach :datatype-) "rm_75_msgs/Stop_Teach")
(setf (get rm_75_msgs::Stop_Teach :definition-)
      "#示教停止
string teach_stop

")



(provide :rm_75_msgs/Stop_Teach "92f5433909a48bf4fc2cea4eb11481b4")



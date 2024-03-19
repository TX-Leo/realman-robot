;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::Plan_State)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'Plan_State (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::PLAN_STATE")
  (make-package "DUAL_ARM_MSGS::PLAN_STATE"))

(in-package "ROS")
;;//! \htmlinclude Plan_State.msg.html


(defclass dual_arm_msgs::Plan_State
  :super ros::object
  :slots (_state ))

(defmethod dual_arm_msgs::Plan_State
  (:init
   (&key
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dual_arm_msgs::Plan_State :md5sum-) "001fde3cab9e313a150416ff09c08ee4")
(setf (get dual_arm_msgs::Plan_State :datatype-) "dual_arm_msgs/Plan_State")
(setf (get dual_arm_msgs::Plan_State :definition-)
      "bool state

")



(provide :dual_arm_msgs/Plan_State "001fde3cab9e313a150416ff09c08ee4")



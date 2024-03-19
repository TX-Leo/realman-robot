;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::GetArmState_Command)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'GetArmState_Command (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::GETARMSTATE_COMMAND")
  (make-package "DUAL_ARM_MSGS::GETARMSTATE_COMMAND"))

(in-package "ROS")
;;//! \htmlinclude GetArmState_Command.msg.html


(defclass dual_arm_msgs::GetArmState_Command
  :super ros::object
  :slots (_command ))

(defmethod dual_arm_msgs::GetArmState_Command
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dual_arm_msgs::GetArmState_Command :md5sum-) "cba5e21e920a3a2b7b375cb65b64cdea")
(setf (get dual_arm_msgs::GetArmState_Command :datatype-) "dual_arm_msgs/GetArmState_Command")
(setf (get dual_arm_msgs::GetArmState_Command :definition-)
      "string command

")



(provide :dual_arm_msgs/GetArmState_Command "cba5e21e920a3a2b7b375cb65b64cdea")



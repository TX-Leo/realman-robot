;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::Tool_Analog_Output)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'Tool_Analog_Output (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::TOOL_ANALOG_OUTPUT")
  (make-package "DUAL_ARM_MSGS::TOOL_ANALOG_OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude Tool_Analog_Output.msg.html


(defclass dual_arm_msgs::Tool_Analog_Output
  :super ros::object
  :slots (_voltage ))

(defmethod dual_arm_msgs::Tool_Analog_Output
  (:init
   (&key
    ((:voltage __voltage) 0.0)
    )
   (send-super :init)
   (setq _voltage (float __voltage))
   self)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:serialization-length
   ()
   (+
    ;; float32 _voltage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dual_arm_msgs::Tool_Analog_Output :md5sum-) "403c816563820ece8af98cc50c8ea1ff")
(setf (get dual_arm_msgs::Tool_Analog_Output :datatype-) "dual_arm_msgs/Tool_Analog_Output")
(setf (get dual_arm_msgs::Tool_Analog_Output :definition-)
      "
float32 voltage

")



(provide :dual_arm_msgs/Tool_Analog_Output "403c816563820ece8af98cc50c8ea1ff")



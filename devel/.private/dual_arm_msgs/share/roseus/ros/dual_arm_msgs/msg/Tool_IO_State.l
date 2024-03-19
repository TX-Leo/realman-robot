;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::Tool_IO_State)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'Tool_IO_State (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::TOOL_IO_STATE")
  (make-package "DUAL_ARM_MSGS::TOOL_IO_STATE"))

(in-package "ROS")
;;//! \htmlinclude Tool_IO_State.msg.html


(defclass dual_arm_msgs::Tool_IO_State
  :super ros::object
  :slots (_Tool_Digital_Input _Tool_Analog_Input ))

(defmethod dual_arm_msgs::Tool_IO_State
  (:init
   (&key
    ((:Tool_Digital_Input __Tool_Digital_Input) (let (r) (dotimes (i 2) (push nil r)) r))
    ((:Tool_Analog_Input __Tool_Analog_Input) 0.0)
    )
   (send-super :init)
   (setq _Tool_Digital_Input __Tool_Digital_Input)
   (setq _Tool_Analog_Input (float __Tool_Analog_Input))
   self)
  (:Tool_Digital_Input
   (&optional __Tool_Digital_Input)
   (if __Tool_Digital_Input (setq _Tool_Digital_Input __Tool_Digital_Input)) _Tool_Digital_Input)
  (:Tool_Analog_Input
   (&optional __Tool_Analog_Input)
   (if __Tool_Analog_Input (setq _Tool_Analog_Input __Tool_Analog_Input)) _Tool_Analog_Input)
  (:serialization-length
   ()
   (+
    ;; bool[2] _Tool_Digital_Input
    (* 1    2)
    ;; float32 _Tool_Analog_Input
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[2] _Tool_Digital_Input
     (dotimes (i 2)
       (if (elt _Tool_Digital_Input i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float32 _Tool_Analog_Input
       (sys::poke _Tool_Analog_Input (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[2] _Tool_Digital_Input
   (dotimes (i (length _Tool_Digital_Input))
     (setf (elt _Tool_Digital_Input i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; float32 _Tool_Analog_Input
     (setq _Tool_Analog_Input (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dual_arm_msgs::Tool_IO_State :md5sum-) "d7adff68dc996b192b01391906704f92")
(setf (get dual_arm_msgs::Tool_IO_State :datatype-) "dual_arm_msgs/Tool_IO_State")
(setf (get dual_arm_msgs::Tool_IO_State :definition-)
      "bool[2] Tool_Digital_Input
float32 Tool_Analog_Input

")



(provide :dual_arm_msgs/Tool_IO_State "d7adff68dc996b192b01391906704f92")


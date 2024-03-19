;; Auto-generated. Do not edit!


(when (boundp 'dual_arm_msgs::Turtle_Driver)
  (if (not (find-package "DUAL_ARM_MSGS"))
    (make-package "DUAL_ARM_MSGS"))
  (shadow 'Turtle_Driver (find-package "DUAL_ARM_MSGS")))
(unless (find-package "DUAL_ARM_MSGS::TURTLE_DRIVER")
  (make-package "DUAL_ARM_MSGS::TURTLE_DRIVER"))

(in-package "ROS")
;;//! \htmlinclude Turtle_Driver.msg.html


(defclass dual_arm_msgs::Turtle_Driver
  :super ros::object
  :slots (_message_type _robot_mac_address _vx _vy _vtheta ))

(defmethod dual_arm_msgs::Turtle_Driver
  (:init
   (&key
    ((:message_type __message_type) "")
    ((:robot_mac_address __robot_mac_address) "")
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vtheta __vtheta) 0.0)
    )
   (send-super :init)
   (setq _message_type (string __message_type))
   (setq _robot_mac_address (string __robot_mac_address))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vtheta (float __vtheta))
   self)
  (:message_type
   (&optional __message_type)
   (if __message_type (setq _message_type __message_type)) _message_type)
  (:robot_mac_address
   (&optional __robot_mac_address)
   (if __robot_mac_address (setq _robot_mac_address __robot_mac_address)) _robot_mac_address)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vtheta
   (&optional __vtheta)
   (if __vtheta (setq _vtheta __vtheta)) _vtheta)
  (:serialization-length
   ()
   (+
    ;; string _message_type
    4 (length _message_type)
    ;; string _robot_mac_address
    4 (length _robot_mac_address)
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _vtheta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message_type
       (write-long (length _message_type) s) (princ _message_type s)
     ;; string _robot_mac_address
       (write-long (length _robot_mac_address) s) (princ _robot_mac_address s)
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vtheta
       (sys::poke _vtheta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_mac_address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_mac_address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vtheta
     (setq _vtheta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dual_arm_msgs::Turtle_Driver :md5sum-) "e45b8bb2656522faceb0751bacf648f4")
(setf (get dual_arm_msgs::Turtle_Driver :datatype-) "dual_arm_msgs/Turtle_Driver")
(setf (get dual_arm_msgs::Turtle_Driver :definition-)
      "#对Turtle海龟底盘的操作
string message_type     #消息类型,\"move\"为移动
string robot_mac_address    #Turtle底盘的MAC地址
float32 vx    #X轴方向速度
float32 vy    #Y轴方向速度
float32 vtheta    #

")



(provide :dual_arm_msgs/Turtle_Driver "e45b8bb2656522faceb0751bacf648f4")



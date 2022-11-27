;; Auto-generated. Do not edit!


(when (boundp 'gazebo_sensor_collection::BatteryData)
  (if (not (find-package "GAZEBO_SENSOR_COLLECTION"))
    (make-package "GAZEBO_SENSOR_COLLECTION"))
  (shadow 'BatteryData (find-package "GAZEBO_SENSOR_COLLECTION")))
(unless (find-package "GAZEBO_SENSOR_COLLECTION::BATTERYDATA")
  (make-package "GAZEBO_SENSOR_COLLECTION::BATTERYDATA"))

(in-package "ROS")
;;//! \htmlinclude BatteryData.msg.html


(defclass gazebo_sensor_collection::BatteryData
  :super ros::object
  :slots (_stamp _voltage _vmax _vmin ))

(defmethod gazebo_sensor_collection::BatteryData
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:voltage __voltage) 0.0)
    ((:vmax __vmax) 0.0)
    ((:vmin __vmin) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _voltage (float __voltage))
   (setq _vmax (float __vmax))
   (setq _vmin (float __vmin))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:vmax
   (&optional __vmax)
   (if __vmax (setq _vmax __vmax)) _vmax)
  (:vmin
   (&optional __vmin)
   (if __vmin (setq _vmin __vmin)) _vmin)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float64 _voltage
    8
    ;; float64 _vmax
    8
    ;; float64 _vmin
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float64 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vmax
       (sys::poke _vmax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vmin
       (sys::poke _vmin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _voltage
     (setq _voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vmax
     (setq _vmax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vmin
     (setq _vmin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gazebo_sensor_collection::BatteryData :md5sum-) "6a9bbba12ac00a99cf3603ae02c56555")
(setf (get gazebo_sensor_collection::BatteryData :datatype-) "gazebo_sensor_collection/BatteryData")
(setf (get gazebo_sensor_collection::BatteryData :definition-)
      "time stamp
float64 voltage
float64 vmax
float64 vmin

")



(provide :gazebo_sensor_collection/BatteryData "6a9bbba12ac00a99cf3603ae02c56555")



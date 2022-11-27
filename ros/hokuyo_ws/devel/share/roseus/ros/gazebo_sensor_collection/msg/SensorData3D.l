;; Auto-generated. Do not edit!


(when (boundp 'gazebo_sensor_collection::SensorData3D)
  (if (not (find-package "GAZEBO_SENSOR_COLLECTION"))
    (make-package "GAZEBO_SENSOR_COLLECTION"))
  (shadow 'SensorData3D (find-package "GAZEBO_SENSOR_COLLECTION")))
(unless (find-package "GAZEBO_SENSOR_COLLECTION::SENSORDATA3D")
  (make-package "GAZEBO_SENSOR_COLLECTION::SENSORDATA3D"))

(in-package "ROS")
;;//! \htmlinclude SensorData3D.msg.html


(defclass gazebo_sensor_collection::SensorData3D
  :super ros::object
  :slots (_x _y _z _covariance _bias _offset ))

(defmethod gazebo_sensor_collection::SensorData3D
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:covariance __covariance) (instance gazebo_sensor_collection::DataXYZ :init))
    ((:bias __bias) (instance gazebo_sensor_collection::DataXYZ :init))
    ((:offset __offset) (instance gazebo_sensor_collection::DataXYZ :init))
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _covariance __covariance)
   (setq _bias __bias)
   (setq _offset __offset)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:covariance
   (&rest __covariance)
   (if (keywordp (car __covariance))
       (send* _covariance __covariance)
     (progn
       (if __covariance (setq _covariance (car __covariance)))
       _covariance)))
  (:bias
   (&rest __bias)
   (if (keywordp (car __bias))
       (send* _bias __bias)
     (progn
       (if __bias (setq _bias (car __bias)))
       _bias)))
  (:offset
   (&rest __offset)
   (if (keywordp (car __offset))
       (send* _offset __offset)
     (progn
       (if __offset (setq _offset (car __offset)))
       _offset)))
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; gazebo_sensor_collection/DataXYZ _covariance
    (send _covariance :serialization-length)
    ;; gazebo_sensor_collection/DataXYZ _bias
    (send _bias :serialization-length)
    ;; gazebo_sensor_collection/DataXYZ _offset
    (send _offset :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; gazebo_sensor_collection/DataXYZ _covariance
       (send _covariance :serialize s)
     ;; gazebo_sensor_collection/DataXYZ _bias
       (send _bias :serialize s)
     ;; gazebo_sensor_collection/DataXYZ _offset
       (send _offset :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; gazebo_sensor_collection/DataXYZ _covariance
     (send _covariance :deserialize buf ptr-) (incf ptr- (send _covariance :serialization-length))
   ;; gazebo_sensor_collection/DataXYZ _bias
     (send _bias :deserialize buf ptr-) (incf ptr- (send _bias :serialization-length))
   ;; gazebo_sensor_collection/DataXYZ _offset
     (send _offset :deserialize buf ptr-) (incf ptr- (send _offset :serialization-length))
   ;;
   self)
  )

(setf (get gazebo_sensor_collection::SensorData3D :md5sum-) "513fdfd0e6bee20a157cc975187a992e")
(setf (get gazebo_sensor_collection::SensorData3D :datatype-) "gazebo_sensor_collection/SensorData3D")
(setf (get gazebo_sensor_collection::SensorData3D :definition-)
      "float64 x
float64 y
float64 z
DataXYZ covariance
DataXYZ bias
DataXYZ offset

================================================================================
MSG: gazebo_sensor_collection/DataXYZ
float64 x
float64 y
float64 z

")



(provide :gazebo_sensor_collection/SensorData3D "513fdfd0e6bee20a157cc975187a992e")



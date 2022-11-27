;; Auto-generated. Do not edit!


(when (boundp 'gazebo_sensor_collection::OrientationSensorData)
  (if (not (find-package "GAZEBO_SENSOR_COLLECTION"))
    (make-package "GAZEBO_SENSOR_COLLECTION"))
  (shadow 'OrientationSensorData (find-package "GAZEBO_SENSOR_COLLECTION")))
(unless (find-package "GAZEBO_SENSOR_COLLECTION::ORIENTATIONSENSORDATA")
  (make-package "GAZEBO_SENSOR_COLLECTION::ORIENTATIONSENSORDATA"))

(in-package "ROS")
;;//! \htmlinclude OrientationSensorData.msg.html


(defclass gazebo_sensor_collection::OrientationSensorData
  :super ros::object
  :slots (_x _y _z _w _covariance _bias ))

(defmethod gazebo_sensor_collection::OrientationSensorData
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:w __w) 0.0)
    ((:covariance __covariance) (instance gazebo_sensor_collection::EulerData :init))
    ((:bias __bias) (instance gazebo_sensor_collection::QuaternionData :init))
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _w (float __w))
   (setq _covariance __covariance)
   (setq _bias __bias)
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
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
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
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _w
    8
    ;; gazebo_sensor_collection/EulerData _covariance
    (send _covariance :serialization-length)
    ;; gazebo_sensor_collection/QuaternionData _bias
    (send _bias :serialization-length)
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
     ;; float64 _w
       (sys::poke _w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; gazebo_sensor_collection/EulerData _covariance
       (send _covariance :serialize s)
     ;; gazebo_sensor_collection/QuaternionData _bias
       (send _bias :serialize s)
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
   ;; float64 _w
     (setq _w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; gazebo_sensor_collection/EulerData _covariance
     (send _covariance :deserialize buf ptr-) (incf ptr- (send _covariance :serialization-length))
   ;; gazebo_sensor_collection/QuaternionData _bias
     (send _bias :deserialize buf ptr-) (incf ptr- (send _bias :serialization-length))
   ;;
   self)
  )

(setf (get gazebo_sensor_collection::OrientationSensorData :md5sum-) "e34d80bf8481ce2ab0668f1f26f72964")
(setf (get gazebo_sensor_collection::OrientationSensorData :datatype-) "gazebo_sensor_collection/OrientationSensorData")
(setf (get gazebo_sensor_collection::OrientationSensorData :definition-)
      "float64 x
float64 y
float64 z
float64 w
EulerData covariance
QuaternionData bias

================================================================================
MSG: gazebo_sensor_collection/EulerData
float64 roll
float64 pitch
float64 yaw

================================================================================
MSG: gazebo_sensor_collection/QuaternionData
float64 x
float64 y
float64 z
float64 w

")



(provide :gazebo_sensor_collection/OrientationSensorData "e34d80bf8481ce2ab0668f1f26f72964")



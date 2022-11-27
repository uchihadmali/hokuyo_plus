;; Auto-generated. Do not edit!


(when (boundp 'gazebo_sensor_collection::ImuData)
  (if (not (find-package "GAZEBO_SENSOR_COLLECTION"))
    (make-package "GAZEBO_SENSOR_COLLECTION"))
  (shadow 'ImuData (find-package "GAZEBO_SENSOR_COLLECTION")))
(unless (find-package "GAZEBO_SENSOR_COLLECTION::IMUDATA")
  (make-package "GAZEBO_SENSOR_COLLECTION::IMUDATA"))

(in-package "ROS")
;;//! \htmlinclude ImuData.msg.html


(defclass gazebo_sensor_collection::ImuData
  :super ros::object
  :slots (_stamp _accel _gyro _orientation ))

(defmethod gazebo_sensor_collection::ImuData
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:accel __accel) (instance gazebo_sensor_collection::SensorData3D :init))
    ((:gyro __gyro) (instance gazebo_sensor_collection::SensorData3D :init))
    ((:orientation __orientation) (instance gazebo_sensor_collection::OrientationSensorData :init))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _accel __accel)
   (setq _gyro __gyro)
   (setq _orientation __orientation)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:gyro
   (&rest __gyro)
   (if (keywordp (car __gyro))
       (send* _gyro __gyro)
     (progn
       (if __gyro (setq _gyro (car __gyro)))
       _gyro)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; gazebo_sensor_collection/SensorData3D _accel
    (send _accel :serialization-length)
    ;; gazebo_sensor_collection/SensorData3D _gyro
    (send _gyro :serialization-length)
    ;; gazebo_sensor_collection/OrientationSensorData _orientation
    (send _orientation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; gazebo_sensor_collection/SensorData3D _accel
       (send _accel :serialize s)
     ;; gazebo_sensor_collection/SensorData3D _gyro
       (send _gyro :serialize s)
     ;; gazebo_sensor_collection/OrientationSensorData _orientation
       (send _orientation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; gazebo_sensor_collection/SensorData3D _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;; gazebo_sensor_collection/SensorData3D _gyro
     (send _gyro :deserialize buf ptr-) (incf ptr- (send _gyro :serialization-length))
   ;; gazebo_sensor_collection/OrientationSensorData _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;;
   self)
  )

(setf (get gazebo_sensor_collection::ImuData :md5sum-) "4dd12c4714f677eadc16e5447a415b6a")
(setf (get gazebo_sensor_collection::ImuData :datatype-) "gazebo_sensor_collection/ImuData")
(setf (get gazebo_sensor_collection::ImuData :definition-)
      "time stamp
SensorData3D accel
SensorData3D gyro
OrientationSensorData orientation

================================================================================
MSG: gazebo_sensor_collection/SensorData3D
float64 x
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

================================================================================
MSG: gazebo_sensor_collection/OrientationSensorData
float64 x
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



(provide :gazebo_sensor_collection/ImuData "4dd12c4714f677eadc16e5447a415b6a")



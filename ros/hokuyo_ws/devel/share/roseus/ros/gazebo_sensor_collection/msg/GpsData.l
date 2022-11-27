;; Auto-generated. Do not edit!


(when (boundp 'gazebo_sensor_collection::GpsData)
  (if (not (find-package "GAZEBO_SENSOR_COLLECTION"))
    (make-package "GAZEBO_SENSOR_COLLECTION"))
  (shadow 'GpsData (find-package "GAZEBO_SENSOR_COLLECTION")))
(unless (find-package "GAZEBO_SENSOR_COLLECTION::GPSDATA")
  (make-package "GAZEBO_SENSOR_COLLECTION::GPSDATA"))

(in-package "ROS")
;;//! \htmlinclude GpsData.msg.html


(defclass gazebo_sensor_collection::GpsData
  :super ros::object
  :slots (_stamp _latitude _longitude _altitude _reference_latitude _reference_longitude _reference_altitude _reference_heading _velocity _covariance _covariance_type _service _status ))

(defmethod gazebo_sensor_collection::GpsData
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:reference_latitude __reference_latitude) 0.0)
    ((:reference_longitude __reference_longitude) 0.0)
    ((:reference_altitude __reference_altitude) 0.0)
    ((:reference_heading __reference_heading) 0.0)
    ((:velocity __velocity) (instance gazebo_sensor_collection::DataXYZ :init))
    ((:covariance __covariance) (instance gazebo_sensor_collection::DataXYZ :init))
    ((:covariance_type __covariance_type) 0)
    ((:service __service) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _reference_latitude (float __reference_latitude))
   (setq _reference_longitude (float __reference_longitude))
   (setq _reference_altitude (float __reference_altitude))
   (setq _reference_heading (float __reference_heading))
   (setq _velocity __velocity)
   (setq _covariance __covariance)
   (setq _covariance_type (round __covariance_type))
   (setq _service (round __service))
   (setq _status (round __status))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:reference_latitude
   (&optional __reference_latitude)
   (if __reference_latitude (setq _reference_latitude __reference_latitude)) _reference_latitude)
  (:reference_longitude
   (&optional __reference_longitude)
   (if __reference_longitude (setq _reference_longitude __reference_longitude)) _reference_longitude)
  (:reference_altitude
   (&optional __reference_altitude)
   (if __reference_altitude (setq _reference_altitude __reference_altitude)) _reference_altitude)
  (:reference_heading
   (&optional __reference_heading)
   (if __reference_heading (setq _reference_heading __reference_heading)) _reference_heading)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:covariance
   (&rest __covariance)
   (if (keywordp (car __covariance))
       (send* _covariance __covariance)
     (progn
       (if __covariance (setq _covariance (car __covariance)))
       _covariance)))
  (:covariance_type
   (&optional __covariance_type)
   (if __covariance_type (setq _covariance_type __covariance_type)) _covariance_type)
  (:service
   (&optional __service)
   (if __service (setq _service __service)) _service)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _reference_latitude
    8
    ;; float64 _reference_longitude
    8
    ;; float64 _reference_altitude
    8
    ;; float64 _reference_heading
    8
    ;; gazebo_sensor_collection/DataXYZ _velocity
    (send _velocity :serialization-length)
    ;; gazebo_sensor_collection/DataXYZ _covariance
    (send _covariance :serialization-length)
    ;; uint8 _covariance_type
    1
    ;; uint16 _service
    2
    ;; int8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _reference_latitude
       (sys::poke _reference_latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _reference_longitude
       (sys::poke _reference_longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _reference_altitude
       (sys::poke _reference_altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _reference_heading
       (sys::poke _reference_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; gazebo_sensor_collection/DataXYZ _velocity
       (send _velocity :serialize s)
     ;; gazebo_sensor_collection/DataXYZ _covariance
       (send _covariance :serialize s)
     ;; uint8 _covariance_type
       (write-byte _covariance_type s)
     ;; uint16 _service
       (write-word _service s)
     ;; int8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _reference_latitude
     (setq _reference_latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _reference_longitude
     (setq _reference_longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _reference_altitude
     (setq _reference_altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _reference_heading
     (setq _reference_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; gazebo_sensor_collection/DataXYZ _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; gazebo_sensor_collection/DataXYZ _covariance
     (send _covariance :deserialize buf ptr-) (incf ptr- (send _covariance :serialization-length))
   ;; uint8 _covariance_type
     (setq _covariance_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _service
     (setq _service (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;;
   self)
  )

(setf (get gazebo_sensor_collection::GpsData :md5sum-) "c8616250764453b7cd4fbceca47db6ba")
(setf (get gazebo_sensor_collection::GpsData :datatype-) "gazebo_sensor_collection/GpsData")
(setf (get gazebo_sensor_collection::GpsData :definition-)
      "time stamp
float64 latitude
float64 longitude
float64 altitude
float64 reference_latitude
float64 reference_longitude
float64 reference_altitude
float64 reference_heading
DataXYZ velocity
DataXYZ covariance
uint8 covariance_type
uint16 service
int8 status

================================================================================
MSG: gazebo_sensor_collection/DataXYZ
float64 x
float64 y
float64 z

")



(provide :gazebo_sensor_collection/GpsData "c8616250764453b7cd4fbceca47db6ba")



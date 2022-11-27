;; Auto-generated. Do not edit!


(when (boundp 'gazebo_sensor_collection::EncoderData)
  (if (not (find-package "GAZEBO_SENSOR_COLLECTION"))
    (make-package "GAZEBO_SENSOR_COLLECTION"))
  (shadow 'EncoderData (find-package "GAZEBO_SENSOR_COLLECTION")))
(unless (find-package "GAZEBO_SENSOR_COLLECTION::ENCODERDATA")
  (make-package "GAZEBO_SENSOR_COLLECTION::ENCODERDATA"))

(in-package "ROS")
;;//! \htmlinclude EncoderData.msg.html


(defclass gazebo_sensor_collection::EncoderData
  :super ros::object
  :slots (_stamp _id _position _speed _qpps ))

(defmethod gazebo_sensor_collection::EncoderData
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:id __id) 0)
    ((:position __position) 0.0)
    ((:speed __speed) 0.0)
    ((:qpps __qpps) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _id (round __id))
   (setq _position (float __position))
   (setq _speed (float __speed))
   (setq _qpps (float __qpps))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:qpps
   (&optional __qpps)
   (if __qpps (setq _qpps __qpps)) _qpps)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; int32 _id
    4
    ;; float64 _position
    8
    ;; float64 _speed
    8
    ;; float64 _qpps
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int32 _id
       (write-long _id s)
     ;; float64 _position
       (sys::poke _position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qpps
       (sys::poke _qpps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _position
     (setq _position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qpps
     (setq _qpps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gazebo_sensor_collection::EncoderData :md5sum-) "e2549cfa0ef2aec74010dcef181ee872")
(setf (get gazebo_sensor_collection::EncoderData :datatype-) "gazebo_sensor_collection/EncoderData")
(setf (get gazebo_sensor_collection::EncoderData :definition-)
      "time stamp
int32 id
float64 position
float64 speed
float64 qpps

")



(provide :gazebo_sensor_collection/EncoderData "e2549cfa0ef2aec74010dcef181ee872")



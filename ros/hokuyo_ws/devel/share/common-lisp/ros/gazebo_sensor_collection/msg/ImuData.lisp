; Auto-generated. Do not edit!


(cl:in-package gazebo_sensor_collection-msg)


;//! \htmlinclude ImuData.msg.html

(cl:defclass <ImuData> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (accel
    :reader accel
    :initarg :accel
    :type gazebo_sensor_collection-msg:SensorData3D
    :initform (cl:make-instance 'gazebo_sensor_collection-msg:SensorData3D))
   (gyro
    :reader gyro
    :initarg :gyro
    :type gazebo_sensor_collection-msg:SensorData3D
    :initform (cl:make-instance 'gazebo_sensor_collection-msg:SensorData3D))
   (orientation
    :reader orientation
    :initarg :orientation
    :type gazebo_sensor_collection-msg:OrientationSensorData
    :initform (cl:make-instance 'gazebo_sensor_collection-msg:OrientationSensorData)))
)

(cl:defclass ImuData (<ImuData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImuData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImuData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_sensor_collection-msg:<ImuData> is deprecated: use gazebo_sensor_collection-msg:ImuData instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:stamp-val is deprecated.  Use gazebo_sensor_collection-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <ImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:accel-val is deprecated.  Use gazebo_sensor_collection-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'gyro-val :lambda-list '(m))
(cl:defmethod gyro-val ((m <ImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:gyro-val is deprecated.  Use gazebo_sensor_collection-msg:gyro instead.")
  (gyro m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <ImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:orientation-val is deprecated.  Use gazebo_sensor_collection-msg:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImuData>) ostream)
  "Serializes a message object of type '<ImuData>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyro) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImuData>) istream)
  "Deserializes a message object of type '<ImuData>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyro) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImuData>)))
  "Returns string type for a message object of type '<ImuData>"
  "gazebo_sensor_collection/ImuData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImuData)))
  "Returns string type for a message object of type 'ImuData"
  "gazebo_sensor_collection/ImuData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImuData>)))
  "Returns md5sum for a message object of type '<ImuData>"
  "4dd12c4714f677eadc16e5447a415b6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImuData)))
  "Returns md5sum for a message object of type 'ImuData"
  "4dd12c4714f677eadc16e5447a415b6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImuData>)))
  "Returns full string definition for message of type '<ImuData>"
  (cl:format cl:nil "time stamp~%SensorData3D accel~%SensorData3D gyro~%OrientationSensorData orientation~%~%================================================================================~%MSG: gazebo_sensor_collection/SensorData3D~%float64 x~%float64 y~%float64 z~%DataXYZ covariance~%DataXYZ bias~%DataXYZ offset~%~%================================================================================~%MSG: gazebo_sensor_collection/DataXYZ~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: gazebo_sensor_collection/OrientationSensorData~%float64 x~%float64 y~%float64 z~%float64 w~%EulerData covariance~%QuaternionData bias~%~%================================================================================~%MSG: gazebo_sensor_collection/EulerData~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: gazebo_sensor_collection/QuaternionData~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImuData)))
  "Returns full string definition for message of type 'ImuData"
  (cl:format cl:nil "time stamp~%SensorData3D accel~%SensorData3D gyro~%OrientationSensorData orientation~%~%================================================================================~%MSG: gazebo_sensor_collection/SensorData3D~%float64 x~%float64 y~%float64 z~%DataXYZ covariance~%DataXYZ bias~%DataXYZ offset~%~%================================================================================~%MSG: gazebo_sensor_collection/DataXYZ~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: gazebo_sensor_collection/OrientationSensorData~%float64 x~%float64 y~%float64 z~%float64 w~%EulerData covariance~%QuaternionData bias~%~%================================================================================~%MSG: gazebo_sensor_collection/EulerData~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: gazebo_sensor_collection/QuaternionData~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImuData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyro))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImuData>))
  "Converts a ROS message object to a list"
  (cl:list 'ImuData
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':accel (accel msg))
    (cl:cons ':gyro (gyro msg))
    (cl:cons ':orientation (orientation msg))
))

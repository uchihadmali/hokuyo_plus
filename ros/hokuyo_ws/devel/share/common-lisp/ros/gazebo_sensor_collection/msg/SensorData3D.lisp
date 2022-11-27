; Auto-generated. Do not edit!


(cl:in-package gazebo_sensor_collection-msg)


;//! \htmlinclude SensorData3D.msg.html

(cl:defclass <SensorData3D> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (covariance
    :reader covariance
    :initarg :covariance
    :type gazebo_sensor_collection-msg:DataXYZ
    :initform (cl:make-instance 'gazebo_sensor_collection-msg:DataXYZ))
   (bias
    :reader bias
    :initarg :bias
    :type gazebo_sensor_collection-msg:DataXYZ
    :initform (cl:make-instance 'gazebo_sensor_collection-msg:DataXYZ))
   (offset
    :reader offset
    :initarg :offset
    :type gazebo_sensor_collection-msg:DataXYZ
    :initform (cl:make-instance 'gazebo_sensor_collection-msg:DataXYZ)))
)

(cl:defclass SensorData3D (<SensorData3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorData3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorData3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_sensor_collection-msg:<SensorData3D> is deprecated: use gazebo_sensor_collection-msg:SensorData3D instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SensorData3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:x-val is deprecated.  Use gazebo_sensor_collection-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SensorData3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:y-val is deprecated.  Use gazebo_sensor_collection-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <SensorData3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:z-val is deprecated.  Use gazebo_sensor_collection-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <SensorData3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:covariance-val is deprecated.  Use gazebo_sensor_collection-msg:covariance instead.")
  (covariance m))

(cl:ensure-generic-function 'bias-val :lambda-list '(m))
(cl:defmethod bias-val ((m <SensorData3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:bias-val is deprecated.  Use gazebo_sensor_collection-msg:bias instead.")
  (bias m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <SensorData3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:offset-val is deprecated.  Use gazebo_sensor_collection-msg:offset instead.")
  (offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorData3D>) ostream)
  "Serializes a message object of type '<SensorData3D>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'covariance) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bias) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offset) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorData3D>) istream)
  "Deserializes a message object of type '<SensorData3D>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'covariance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bias) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offset) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorData3D>)))
  "Returns string type for a message object of type '<SensorData3D>"
  "gazebo_sensor_collection/SensorData3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorData3D)))
  "Returns string type for a message object of type 'SensorData3D"
  "gazebo_sensor_collection/SensorData3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorData3D>)))
  "Returns md5sum for a message object of type '<SensorData3D>"
  "513fdfd0e6bee20a157cc975187a992e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorData3D)))
  "Returns md5sum for a message object of type 'SensorData3D"
  "513fdfd0e6bee20a157cc975187a992e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorData3D>)))
  "Returns full string definition for message of type '<SensorData3D>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%DataXYZ covariance~%DataXYZ bias~%DataXYZ offset~%~%================================================================================~%MSG: gazebo_sensor_collection/DataXYZ~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorData3D)))
  "Returns full string definition for message of type 'SensorData3D"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%DataXYZ covariance~%DataXYZ bias~%DataXYZ offset~%~%================================================================================~%MSG: gazebo_sensor_collection/DataXYZ~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorData3D>))
  (cl:+ 0
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'covariance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bias))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offset))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorData3D>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorData3D
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':covariance (covariance msg))
    (cl:cons ':bias (bias msg))
    (cl:cons ':offset (offset msg))
))

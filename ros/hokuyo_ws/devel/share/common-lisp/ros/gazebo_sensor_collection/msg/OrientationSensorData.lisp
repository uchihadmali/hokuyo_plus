; Auto-generated. Do not edit!


(cl:in-package gazebo_sensor_collection-msg)


;//! \htmlinclude OrientationSensorData.msg.html

(cl:defclass <OrientationSensorData> (roslisp-msg-protocol:ros-message)
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
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0)
   (covariance
    :reader covariance
    :initarg :covariance
    :type gazebo_sensor_collection-msg:EulerData
    :initform (cl:make-instance 'gazebo_sensor_collection-msg:EulerData))
   (bias
    :reader bias
    :initarg :bias
    :type gazebo_sensor_collection-msg:QuaternionData
    :initform (cl:make-instance 'gazebo_sensor_collection-msg:QuaternionData)))
)

(cl:defclass OrientationSensorData (<OrientationSensorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OrientationSensorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OrientationSensorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_sensor_collection-msg:<OrientationSensorData> is deprecated: use gazebo_sensor_collection-msg:OrientationSensorData instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <OrientationSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:x-val is deprecated.  Use gazebo_sensor_collection-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <OrientationSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:y-val is deprecated.  Use gazebo_sensor_collection-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <OrientationSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:z-val is deprecated.  Use gazebo_sensor_collection-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <OrientationSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:w-val is deprecated.  Use gazebo_sensor_collection-msg:w instead.")
  (w m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <OrientationSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:covariance-val is deprecated.  Use gazebo_sensor_collection-msg:covariance instead.")
  (covariance m))

(cl:ensure-generic-function 'bias-val :lambda-list '(m))
(cl:defmethod bias-val ((m <OrientationSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:bias-val is deprecated.  Use gazebo_sensor_collection-msg:bias instead.")
  (bias m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OrientationSensorData>) ostream)
  "Serializes a message object of type '<OrientationSensorData>"
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w))))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OrientationSensorData>) istream)
  "Deserializes a message object of type '<OrientationSensorData>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'covariance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bias) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OrientationSensorData>)))
  "Returns string type for a message object of type '<OrientationSensorData>"
  "gazebo_sensor_collection/OrientationSensorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrientationSensorData)))
  "Returns string type for a message object of type 'OrientationSensorData"
  "gazebo_sensor_collection/OrientationSensorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OrientationSensorData>)))
  "Returns md5sum for a message object of type '<OrientationSensorData>"
  "e34d80bf8481ce2ab0668f1f26f72964")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OrientationSensorData)))
  "Returns md5sum for a message object of type 'OrientationSensorData"
  "e34d80bf8481ce2ab0668f1f26f72964")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OrientationSensorData>)))
  "Returns full string definition for message of type '<OrientationSensorData>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%float64 w~%EulerData covariance~%QuaternionData bias~%~%================================================================================~%MSG: gazebo_sensor_collection/EulerData~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: gazebo_sensor_collection/QuaternionData~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OrientationSensorData)))
  "Returns full string definition for message of type 'OrientationSensorData"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%float64 w~%EulerData covariance~%QuaternionData bias~%~%================================================================================~%MSG: gazebo_sensor_collection/EulerData~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: gazebo_sensor_collection/QuaternionData~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OrientationSensorData>))
  (cl:+ 0
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'covariance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bias))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OrientationSensorData>))
  "Converts a ROS message object to a list"
  (cl:list 'OrientationSensorData
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':w (w msg))
    (cl:cons ':covariance (covariance msg))
    (cl:cons ':bias (bias msg))
))

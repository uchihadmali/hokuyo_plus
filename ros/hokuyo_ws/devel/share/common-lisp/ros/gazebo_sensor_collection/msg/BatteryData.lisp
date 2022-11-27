; Auto-generated. Do not edit!


(cl:in-package gazebo_sensor_collection-msg)


;//! \htmlinclude BatteryData.msg.html

(cl:defclass <BatteryData> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (vmax
    :reader vmax
    :initarg :vmax
    :type cl:float
    :initform 0.0)
   (vmin
    :reader vmin
    :initarg :vmin
    :type cl:float
    :initform 0.0))
)

(cl:defclass BatteryData (<BatteryData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_sensor_collection-msg:<BatteryData> is deprecated: use gazebo_sensor_collection-msg:BatteryData instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <BatteryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:stamp-val is deprecated.  Use gazebo_sensor_collection-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <BatteryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:voltage-val is deprecated.  Use gazebo_sensor_collection-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'vmax-val :lambda-list '(m))
(cl:defmethod vmax-val ((m <BatteryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:vmax-val is deprecated.  Use gazebo_sensor_collection-msg:vmax instead.")
  (vmax m))

(cl:ensure-generic-function 'vmin-val :lambda-list '(m))
(cl:defmethod vmin-val ((m <BatteryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_sensor_collection-msg:vmin-val is deprecated.  Use gazebo_sensor_collection-msg:vmin instead.")
  (vmin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryData>) ostream)
  "Serializes a message object of type '<BatteryData>"
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vmax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vmin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryData>) istream)
  "Deserializes a message object of type '<BatteryData>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vmax) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vmin) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryData>)))
  "Returns string type for a message object of type '<BatteryData>"
  "gazebo_sensor_collection/BatteryData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryData)))
  "Returns string type for a message object of type 'BatteryData"
  "gazebo_sensor_collection/BatteryData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryData>)))
  "Returns md5sum for a message object of type '<BatteryData>"
  "6a9bbba12ac00a99cf3603ae02c56555")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryData)))
  "Returns md5sum for a message object of type 'BatteryData"
  "6a9bbba12ac00a99cf3603ae02c56555")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryData>)))
  "Returns full string definition for message of type '<BatteryData>"
  (cl:format cl:nil "time stamp~%float64 voltage~%float64 vmax~%float64 vmin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryData)))
  "Returns full string definition for message of type 'BatteryData"
  (cl:format cl:nil "time stamp~%float64 voltage~%float64 vmax~%float64 vmin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryData>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryData>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryData
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':vmax (vmax msg))
    (cl:cons ':vmin (vmin msg))
))

// Auto-generated. Do not edit!

// (in-package gazebo_sensor_collection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SensorData3D = require('./SensorData3D.js');
let OrientationSensorData = require('./OrientationSensorData.js');

//-----------------------------------------------------------

class ImuData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.accel = null;
      this.gyro = null;
      this.orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = new SensorData3D();
      }
      if (initObj.hasOwnProperty('gyro')) {
        this.gyro = initObj.gyro
      }
      else {
        this.gyro = new SensorData3D();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new OrientationSensorData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImuData
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [accel]
    bufferOffset = SensorData3D.serialize(obj.accel, buffer, bufferOffset);
    // Serialize message field [gyro]
    bufferOffset = SensorData3D.serialize(obj.gyro, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = OrientationSensorData.serialize(obj.orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImuData
    let len;
    let data = new ImuData(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [accel]
    data.accel = SensorData3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyro]
    data.gyro = SensorData3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = OrientationSensorData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 288;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gazebo_sensor_collection/ImuData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4dd12c4714f677eadc16e5447a415b6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImuData(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.accel !== undefined) {
      resolved.accel = SensorData3D.Resolve(msg.accel)
    }
    else {
      resolved.accel = new SensorData3D()
    }

    if (msg.gyro !== undefined) {
      resolved.gyro = SensorData3D.Resolve(msg.gyro)
    }
    else {
      resolved.gyro = new SensorData3D()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = OrientationSensorData.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new OrientationSensorData()
    }

    return resolved;
    }
};

module.exports = ImuData;

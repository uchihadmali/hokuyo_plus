// Auto-generated. Do not edit!

// (in-package gazebo_sensor_collection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DataXYZ = require('./DataXYZ.js');

//-----------------------------------------------------------

class SensorData3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.covariance = null;
      this.bias = null;
      this.offset = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new DataXYZ();
      }
      if (initObj.hasOwnProperty('bias')) {
        this.bias = initObj.bias
      }
      else {
        this.bias = new DataXYZ();
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = new DataXYZ();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorData3D
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [covariance]
    bufferOffset = DataXYZ.serialize(obj.covariance, buffer, bufferOffset);
    // Serialize message field [bias]
    bufferOffset = DataXYZ.serialize(obj.bias, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = DataXYZ.serialize(obj.offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorData3D
    let len;
    let data = new SensorData3D(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = DataXYZ.deserialize(buffer, bufferOffset);
    // Deserialize message field [bias]
    data.bias = DataXYZ.deserialize(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = DataXYZ.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gazebo_sensor_collection/SensorData3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '513fdfd0e6bee20a157cc975187a992e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorData3D(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = DataXYZ.Resolve(msg.covariance)
    }
    else {
      resolved.covariance = new DataXYZ()
    }

    if (msg.bias !== undefined) {
      resolved.bias = DataXYZ.Resolve(msg.bias)
    }
    else {
      resolved.bias = new DataXYZ()
    }

    if (msg.offset !== undefined) {
      resolved.offset = DataXYZ.Resolve(msg.offset)
    }
    else {
      resolved.offset = new DataXYZ()
    }

    return resolved;
    }
};

module.exports = SensorData3D;

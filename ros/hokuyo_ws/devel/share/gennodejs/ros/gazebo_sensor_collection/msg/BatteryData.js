// Auto-generated. Do not edit!

// (in-package gazebo_sensor_collection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BatteryData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.voltage = null;
      this.vmax = null;
      this.vmin = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('vmax')) {
        this.vmax = initObj.vmax
      }
      else {
        this.vmax = 0.0;
      }
      if (initObj.hasOwnProperty('vmin')) {
        this.vmin = initObj.vmin
      }
      else {
        this.vmin = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryData
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.float64(obj.voltage, buffer, bufferOffset);
    // Serialize message field [vmax]
    bufferOffset = _serializer.float64(obj.vmax, buffer, bufferOffset);
    // Serialize message field [vmin]
    bufferOffset = _serializer.float64(obj.vmin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryData
    let len;
    let data = new BatteryData(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vmax]
    data.vmax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vmin]
    data.vmin = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gazebo_sensor_collection/BatteryData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a9bbba12ac00a99cf3603ae02c56555';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    float64 voltage
    float64 vmax
    float64 vmin
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryData(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.vmax !== undefined) {
      resolved.vmax = msg.vmax;
    }
    else {
      resolved.vmax = 0.0
    }

    if (msg.vmin !== undefined) {
      resolved.vmin = msg.vmin;
    }
    else {
      resolved.vmin = 0.0
    }

    return resolved;
    }
};

module.exports = BatteryData;

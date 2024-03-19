// Auto-generated. Do not edit!

// (in-package dual_arm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Servo_GetAngle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servo_id = null;
    }
    else {
      if (initObj.hasOwnProperty('servo_id')) {
        this.servo_id = initObj.servo_id
      }
      else {
        this.servo_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Servo_GetAngle
    // Serialize message field [servo_id]
    bufferOffset = _serializer.uint16(obj.servo_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Servo_GetAngle
    let len;
    let data = new Servo_GetAngle(null);
    // Deserialize message field [servo_id]
    data.servo_id = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dual_arm_msgs/Servo_GetAngle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44a63dfe689e2d7241879f9eb59bd488';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #读取舵机角度位置值
    uint16 servo_id	#舵机ID
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Servo_GetAngle(null);
    if (msg.servo_id !== undefined) {
      resolved.servo_id = msg.servo_id;
    }
    else {
      resolved.servo_id = 0
    }

    return resolved;
    }
};

module.exports = Servo_GetAngle;

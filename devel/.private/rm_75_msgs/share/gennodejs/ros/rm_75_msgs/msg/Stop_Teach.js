// Auto-generated. Do not edit!

// (in-package rm_75_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Stop_Teach {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.teach_stop = null;
    }
    else {
      if (initObj.hasOwnProperty('teach_stop')) {
        this.teach_stop = initObj.teach_stop
      }
      else {
        this.teach_stop = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Stop_Teach
    // Serialize message field [teach_stop]
    bufferOffset = _serializer.string(obj.teach_stop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Stop_Teach
    let len;
    let data = new Stop_Teach(null);
    // Deserialize message field [teach_stop]
    data.teach_stop = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.teach_stop.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_75_msgs/Stop_Teach';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92f5433909a48bf4fc2cea4eb11481b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #示教停止
    string teach_stop
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Stop_Teach(null);
    if (msg.teach_stop !== undefined) {
      resolved.teach_stop = msg.teach_stop;
    }
    else {
      resolved.teach_stop = ''
    }

    return resolved;
    }
};

module.exports = Stop_Teach;

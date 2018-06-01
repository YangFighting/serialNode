// Auto-generated. Do not edit!

// (in-package serialnode.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class position {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.t = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = '';
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = '';
      }
      if (initObj.hasOwnProperty('t')) {
        this.t = initObj.t
      }
      else {
        this.t = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type position
    // Serialize message field [x]
    bufferOffset = _serializer.string(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.string(obj.y, buffer, bufferOffset);
    // Serialize message field [t]
    bufferOffset = _serializer.string(obj.t, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type position
    let len;
    let data = new position(null);
    // Deserialize message field [x]
    data.x = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [t]
    data.t = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.x.length;
    length += object.y.length;
    length += object.t.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'serialnode/position';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd66668aabc9e40d78e13110532323445';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string x
    string y
    string t
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new position(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = ''
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = ''
    }

    if (msg.t !== undefined) {
      resolved.t = msg.t;
    }
    else {
      resolved.t = ''
    }

    return resolved;
    }
};

module.exports = position;

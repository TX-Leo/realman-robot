
"use strict";

let Stop = require('./Stop.js');
let Arm_Analog_Output = require('./Arm_Analog_Output.js');
let Gripper_Set = require('./Gripper_Set.js');
let Lift_Speed = require('./Lift_Speed.js');
let Tool_Analog_Output = require('./Tool_Analog_Output.js');
let Hand_Force = require('./Hand_Force.js');
let Pos_Teach = require('./Pos_Teach.js');
let Plan_State = require('./Plan_State.js');
let Lift_Height = require('./Lift_Height.js');
let Tool_IO_State = require('./Tool_IO_State.js');
let Joint_Enable = require('./Joint_Enable.js');
let Stop_Teach = require('./Stop_Teach.js');
let Arm_Digital_Output = require('./Arm_Digital_Output.js');
let Tool_Digital_Output = require('./Tool_Digital_Output.js');
let MoveC = require('./MoveC.js');
let Hand_Speed = require('./Hand_Speed.js');
let Gripper_Pick = require('./Gripper_Pick.js');
let Joint_Teach = require('./Joint_Teach.js');
let Hand_Angle = require('./Hand_Angle.js');
let MoveL = require('./MoveL.js');
let Arm_IO_State = require('./Arm_IO_State.js');
let Hand_Posture = require('./Hand_Posture.js');
let MoveJ = require('./MoveJ.js');
let Turtle_Driver = require('./Turtle_Driver.js');
let JointPos = require('./JointPos.js');
let Hand_Seq = require('./Hand_Seq.js');
let IO_Update = require('./IO_Update.js');

module.exports = {
  Stop: Stop,
  Arm_Analog_Output: Arm_Analog_Output,
  Gripper_Set: Gripper_Set,
  Lift_Speed: Lift_Speed,
  Tool_Analog_Output: Tool_Analog_Output,
  Hand_Force: Hand_Force,
  Pos_Teach: Pos_Teach,
  Plan_State: Plan_State,
  Lift_Height: Lift_Height,
  Tool_IO_State: Tool_IO_State,
  Joint_Enable: Joint_Enable,
  Stop_Teach: Stop_Teach,
  Arm_Digital_Output: Arm_Digital_Output,
  Tool_Digital_Output: Tool_Digital_Output,
  MoveC: MoveC,
  Hand_Speed: Hand_Speed,
  Gripper_Pick: Gripper_Pick,
  Joint_Teach: Joint_Teach,
  Hand_Angle: Hand_Angle,
  MoveL: MoveL,
  Arm_IO_State: Arm_IO_State,
  Hand_Posture: Hand_Posture,
  MoveJ: MoveJ,
  Turtle_Driver: Turtle_Driver,
  JointPos: JointPos,
  Hand_Seq: Hand_Seq,
  IO_Update: IO_Update,
};

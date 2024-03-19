
"use strict";

let Stop = require('./Stop.js');
let Servo_Move = require('./Servo_Move.js');
let ChangeTool_State = require('./ChangeTool_State.js');
let Force_Position_Move_Pose = require('./Force_Position_Move_Pose.js');
let Arm_Analog_Output = require('./Arm_Analog_Output.js');
let Gripper_Set = require('./Gripper_Set.js');
let Joint_Step = require('./Joint_Step.js');
let Lift_Speed = require('./Lift_Speed.js');
let Manual_Set_Force_Pose = require('./Manual_Set_Force_Pose.js');
let Tool_Analog_Output = require('./Tool_Analog_Output.js');
let Hand_Force = require('./Hand_Force.js');
let Pos_Teach = require('./Pos_Teach.js');
let ChangeWorkFrame_State = require('./ChangeWorkFrame_State.js');
let Servo_GetAngle = require('./Servo_GetAngle.js');
let Plan_State = require('./Plan_State.js');
let Lift_Height = require('./Lift_Height.js');
let Tool_IO_State = require('./Tool_IO_State.js');
let Joint_Enable = require('./Joint_Enable.js');
let Stop_Teach = require('./Stop_Teach.js');
let Arm_Digital_Output = require('./Arm_Digital_Output.js');
let Arm_Current_State = require('./Arm_Current_State.js');
let Tool_Digital_Output = require('./Tool_Digital_Output.js');
let MoveC = require('./MoveC.js');
let Force_Position_Move_Joint = require('./Force_Position_Move_Joint.js');
let Hand_Speed = require('./Hand_Speed.js');
let GetArmState_Command = require('./GetArmState_Command.js');
let Gripper_Pick = require('./Gripper_Pick.js');
let Joint_Teach = require('./Joint_Teach.js');
let Six_Force = require('./Six_Force.js');
let LiftState = require('./LiftState.js');
let CartePos = require('./CartePos.js');
let Hand_Angle = require('./Hand_Angle.js');
let ChangeTool_Name = require('./ChangeTool_Name.js');
let MoveJ_P = require('./MoveJ_P.js');
let Joint_Current = require('./Joint_Current.js');
let MoveL = require('./MoveL.js');
let Arm_IO_State = require('./Arm_IO_State.js');
let ArmState = require('./ArmState.js');
let Hand_Posture = require('./Hand_Posture.js');
let Start_Multi_Drag_Teach = require('./Start_Multi_Drag_Teach.js');
let MoveJ = require('./MoveJ.js');
let Force_Position_State = require('./Force_Position_State.js');
let Turtle_Driver = require('./Turtle_Driver.js');
let JointPos = require('./JointPos.js');
let ChangeWorkFrame_Name = require('./ChangeWorkFrame_Name.js');
let Hand_Seq = require('./Hand_Seq.js');
let Set_Force_Position = require('./Set_Force_Position.js');
let Ort_Teach = require('./Ort_Teach.js');
let IO_Update = require('./IO_Update.js');
let Socket_Command = require('./Socket_Command.js');

module.exports = {
  Stop: Stop,
  Servo_Move: Servo_Move,
  ChangeTool_State: ChangeTool_State,
  Force_Position_Move_Pose: Force_Position_Move_Pose,
  Arm_Analog_Output: Arm_Analog_Output,
  Gripper_Set: Gripper_Set,
  Joint_Step: Joint_Step,
  Lift_Speed: Lift_Speed,
  Manual_Set_Force_Pose: Manual_Set_Force_Pose,
  Tool_Analog_Output: Tool_Analog_Output,
  Hand_Force: Hand_Force,
  Pos_Teach: Pos_Teach,
  ChangeWorkFrame_State: ChangeWorkFrame_State,
  Servo_GetAngle: Servo_GetAngle,
  Plan_State: Plan_State,
  Lift_Height: Lift_Height,
  Tool_IO_State: Tool_IO_State,
  Joint_Enable: Joint_Enable,
  Stop_Teach: Stop_Teach,
  Arm_Digital_Output: Arm_Digital_Output,
  Arm_Current_State: Arm_Current_State,
  Tool_Digital_Output: Tool_Digital_Output,
  MoveC: MoveC,
  Force_Position_Move_Joint: Force_Position_Move_Joint,
  Hand_Speed: Hand_Speed,
  GetArmState_Command: GetArmState_Command,
  Gripper_Pick: Gripper_Pick,
  Joint_Teach: Joint_Teach,
  Six_Force: Six_Force,
  LiftState: LiftState,
  CartePos: CartePos,
  Hand_Angle: Hand_Angle,
  ChangeTool_Name: ChangeTool_Name,
  MoveJ_P: MoveJ_P,
  Joint_Current: Joint_Current,
  MoveL: MoveL,
  Arm_IO_State: Arm_IO_State,
  ArmState: ArmState,
  Hand_Posture: Hand_Posture,
  Start_Multi_Drag_Teach: Start_Multi_Drag_Teach,
  MoveJ: MoveJ,
  Force_Position_State: Force_Position_State,
  Turtle_Driver: Turtle_Driver,
  JointPos: JointPos,
  ChangeWorkFrame_Name: ChangeWorkFrame_Name,
  Hand_Seq: Hand_Seq,
  Set_Force_Position: Set_Force_Position,
  Ort_Teach: Ort_Teach,
  IO_Update: IO_Update,
  Socket_Command: Socket_Command,
};

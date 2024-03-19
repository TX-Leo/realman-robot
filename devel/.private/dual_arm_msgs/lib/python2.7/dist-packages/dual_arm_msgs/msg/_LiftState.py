# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dual_arm_msgs/LiftState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class LiftState(genpy.Message):
  _md5sum = "c5ca7de51eef8dade42274475c73f94f"
  _type = "dual_arm_msgs/LiftState"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int16 height	#当前高度
int16 current	#当前电流
uint16 err_flag	#驱动错误代码
byte mode	#当前升降状态，0-空闲，1-正方向速度运动，2-正方向位置运动，3-负方向速度运动，4-负方向位置运动

"""
  __slots__ = ['height','current','err_flag','mode']
  _slot_types = ['int16','int16','uint16','byte']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       height,current,err_flag,mode

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LiftState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.height is None:
        self.height = 0
      if self.current is None:
        self.current = 0
      if self.err_flag is None:
        self.err_flag = 0
      if self.mode is None:
        self.mode = 0
    else:
      self.height = 0
      self.current = 0
      self.err_flag = 0
      self.mode = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2hHb().pack(_x.height, _x.current, _x.err_flag, _x.mode))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 7
      (_x.height, _x.current, _x.err_flag, _x.mode,) = _get_struct_2hHb().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2hHb().pack(_x.height, _x.current, _x.err_flag, _x.mode))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 7
      (_x.height, _x.current, _x.err_flag, _x.mode,) = _get_struct_2hHb().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2hHb = None
def _get_struct_2hHb():
    global _struct_2hHb
    if _struct_2hHb is None:
        _struct_2hHb = struct.Struct("<2hHb")
    return _struct_2hHb

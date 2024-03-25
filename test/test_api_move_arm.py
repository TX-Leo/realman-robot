# from log_setting import CommonLog
# from robotic_arm import Arm

# from robotic_arm_package.CommonLog import *
# from robotic_arm_package.robotic_arm import *
from robotic_arm_package_3.robotic_arm import Arm


# logger_ = logging.getLogger(__name__)
# logger_ = CommonLog(logger_)

host = '192.168.10.18'
port = 8080
arm = Arm(dev_mode=2,ip=host)
# arm.change_frame()
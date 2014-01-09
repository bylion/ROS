#!/usr/bin/env python
import roslib; roslib.load_manifest('multip')
import rospy
from geometry_msgs.msg import Twist
from std_srvs.srv import Empty


def talker():
    # publish to cmd_vel
    
    rospy.init_node('pub2')
    clear_bg = rospy.ServiceProxy('/turtlesim1/clear', Empty)
    clear_bg.close()
    clear_bg.call()
    rospy.init_node('pub2')
    clear_bg = rospy.ServiceProxy('/turtlesim2/clear', Empty)
    clear_bg.call()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

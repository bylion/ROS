#!/usr/bin/env python
import rospy
from std_msgs.msg import String


def talker():
    pub = rospy.Publisher('chatter', String)
    rospy.init_node('hello')

    while not rospy.is_shutdown():
        for i in range(10):
	    str = "hello world %s" % i
	    rospy.loginfo(str)
	    pub.publish(String(str))
	    rospy.sleep(1.0)

        for i in range(10):
            str = "Goodbye %s" % i
	    rospy.loginfo(str)
	    pub.publish(String(str))
	    rospy.sleep(1.0)
    
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

#!/usr/bin/env python
import roslib; roslib.load_manifest('multip')
import rospy
from geometry_msgs.msg import Twist



def talker():
    # publish to cmd_vel
    pub = rospy.Publisher('/turtle3/cmd_vel', Twist)
    rospy.init_node('pub3')
    
	
    # create a twist message, fill in the details
    twist = Twist()
    twist.linear.x = 0;                   # our forward speed
    twist.linear.y = 0; twist.linear.z = 0;     # we can't use these!        
    twist.angular.x = 0; twist.angular.y = 0;   #          or these!
    twist.angular.z = 1.8;                        # no rotation

    # announce move, and publish the message
    rospy.loginfo("About to be moving forward!")
    sleeptime=3
    while not rospy.is_shutdown():
        pub.publish(twist)
        rospy.sleep(sleeptime)

    # create a new message
    twist = Twist()
    pub.publish(twist)

    rospy.loginfo("Stopping!")




if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

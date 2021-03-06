#!/usr/bin/env python
import roslib; roslib.load_manifest('multip')
import rospy
from geometry_msgs.msg import Twist


def talker():
    # publish to cmd_vel
    pub = rospy.Publisher('/turtle2/cmd_vel', Twist)
    rospy.init_node('pub2')

    # create a twist message, fill in the details
    twist_forward = Twist()
    xspeed=3
    twist_forward.linear.x = xspeed;                   # our forward speed
    twist_forward.linear.y = 0; twist_forward.linear.z = 0;     # we can't use these!        
    twist_forward.angular.x = 0; twist_forward.angular.y = 0;   #          or these!
    twist_forward.angular.z = 0;                        # no rotation
    
    twist_backward = Twist()
    twist_backward.linear.x = -xspeed;                   # our forward speed
    twist_backward.linear.y = 0; twist_backward.linear.z = 0;     # we can't use these!        
    twist_backward.angular.x = 0; twist_backward.angular.y = 0;   #          or these!
    twist_backward.angular.z = 0;                        # no rotation

    # announce move, and publish the message
    rospy.loginfo("About to be moving forward!")
    sleeptime=3
    while not rospy.is_shutdown():
        pub.publish(twist_forward) 
        pub.publish(twist_backward)

    # create a new message
    twist = Twist()
    pub.publish(twist)

    rospy.loginfo("Stopping!")




if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

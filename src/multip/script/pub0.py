#!/usr/bin/env python
import roslib; roslib.load_manifest('multip')
import rospy
from geometry_msgs.msg import Twist


def talker():
    # publish to cmd_vel
    pub = rospy.Publisher('/turtle1/cmd_vel', Twist)
    rospy.init_node('pub1')

    # create a twist message, fill in the details
    twist = Twist()
    twist.linear.x = 2;                   # our forward speed
    twist.linear.y = 0; twist.linear.z = 0;     # we can't use these!        
    twist.angular.x = 0; twist.angular.y = 0;   #          or these!
    twist.angular.z = 0;                        # no rotation
    

    # announce move, and publish the message
    rospy.loginfo("About to be moving forward!")
    for i in range(30):
        pub.publish(twist)
        rospy.sleep(0.1) # 30*0.1 = 3.0

    # create a new message
    twist = Twist()

    # note: everything defaults to 0 in twist, if we don't fill it in, we stop!
    rospy.loginfo("Stopping!")
    pub.publish(twist)



if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

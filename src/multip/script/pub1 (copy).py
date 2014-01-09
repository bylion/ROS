#!/usr/bin/env python
import roslib; roslib.load_manifest('multip')
import rospy
import turtlesim.srv
import turtlesim.msg
from geometry_msgs.msg import Twist

from geometry_msgs.msg import Vector3

def subcallback(data):
    rospy.loginfo(data.y)

def talker():
    # publish to cmd_vel    
    rospy.init_node('pub1')
    rospy.wait_for_service('spawn')
    call_turt = rospy.ServiceProxy('spawn', turtlesim.srv.Spawn)
    call_turt(1,5,1.57079632679,"turtle2")
    call_turt(5.5,4.5,0.0,"turtle3")
    call_turt(4,8,0.0,"turtle4")

    pub1 = rospy.Publisher('/turtle1/cmd_vel', Twist)
    pub2 = rospy.Publisher('/turtle2/cmd_vel', Twist)
    sub2 = rospy.Subscriber('/turtle2/pose',turtlesim.msg.Pose,subcallback)
    pub3 = rospy.Publisher('/turtle3/cmd_vel', Twist)
    pub4 = rospy.Publisher('/turtle4/cmd_vel', Twist)


    # announce move, and publish the message
    rospy.loginfo("About to be moving forward!")
    
    # 0.5
    rate = rospy.Rate(10)
    count=0
    #while not rospy.is_shutdown():
    
    #rate.sleep()
    #rospy.loginfo("About to be moving forward!")
    #while not rospy.is_shutdown():
    for i in range(3):
        rate.sleep()
        rate.sleep()
	count = count + 1
        pub1.publish(Twist(Vector3(2.0, 0.0, 0.0), Vector3(0.0, 0.0, 1.8)))
        pub3.publish(Twist(Vector3(0.0, 0.0, 0.0), Vector3(0.0, 0.0, 1.8)))
        #
        

        if count % 2 == 0:
            pub2.publish(Twist(Vector3(3, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
            pub4.publish(Twist(Vector3(1, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
        else:
            pub2.publish(Twist(Vector3(-3, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
            pub4.publish(Twist(Vector3(-1, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
	rate.sleep()
        rate.sleep()
        


if __name__ == '__main__':
    talker()

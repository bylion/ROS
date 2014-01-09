#!/usr/bin/env python
import roslib; roslib.load_manifest('multip')
import rospy
import turtlesim.srv
import turtlesim.msg
from geometry_msgs.msg import Twist

from geometry_msgs.msg import Vector3



def subcallback2(data):
    global _flag2
    global pub2
    global _record_y2
    global _record_moveornot2
    #rospy.loginfo(data.y)
    #rospy.loginfo(_record_y2)
    if data.y  >= 7 or data.y <= 3:
        _flag2=False
        _record_y2=data.y
        pub2.publish(Twist(Vector3(-2, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
    if data.y+2  <=_record_y2:
	_flag2=True
        pub2.publish(Twist(Vector3(2, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
    if _record_moveornot2 == data.y:
        pub2.publish(Twist(Vector3(2, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
    _record_moveornot2=data.y
      

def subcallback4(data):
    global _flag4
    global pub4
    global _record_y4
    global _record_moveornot4
    rospy.loginfo(data.x)
    rospy.loginfo(_record_y4)
    if data.x  >= 6 or data.x <= 2:
        _flag4=False
        _record_y4=data.y
        pub4.publish(Twist(Vector3(-2, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
    if data.x+2  <=_record_y4:
	_flag4=True
        pub4.publish(Twist(Vector3(2, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
    if _record_moveornot4 == data.x:
        pub4.publish(Twist(Vector3(2, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
    _record_moveornot4=data.x



def talker():
    global _flag2
    global pub1
    global pub2
    global pub3
    global pub4

    # announce move, and publish the message
    rospy.loginfo("About to be moving forward!")
    
    # 0.5
    #while not rospy.is_shutdown():
    rate = rospy.Rate(2)
    #rate.sleep()
    #rospy.loginfo("About to be moving forward!")
    for i in range(1):
        rospy.loginfo("try")
        rate.sleep()
        pub1.publish(Twist(Vector3(2.0, 0.0, 0.0), Vector3(0.0, 0.0, 1.8)))
        pub3.publish(Twist(Vector3(0.0, 0.0, 0.0), Vector3(0.0, 0.0, 1.8)))
        if _flag2:
            pub2.publish(Twist(Vector3(2, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
            pub4.publish(Twist(Vector3(2, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
        else:
            pub2.publish(Twist(Vector3(-2, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
            pub4.publish(Twist(Vector3(-2, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))


    while not rospy.is_shutdown():
        rate.sleep()
        rate.sleep()
        rate.sleep()
        rate.sleep()
        pub1.publish(Twist(Vector3(2.0, 0.0, 0.0), Vector3(0.0, 0.0, 1.8)))
        pub3.publish(Twist(Vector3(0.0, 0.0, 0.0), Vector3(0.0, 0.0, 1.8)))
        



_flag2=True
_record_y2=0
_record_moveornot2=0;
_flag4=True
_record_y4=0
_record_moveornot4=0;
# publish to cmd_vel    
rospy.init_node('pub1')
#rospy.wait_for_service('spawn')
call_turt = rospy.ServiceProxy('spawn', turtlesim.srv.Spawn)
call_turt(1,5,1.57079632679,"turtle2")
call_turt(5.5,4.5,0.0,"turtle3")
call_turt(4,8,0.0,"turtle4")
pub1 = rospy.Publisher('/turtle1/cmd_vel', Twist)
pub2 = rospy.Publisher('/turtle2/cmd_vel', Twist)
sub2 = rospy.Subscriber('/turtle2/pose',turtlesim.msg.Pose,subcallback2)
pub3 = rospy.Publisher('/turtle3/cmd_vel', Twist)
pub4 = rospy.Publisher('/turtle4/cmd_vel', Twist)
sub4 = rospy.Subscriber('/turtle4/pose',turtlesim.msg.Pose,subcallback4)




if __name__ == '__main__':
    talker()

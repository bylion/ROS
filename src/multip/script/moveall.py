#!/usr/bin/env python
import roslib
roslib.load_manifest('multip')
import rospy
import turtlesim.msg
import turtlesim.srv
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Vector3

if __name__ == '__main__':
        rospy.init_node('turtle_tracker')
        rospy.wait_for_service('spawn')
        spawner = rospy.ServiceProxy('spawn', turtlesim.srv.Spawn)
        #Spawn
        spawner(5.5, 6.5, 0, 'turtle2')
        #PI / 2 = 1.57079632679
        spawner(2, 2, 1.57079632679, 'turtle3')

        spawner(8, 8, 0.0, 'turtle4')

        #Publisher
        #Central one
        turtle1_vel = rospy.Publisher('turtle1/cmd_vel', Twist)
        #Circle one
        turtle2_vel = rospy.Publisher('turtle2/cmd_vel', Twist)
        #Top left
        turtle3_vel = rospy.Publisher('turtle3/cmd_vel', Twist)
        #Bottom right
        turtle4_vel = rospy.Publisher('turtle4/cmd_vel', Twist)

        rate = rospy.Rate(3)

        count = 0

        while not rospy.is_shutdown():
                count = count + 1
                turtle1_vel.publish(Twist(Vector3(0.0, 0.0, 0.0), Vector3(0.0, 0.0, 2.0)))
                turtle2_vel.publish(Twist(Vector3(2.0, 0.0, 0.0), Vector3(0.0, 0.0, 1.8)))
                #
                if count % 2 == 0:
                        turtle3_vel.publish(Twist(Vector3(2.0, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
                        turtle4_vel.publish(Twist(Vector3(2.0, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
                else:
                        turtle3_vel.publish(Twist(Vector3(-2.0, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
                        turtle4_vel.publish(Twist(Vector3(-2.0, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
                rate.sleep()

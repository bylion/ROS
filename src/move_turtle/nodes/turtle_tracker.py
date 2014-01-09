#!/usr/bin/env python  
import roslib
roslib.load_manifest('move_turtle')
import rospy
import math
import tf
import turtlesim.msg
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Point

if __name__ == '__main__':
    rospy.init_node('turtle_tracker')
    
    rospy.loginfo("Initializing Turtle Tracker Node...")

    rate = rospy.get_param('~rate', 20)
    r = rospy.Rate(rate)

    # There is usually no need to change the fixed frame from the default
    fixed_frame = rospy.get_param('~fixed_frame', 'openni_depth_frame')

    # Get the list of skeleton frames we want to track
    tracker_frame = rospy.get_param('~tracker_frame', '')

    # Initialize the tf listener
    tf_listener = tf.TransformListener()

    #turtlename = rospy.get_param('~turtle')
    turtlename = 'turtle'
    turtle_vel = rospy.Publisher('/%s/cmd_vel' % turtlename, Twist)
    turtle_vel.publish(Twist(Vector3(2.0, 0.0, 0.0), Vector3(0.0, 0.0, 1.8)))

    rate = rospy.Rate(10.0)

    tf_listener.waitForTransform(fixed_frame, fixed_frame, rospy.Time(), rospy.Duration(60.0))

    # A flag to track when we have detected a skeleton
    skeleton_detected = False

    while not rospy.is_shutdown():
        #Default user 1
        skel_frame = tracker_frame + '_1'
        rospy.loginfo(skel_frame)
        try:
            (trans, rot)  = tf_listener.lookupTransform(fixed_frame, skel_frame, rospy.Time(0))
            #TODO: covert from hand to simulator
            angular = 4 * math.atan2(trans[1], trans[0])
            linear = 0.5 * math.sqrt(trans[0] ** 2 + trans[1] ** 2)
            rospy.loginfo(angular)
            rospy.loginfo(linear)
            turtle_vel.publish(Twist(Vector3(2.0, 0.0, 0.0), Vector3(0.0, 0.0, 1.8)))
        except:
            pass

        r.sleep()
#!/usr/bin/env python  
import roslib
roslib.load_manifest('move_turtle')
import rospy
import math
import tf
import turtlesim.msg
import turtlesim.srv
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Point

if __name__ == '__main__':
	rospy.init_node('tf_turtle')
	listener = tf.TransformListener()
	turtle_vel = rospy.Publisher('turtle1/cmd_vel', Twist)

	rate = rospy.Rate(10)
	fixed_frame = '/openni_depth_frame'
	right_hand = '/left_hand'
	#left_hand = rospy.get_param('~left_hand', 'right_hand')

	#listener.waitForTransform(fixed_frame, fixed_frame, rospy.Time(), rospy.Duration(60.0))
	firstRX = 0.05
	firstRY = 0.3
	
	# A flag to track when we have detected a skeleton
	skeleton_detected = False


	while not rospy.is_shutdown():
		#First time transform, detect user 1
		while not skeleton_detected:
			try:
				head_frame = frames[0]
				user_index = head_frame.replace('/head_', '')
				(trans, rot)  = listener.lookupTransform(fixed_frame, head_frame, rospy.Time(0))
				(right_hand_trans,rot) = listener.lookupTransform(fixed_frame, '/left_hand_1', rospy.Time(0))
				firstRX = right_hand[1]
				firstRY = right_hand[2]
				skeleton_detected = True
			except:
				skeleton_detected = False

		try:
			(right_hand_trans,rot) = listener.lookupTransform(fixed_frame, '/left_hand_1', rospy.Time(0))
			#(lef_hand_trans,rot) = listener.lookupTransform(fixed_frame, '/right_hand_1', rospy.Time(0))
			
			move_range = 0.2
			rotation_range = 0.2
			
			if right_hand_trans[2] > firstRY + move_range:
				#Up
				turtle_vel.publish(Twist(Vector3(2.0, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
			elif right_hand_trans[2] < firstRY - move_range:
				#Down
				turtle_vel.publish(Twist(Vector3(-2.0, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))
			elif right_hand_trans[1] > firstRX + rotation_range:
				#Rotation Left
				turtle_vel.publish(Twist(Vector3(0.0, 0.0, 0.0), Vector3(0.0, 0.0, 2.0)))
			elif right_hand_trans[1] < firstRX - rotation_range:
				#Rotation Right
				turtle_vel.publish(Twist(Vector3(0.0, 0.0, 0.0), Vector3(0.0, 0.0, -2.0)))
			else:
				#Stop
				turtle_vel.publish(Twist(Vector3(0.0, 0.0, 0.0), Vector3(0.0, 0.0, 0.0)))

		except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
			pass

		rate.sleep()
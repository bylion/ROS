rosservice call spawn 5 5 0.2 "turtle4"
rostopic pub /turtle4/cmd_vel geometry_msgs/Twist -r 1 -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 1.8]'

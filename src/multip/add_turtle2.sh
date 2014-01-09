rosservice call spawn 1 1 0.0 "turtle2"
rosservice call spawn 4 4 0.2 "turtle3"
rosservice call spawn 8 8 0.2 "turtle4"
rostopic pub /turtle4/cmd_vel geometry_msgs/Twist -r 1 -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 1.8]'

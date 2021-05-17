#!/bin/bash
source /home/pi/.bashrc
source /opt/ros/noetic/setup.bash
source /home/pi/ros_catkin_ws/devel/setup.bash
roslaunch c2_motion c2_motion.launch

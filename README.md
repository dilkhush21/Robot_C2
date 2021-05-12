# Robot_C2
It's is a Humanoid robot. Currently it is in developing stage.
## Project directory
- **gassistpi** -google assistant project

- **Robot_support_file** -  This folder contains config files

- **edubot** - Ros based motion of robot 

- **face recog** - face recognistion module

- **node_red_scripts**- It contains the UI and backend files 

- **robo.sh** - This is a script file to run ros launch file.
   It start the ros and robot's motion rosnode in background  (this script file will be automatically run by robot.services)

## Creating Image from Scratch
1) Take a blank memory card
2) Install latest version of raspbian from raspbian.org - Note down username and password for later use
3) Copy wifi_supplicant.conf (edit wifi settings) and ssh from "Robot_support_file" folder of repository to boot partition of the memory card
4)  Insert memory card to raspbarry pi
5)  Check ip of pi using ip scanner - you may narrow down the search range to IPs that you wifirouter is currently supporting
6)  Use "MobaXtern" or any SSH client to connect to the pi 
7)  Open GUI using command startlxde
8)  edit /etc/dphys-swapfile and change CONF_SWAPSIZE to 2048
10)  Open Chromium from startmenu bar
11)  Go to git repository and "Robot_support_file" to download opencv.sh and install_ROS.sh to pi's /home/pi folder
12)  In terminal use ```chmod +x  opencv.sh``` and ```chmod +x  install_ROS.sh```to give permission
13)  run opencv.sh using command ```\opencv.sh```. .
14)  The pi will automatically restart after completing the script
15)  To check whether opencv installed propely or not in your system use command ```python3``` on terminal and then ```import cv2```
16)  run install_ros.sh using command ```\install_ROS.sh```
17)  ros_workspace named ros_catkin_ws will be created automatically after using script install_ros.sh
18)  To check whether RoS is properly installled or not ,use command ```roscore``` to check
19)  if you get some output then you have succesfully installed  
20)  you have to install all ros packages inside that folder
21)  now copy the edukit_bot/src/edukit_bot folder from git to src folder of /home/pi/ros_catkin_ws
22)  use ```sudo nano ~/.bashrc``` command  and add ```source ~/ros_catkin_ws/devel/setup.bash``` 
23)  to compile the newly compiled package use ```catkin_make``` 
24)  2 min sir 
25)  
26)  

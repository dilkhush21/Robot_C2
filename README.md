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
3)  Copy wifi_supplicant.conf (edit wifi settings) and ssh from "Robot_support_file" folder of repository to boot partition of the memory card
4)  Insert memory card to raspbarry pi
5)  Check ip of pi using ip scanner - you may narrow down the search range to IPs that you wifirouter is currently supporting
6)  Use "MobaXtern" or any SSH client to connect to the pi 
7)  *Open GUI using command startlxde
8)  copy the downloaded git repo all files and folder to /home/pi 
9)  edit /etc/dphys-swapfile and change CONF_SWAPSIZE to 2048
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
21)  now copy the c2_motion(git folder) to  /home/pi/ros_catkin_ws
22)  use ```sudo nano ~/.bashrc``` command  and add ```source ~/ros_catkin_ws/devel/setup.bash``` 
23)  to compile the newly compiled package use ```catkin_make``` 
24)  Go into robot_support folder and execute config_file.sh ```.\config_file.sh```
25)  Install node-red by startmenu->prefrence->recommendedsoftware
26)  *start the node-red server by ```node-red``` command
27)  enter command ```sudo systemctl enable nodered.service``` to autostart nodered server at boot
28)  import the flow.json from node_red_scripts folder (
29)  add missing palette by going to manage palette section
30)  doownload following palette -> node-red-contrib-camerapi,node-red-contrib-dht-sensor,node-red-dashboard
31)  now we will install customised google assistant 
32)  use command ```sudo chmod +x ./GassistPi/scripts/gassist-installer.sh``` to make installer exectable and ```sudo  ./GassistPi/scripts/gassist-installer.sh``` to execute
33)  enter the details of the credential from robot_support_file/gassist_credential file 
34)  now install ros control app from playstore 
35)  enter pi ip adress and press connect button and it will connect
36)  go to add configuration and add joystic and screen
37)  now you can control your robot by android 

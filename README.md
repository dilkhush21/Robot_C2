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
15)  run opencv.sh using command ```\install_ROS.sh```

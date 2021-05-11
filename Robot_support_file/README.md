# what is the use and meaning of these files
- **Autostart** - This file is used to start the chrome in kiosk mode after bootup
- **robot.services** - This file is used to run robo.sh file after bootup
- **robo.sh** - This is a script file to run ros launch file.
   It start the ros and robot's motion rosnode in background  (this script file will be automatically run by robot.services)
- **ssh** - This file enables the ssh connection on pi 
- **wifi_supplicant.conf** - this files enables wifi connection of pi to router

## Move the files to the location  
| File | Location |
| ------ | ------ |
| Autostart | /etc/xdg/lxsession/LXDE-pi  |
| robot.service | /etc/systemd/system |

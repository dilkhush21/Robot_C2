# what is the use and meaning of these files
- [Autostart] - This file is used to start the chrome in kiosk mode after bootup
- [robot.services] - This file is used to run robo.sh file after bootup
- [robo.sh] - This is a script file to run ros launch file.
   It start the ros and robot's motion rosnode in background  (this script file will be automatically run by robot.services)

## Move the files to the location  
| File | Location |
| ------ | ------ |
| Robo.sh | /home/pi |
| Autostart | /etc/xdg/lxsession/LXDE-pi  |
| robot.service | /etc/systemd/system |
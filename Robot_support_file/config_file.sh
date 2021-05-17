#!/bin/bash
sudo cp /home/pi/Robot_support_file/autostart /etc/xdg/lxsession/LXDE-pi
sudo cp /home/pi/Robot_support_file/robot.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start robot.service
sudo systemctl stop robot.service
sudo systemctl status robot.service
sudo systemctl enable robot.service
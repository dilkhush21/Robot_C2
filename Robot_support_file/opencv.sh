#! /bin/sh
sudo apt-get update && sudo apt-get upgrade && sudo rpi-update
sudo nano /etc/dphys-swapfile
#CONF_SWAPSIZE=100
 CONF_SWAPSIZE=2048
sudo apt-get install -y build-essential cmake pkg-config
sudo apt-get install -y libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev
sudo apt-get install -y libgtk2.0-dev libgtk-3-dev
sudo apt-get install -y libatlas-base-dev gfortran

sudo apt-get install -y python3-dev
sudo apt-get install -y python3-pip

wget -O opencv.zip https://github.com/opencv/opencv/archive/4.1.0.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.1.0.zip
unzip opencv.zip
unzip opencv_contrib.zip

sudo pip3 -y install numpy

cd ~/opencv-4.1.0/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
 -D CMAKE_INSTALL_PREFIX=/usr/local \
 -D INSTALL_PYTHON_EXAMPLES=ON \
 -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-4.1.0/modules \
 -D BUILD_EXAMPLES=ON ..
 make -j4
 sudo make install && sudo ldconfig 
 sudo reboot
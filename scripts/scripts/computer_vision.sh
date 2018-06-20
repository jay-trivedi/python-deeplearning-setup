#!/bin/sh

sudo apt-get update
sudo apt-get -y upgrade

echo "Starting Computer Vision setup"
echo "Installing necessary libs"
sudo apt-get install -y libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install -y libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libatlas-base-dev libboost-all-dev
echo "Finished installing necessary libs"
echo "Installing Opencv 3.4.1"
pip install opencv-python

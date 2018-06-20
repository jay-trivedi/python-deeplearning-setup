#!/bin/sh

echo "Starting Basic Ubuntu setup"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y software-properties-common curl byobu vim tree p7zip-full
sudo apt-get install -y ubuntu-restricted-extras ubuntu-restricted-addons default-jre default-jdk
sudo apt-get install -y build-essential cmake pkg-config gfortran
sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime
echo "Basic Ubuntu setup complete"

#!/bin/sh

sudo apt-get update
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get -y update
sudo apt-get -y install oracle-java8-installer oracle-java8-set-default

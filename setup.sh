#!/bin/bash

# this is my Ubuntu enviroment as a Android Developer with the applicaions
# that I personaly need in my every day usage 


#update the system

sudo apt-get update && sudo apt-get upgrade -y
sudo apt update && sudo apt upgrade



#Increase the swap memory to 8G memory

sudo swapoff /swapfile
sudo fallocate -l 8G /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show



# add system tools

sudo apt-get install openconnect network-manager-openconnect-gnome
sudo apt-get install chrome-gnome-shell
sudo apt install gnome-shell-extension-manager
sudo add-apt-repository universe
sudo apt install gnome-tweaks
sudo apt install build-essential git curl jq

# extracting tools
sudo apt install -y rar unrar zip unzip p7zip-full p7zip-rar
# Android Tools
sudo apt-get install android-tools* -y

sudo apt install scrcpy

#Developer tools

#Java 
sudo apt-get update
sudo apt install default-jdk
java -version

#configaring java home location
update-alternatives --config java
sudo nano /etc/environment

#add this line to the end 
# JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin/java"
source /etc/environment
echo $JAVA_HOME


#installing applications
sudo add-apt-repository ppa:ubuntuhandbook1/rhythmbox
sudo apt install rhythmbox

sudo apt install stacer

sudo wget https://github.com/shiftkey/desktop/releases/download/release-3.1.1-linux1/GitHubDesktop-linux-3.1.1-linux1.deb
sudo apt-get install gdebi-core
sudo gdebi GitHubDesktop-linux-3.1.1-linux1.deb

sudo add-apt-repository ppa:maarten-fonville/android-studio
sudo apt update
sudo apt install android-studio -y

sudo apt update
sudo add-apt-repository ppa:mmk2410/intellij-idea -y
sudo apt install intellij-idea-community -y

sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install ffmpeg obs-studio

sudo apt-get install android-file-transfer

# the other applications can be downloaded as .deb package and install 
# as showen in the REDAME file
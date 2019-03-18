#!/bin/bash



# 
sudo apt update

# 安裝 Curl 下載工具
sudo apt-get install curl -y

sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/JackHack96/dell-xps-9570-ubuntu-respin/master/xps-tweaks.sh)"



sudo apt install r-base

#Rstudio

# Java 8
sudo add-apt-repository ppa:webupd8team/java 
sudo apt-get update
sudo apt-get install oracle-java8-installer

#JAVA_HOME="/usr/lib/jvm/java-8-oracle"



# ============================================================
# 網路應用
# ============================================================

# 安裝 Google Chrome 瀏覽器
curl -O -L https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install -y



# 安裝 Skype
curl -O -L https://go.skype.com/linux.deb
sudo dpkg -i skypeforlinux-64.deb
sudo apt-get -f install -y

# 安裝 Filezilla
sudo apt-get install filezilla -y

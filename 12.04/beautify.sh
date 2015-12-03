#!/bin/bash

# 安裝 Docky 一個類似 Mac OS 的 Dock 工具
sudo apt-get install docky -y

# 下載 Mac 桌布，需手動選擇套用
wget http://drive.noobslab.com/data/Mac-14.10/MBuntu-Wallpapers.zip
mkdir ~/Wallpapers
unzip MBuntu-Wallpapers.zip -d ~/Wallpapers

# 安裝佈景和圖示，需使用 Ubuntu Tweak 選擇套用
sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update
sudo apt-get install mac-os-lion-icons-v2 -y
sudo apt-get install mac-os-lion-theme-v2 -y

sudo add-apt-repository ppa:numix/ppa -y
sudo apt-get update -y
sudo apt-get install numix-icon-theme numix-icon-theme-circle -y

# 安裝類似 Mac 右上角放大鏡的工具
sudo add-apt-repository ppa:noobslab/apps -y
sudo apt-get update
sudo apt-get install indicator-synapse -y

# 安裝仿 Mac 滑鼠游標
wget -O mac-cursors.zip http://drive.noobslab.com/data/themes/mac/mac-cursors.zip
sudo unzip mac-cursors.zip -d /usr/share/icons/; rm mac-cursors.zip
cd /usr/share/icons/mac-cursors
sudo chmod +x install-mac-cursors.sh uninstall-mac-cursors.sh
sudo ./install-mac-cursors.sh

# 安裝部分 Mac 字型
wget -O mac-fonts.zip http://drive.noobslab.com/data/Mac-14.10/macfonts.zip
mkdir ~/.fonts
mkdir ~/.fonts/mac-fonts
unzip mac-fonts.zip -d ~/.fonts/mac-fonts
sudo fc-cache -f -v

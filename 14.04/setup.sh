#!/bin/bash

# ============================================================
# 系統初始設定
# ============================================================

# 安裝完畢後的第一次系統更新
sudo apt-get update
sudo apt-get upgrade -y

# 安裝 TeamViewer 遠端桌面，以便其他高手遙控救援
curl -O -L http://download.teamviewer.com/download/teamviewer_i386.deb
sudo dpkg -i teamviewer_i386.deb
sudo apt-get -f install -y

# 安裝 Curl 下載工具
sudo apt-get install curl -y

# 安裝 Synaptic 套件管理程式
sudo apt-get install synaptic -y

# 安裝 Ubuntu Tweak 系統調整工具
sudo add-apt-repository ppa:tualatrix/ppa -y
sudo apt-get update
sudo apt-get install ubuntu-tweak -y

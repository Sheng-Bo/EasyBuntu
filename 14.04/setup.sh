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

# 安裝 Compiz 設置工具，可以關閉視窗動畫
sudo apt-get install compizconfig-settings-manager -y

# 安裝 Gparted 磁碟分割工具
sudo apt-get install gparted -y

# 安裝字型管理員
sudo apt-get install font-manager -y

# 安裝 Webmin
sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python -y
curl -O -L http://prdownloads.sourceforge.net/webadmin/webmin_1.770_all.deb
sudo dpkg -i webmin_1.770_all.deb
sudo apt-get -f install -y



# ============================================================
# 網路應用
# ============================================================

# 安裝 Google Chrome 瀏覽器
curl -O -L https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# 安裝 Skype
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner" -y
sudo apt-get update
sudo apt-get install skype -y
sudo apt-get -f install -y

# 安裝 Filezilla
sudo apt-get install filezilla -y



# ============================================================
# 網站開發環境（前端）
# ============================================================

# 安裝 Git
sudo apt-get install git -y

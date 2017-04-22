#!/bin/bash

# ============================================================
# 系統初始設定
# ============================================================

# 安裝完畢後的第一次系統更新
sudo add-apt-repository universe
sudo apt-get update
sudo apt-get upgrade -y

# 安裝 Curl 下載工具
sudo apt-get install curl -y

# 安裝 Synaptic 套件管理程式
sudo apt-get install synaptic -y

# Old Gnome (Just in case)
sudo apt-get install gnome-session-flashback -y

# Unity 
sudo apt-get install unity-tweak-tool -y

# 安裝字型管理員
sudo apt-get install font-manager -y


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


# ============================================================
# 網站開發環境（前端）
# ============================================================

# 安裝 Git
sudo apt-get install git -y

# 安裝 Atom 編輯器
curl -O -L https://atom-installer.github.com/v1.3.2/atom-amd64.deb
sudo dpkg -i atom-amd64.deb

# 安裝 Atom 繁體中文化 & 常用套件
apm stars --install -u Sheng-Bo



# ============================================================
# Fonts
# ============================================================

# 安裝思源黑體繁體中文
curl -O -L https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKtc-hinted.zip
mkdir -p ~/.fonts/
mkdir -p ~/.fonts/noto
unzip NotoSansCJKtc-hinted.zip -d ~/.fonts/noto
sudo fc-cache -fv ~/.fonts/noto

# Microsoft Fonts
wget http://ftp.de.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.6_all.deb
sudo apt-get purge ttf-mscorefonts-installer -y
sudo apt install ./ttf-mscorefonts-installer_3.6_all.deb -y
sudo dpkg-reconfigure ttf-mscorefonts-installer

# Latex fonts
sudo apt-get install texlive-fonts-recommended texlive-fonts-extra -y




# ============================================================
# 文書處理環境
# ============================================================

# 安裝金山 WPS Office，與微軟 Office 相容性比 Libre/OpenOffice 高
curl -O -L http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_amd64.deb
sudo dpkg -i wps-office_9.1.0.4975~a19p1_amd64.deb

# APA 6
#sudo apt-get install biblatex biblatex-dw
sudo apt-get install texlive-publishers -y
sudo apt-get install texlive-bibtex-extra -y
sudo texhash

# Lyx
sudo add-apt-repository ppa:lyx-devel/release
sudo apt-get update
sudo apt-get install lyx -y


# ============================================================
# 平面設計
# ============================================================

# 安裝 Inkscape 向量圖形編輯軟體
sudo apt-get install inkscape -y

# 安裝 GIMP 點陣圖形編輯軟體
sudo apt-get install gimp -y

# 安裝 Gthumb 一個類似 ACDSee 的看圖軟體
sudo apt-get install gthumb -y

# ============================================================
# 多媒體處理環境
# ============================================================


# 安裝 VLC 影片播放器
sudo apt-get install vlc -y

# 安裝 Pitivi 類似 iMovie 或 Movie Maker 影片輯工具
sudo apt-get install pitivi -y

# 安裝 Kazam 桌面錄製程式
sudo apt-get install kazam -y

# ============================================================
# 網站開發環境（後端）Apache、MySQL、PHP
# ============================================================

# 安裝 MySQL
sudo apt-get install mysql-server -y
sudo apt-get install mysql-client -y

# 安裝 phpmyadmin
sudo apt-get install phpmyadmin -y

# 全域安裝 Composer PHP 套件管理程式
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# ============================================================
# 最後清理
# ============================================================
sudo apt-get upgrade -y
sudo apt-get autoremove -y




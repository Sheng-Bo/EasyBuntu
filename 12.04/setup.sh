#!/bin/bash

# ============================================================
# 更新日期：2015年12月02日
# 版本序號：1.0.0
# 適用環境：Ubuntu Linux 12.04
# 製作動機：雖然已經 2015 年底，但是仍選擇三年前的 12.04 做為 bash 的練
# 　　　　　習，有兩個考量。第一、舊版速度快，特別在 VirtualBox 內執行。
# 　　　　　第二、12.04 是 Google Chrome 瀏覽器支援的最低版本，至少可以
# 　　　　　正常執行 47 版。我在 Linux 上的造詣淺薄，本檔案如有錯誤，歡迎
# 　　　　　指正，以便完善自動化設定 Linux 網頁設計前端、後端、多媒體設計
# 　　　　　、文書處理、個人娛樂環境的理想，謝謝。
# 使用說明：將此檔下載後，使用 bash ubuntu12.04.setup.sh 指令執行。
# 使用授權：請自便。
# 作　　者：陳聖博
# ============================================================



# ============================================================
# 系統初始設定
# ============================================================

# 安裝完畢後的第一次系統更新
sudo apt-get update
sudo apt-get upgrade -y

# 安裝 Curl 下載工具
sudo apt-get install curl -y

# 安裝 TeamViewer 遠端桌面，以便其他高手遙控救援
curl -O -L http://download.teamviewer.com/download/teamviewer_i386.deb
sudo dpkg -i teamviewer_i386.deb
sudo apt-get -f install -y

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
# sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python
# curl -O -L http://prdownloads.sourceforge.net/webadmin/webmin_1.770_all.deb
# sudo dpkg -i webmin_1.770_all.deb
# sudo apt-get -f install -y


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


# ============================================================
# 網站開發環境（前端）
# ============================================================

# 安裝 Git
sudo apt-get install git -y

# 安裝 Git 圖形化操作介面 Git-cola
sudo add-apt-repository ppa:winski/git-cola -y
sudo apt-get update
sudo apt-get install git-cola -y

# 安裝 Ruby
sudo apt-get install ruby rubygems -y

# 安裝 Node.js
sudo add-apt-repository ppa:chris-lea/node.js -y
sudo apt-get update
sudo apt-get install nodejs -y

# 安裝 Gulp 工作管理器
sudo npm install gulp -g

# 安裝 Atom 編輯器
sudo add-apt-repository ppa:webupd8team/atom -y
sudo apt-get update
sudo apt-get install atom -y

# 安裝 Atom 繁體中文化 & 常用套件
apm install cht-menu
apm install minimap
apm install color-picker
apm install pigments
apm install highlight-selected
apm install git-history
apm install git-control
apm install atom-beautify
apm install atom-alignment
apm install activate-power-mode


# ============================================================
# 網站開發環境（後端）Apache、MySQL、PHP
# ============================================================

# 安裝 PHP 5.6
# 請注意，此處用外部套件來源是因為 Ubuntu 12.04 的 PHP 比較舊，無法滿足
# 現今 Laravel 5.1 框架的系統需求。
sudo add-apt-repository ppa:ondrej/php5-5.6 -y
sudo apt-get update
sudo apt-get upgrade -y

# 全域安裝 Composer PHP 套件管理程式
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# 全域安裝 Laravel PHP 框架管理程式，可將第二行加入 ~/.profile 永久生效
# composer global require "laravel/installer"
# PATH="~/.composer/vendor/bin:$PATH"
# 不需要

# 安裝 MySQL
sudo apt-get install mysql-server -y
sudo apt-get install mysql-client -y

# 安裝 phpmyadmin
sudo apt-get install phpmyadmin -y
sudo ln -s /usr/share/phpmyadmin /var/www/html



# ============================================================
# 文書處理環境
# ============================================================

# 安裝微軟字型
sudo apt-get install ttf-mscorefonts-installer -y

# 安裝思源黑體繁體中文
curl -O -L https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKtc-hinted.zip
mkdir -p ~/.fonts/
mkdir -p ~/.fonts/noto
unzip NotoSansCJKtc-hinted.zip -d ~/.fonts/noto
sudo fc-cache -fv ~/.fonts/noto

# 安裝金山 WPS Office，與微軟 Office 相容性比 Libre/OpenOffice 高
curl -O -L http://kdl.cc.ksosoft.com/wps-community/download/a19/wps-office_9.1.0.4975~a19p1_amd64.deb
sudo dpkg -i wps-office_9.1.0.4975~a19p1_amd64.deb

# 安裝無蝦米輸入法
sudo apt-get install ibus-table -y
curl -O -L https://github.com/downloads/vicamo/ibus-table-boshiamy/ibus-table-boshiamy_1.3.0.20101012-1_all.deb
sudo dpkg -i ibus-table-boshiamy_1.3.0.20101012-1_all.deb

# 安裝日文輸入法
sudo apt-get install ibus-anthy -y



# ============================================================
# 網站互動媒體環境
# ============================================================

# 安裝 Inkscape 向量圖形編輯軟體
sudo add-apt-repository "deb http://ppa.launchpad.net/inkscape.dev/stable/ubuntu precise main" -y
sudo apt-get update
sudo apt-get install inkscape -y

# 安裝 GIMP 點陣圖形編輯軟體
sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
sudo apt-get update
sudo apt-get install gimp -y

# 安裝 Google Web Designer HTML5 CSS3 動畫製作軟體 64 位元版
curl -O -L https://dl.google.com/linux/direct/google-webdesigner_current_amd64.deb
sudo dpkg -i google-webdesigner_current_amd64.deb



# ============================================================
# 影音剪輯環境
# ============================================================

# 安裝 Pitivi 類似 iMovie 或 Movie Maker 影片輯工具
sudo apt-get install pitivi -y

# 安裝 VLC 影片播放器
sudo apt-get install vlc -y

# 安裝 Kazam 桌面錄製程式
sudo add-apt-repository ppa:kazam-team/stable-series -y
sudo apt-get update
sudo apt-get install kazam -y


# ============================================================
# 最後清理
# ============================================================

sudo dpkg --configure -a
sudo apt-get autoremove
sudo fstrim -v /

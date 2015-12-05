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
# sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python -y
# curl -O -L http://prdownloads.sourceforge.net/webadmin/webmin_1.770_all.deb
# sudo dpkg -i webmin_1.770_all.deb
# sudo apt-get -f install -y



# ============================================================
# 網路應用
# ============================================================

# 安裝 Google Chrome 瀏覽器
curl -O -L https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install -y

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

# 安裝 Git 圖形化操作介面 Git-cola
# sudo add-apt-repository ppa:winski/git-cola -y
# sudo apt-get update
# sudo apt-get install git-cola -y

# 安裝 Ruby
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:brightbox/ruby-ng -y
sudo apt-get update -y
sudo apt-get install ruby2.2 -y
sudo apt-get install ruby2.2-dev -y

# 安裝 Sass CSS 預處理器
sudo gem install sass

# 安裝 Compass Sass 的框架
sudo gem install compass

# 安裝 Node.js 4 並更新 npm
wget -qO- https://deb.nodesource.com/setup_4.x | sudo bash -
sudo apt-get install nodejs -y 
sudo npm install -g npm

# 安裝 Gulp 工作管理器
sudo npm install gulp -g

# 安裝 Grunt 工作管理器
sudo npm install grunt-cli -g

# 安裝 Bower 套件管理器
sudo npm install bower -g

# 安裝 Yoeman 套件管理器
sudo npm install yo -g

# 安裝 Atom 編輯器
sudo add-apt-repository ppa:webupd8team/atom -y
sudo apt-get update
sudo apt-get install atom -y

# 安裝 Atom 繁體中文化 & 常用套件
apm stars --install -u Sheng-Bo

# 安裝 Google Web Designer HTML5 CSS3 動畫製作軟體 64 位元版
curl -O -L https://dl.google.com/linux/direct/google-webdesigner_current_amd64.deb
sudo dpkg -i google-webdesigner_current_amd64.deb



# ============================================================
# 文書處理環境
# ============================================================

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
# 平面設計
# ============================================================

# 安裝 Inkscape 向量圖形編輯軟體
sudo add-apt-repository "deb http://ppa.launchpad.net/inkscape.dev/stable/ubuntu precise main" -y
sudo apt-get update
sudo apt-get install inkscape -y

# 安裝 GIMP 點陣圖形編輯軟體
sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
sudo apt-get update
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
sudo add-apt-repository ppa:kazam-team/stable-series -y
sudo apt-get update
sudo apt-get install kazam -y



# ============================================================
# 網站開發環境（後端）Apache、MySQL、PHP
# ============================================================

# 安裝 PHP 5.6
# 請注意，此處用外部套件來源是因為 Ubuntu 12.04 的 PHP 比較舊，無法滿足
# 現今 Laravel 5.1 框架的系統需求。
sudo add-apt-repository ppa:ondrej/php5-5.6 -y
sudo apt-get update
sudo apt-get install php5-cli -y

# 安裝 MySQL
sudo apt-get install mysql-server -y
sudo apt-get install mysql-client -y

# 安裝 phpmyadmin
sudo apt-get install phpmyadmin -y
sudo ln -s /usr/share/phpmyadmin /var/www/html

# 全域安裝 Composer PHP 套件管理程式
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# 安裝微軟字型
sudo apt-get install ttf-mscorefonts-installer -y

# ============================================================
# 最後清理
# ============================================================
sudo apt-get upgrade -y
sudo apt-get autoremove -y

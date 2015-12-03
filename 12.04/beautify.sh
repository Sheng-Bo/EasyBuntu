
# 安裝 Docky
# sudo add-apt-repository ppa:docky-core/ppa -y
# sudo apt-get update
sudo apt-get install docky -y

# sudo add-apt-repository ppa:noobslab/themes -y
# sudo apt-get update
# sudo apt-get install mbuntu-y-docky-skins-v4 -y

# 安裝桌布
wget http://drive.noobslab.com/data/Mac-14.10/MBuntu-Wallpapers.zip
mkdir ~/MBuntu-Wallpapers
unzip MBuntu-Wallpapers.zip -d ~/MBuntu-Wallpapers

# 佈景和圖示
sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update
sudo apt-get install mac-os-lion-icons-v2 -y
sudo apt-get install mac-os-lion-theme-v2 -y

sudo add-apt-repository ppa:numix/ppa -y
sudo apt-get update -y
sudo apt-get install numix-icon-theme numix-icon-theme-circle -y

#Spotlight
sudo add-apt-repository ppa:noobslab/apps -y
sudo apt-get update
sudo apt-get install indicator-synapse -y

# mouse
wget -O mac-cursors.zip http://drive.noobslab.com/data/themes/mac/mac-cursors.zip
sudo unzip mac-cursors.zip -d /usr/share/icons/; rm mac-cursors.zip
cd /usr/share/icons/mac-cursors
sudo chmod +x install-mac-cursors.sh uninstall-mac-cursors.sh
sudo ./install-mac-cursors.sh

#fonts
wget -O mac-fonts.zip http://drive.noobslab.com/data/Mac-14.10/macfonts.zip
mkdir ~/.fonts
mkdir ~/.fonts/mac-fonts
unzip mac-fonts.zip -d ~/.fonts/mac-fonts
sudo fc-cache -f -v

wget -O mendeleydesktop.deb https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop.deb
sudo apt install -f -y

wget https://repo.skype.com/latest/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb
sudo apt install -f -y

http://download3.operacdn.com/pub/opera/desktop/46.0.2597.57/linux/opera-stable_46.0.2597.57_amd64.deb
sudo dpkg -i opera-stable_46.0.2597.57_amd64.deb
sudo apt install -f -y

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f -y

wget http://kdl1.cache.wps.com/ksodl/download/linux/a21/wps-office_10.1.0.5707~a21_amd64.deb
sudo dpkg -i wps-office_10.1.0.5707~a21_amd64.deb
sudo apt install -f -y

wget http://download.virtualbox.org/virtualbox/5.1.26/virtualbox-5.1_5.1.26-117224~Ubuntu~xenial_amd64.deb
sudo dpkg -i virtualbox-5.1_5.1.26-117224~Ubuntu~xenial_amd64.deb
sudo apt install -f -y

wget https://az764295.vo.msecnd.net/stable/cb82febafda0c8c199b9201ad274e25d9a76874e/code_1.14.2-1500506907_amd64.deb
sudo dpkg -i code_1.14.2-1500506907_amd64.deb
sudo apt install -f -y

wget https://edgehill.s3-us-west-2.amazonaws.com/2.0.32-fec7941/linux-deb/x64/NylasMail.deb
sudo dpkg -i NylasMail.deb
sudo apt install -f -y

wget https://az412801.vo.msecnd.net/vhd/VMBuild_20141027/VirtualBox/IE11/Windows/IE11.Win7.For.Windows.VirtualBox.zip
unzip IE11.Win7.For.Windows.VirtualBox.zip

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y

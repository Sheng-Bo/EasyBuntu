
# The first-time upgrade
sudo add-apt-repository universe
sudo apt-get update
sudo apt-get upgrade -y

# System Tools
sudo apt-get install synaptic -y
sudo apt-get install gnome-session-flashback -y
sudo apt-get install unity-tweak-tool -y
sudo apt-get install curl -y

# Chrome
curl -O -L https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install -y

# Fonts
wget http://ftp.de.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.6_all.deb
sudo apt-get purge ttf-mscorefonts-installer -y
sudo apt install ./ttf-mscorefonts-installer_3.6_all.deb
sudo dpkg-reconfigure ttf-mscorefonts-installer

#install fonts
sudo apt-get install texlive-fonts-recommended texlive-fonts-extra

#install apa6/biblatex stuff
sudo apt-get install biblatex biblatex-dw
sudo apt-get install texlive-publishers

sudo apt-get install texlive-bibtex-extra
sudo texhash


# Lyx
sudo add-apt-repository ppa:lyx-devel/release
sudo apt-get update
sudo apt-get install lyx


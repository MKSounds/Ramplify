#!/bin/bash -e

#if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

#install bluetooth AAC and aptX codecs
#cd ~/Ramplify/Bluetooth
#sudo chmod +755 install-bluetooth-features.sh
#sudo ./install-bluetooth-features.sh
#echo "Bluetooth installed"
#cd ~
#rm sudo rm -r rpi-multiroom-setup-master
#echo "rpi-multiroom-setup-master removed"

#install node-red and dashboard
cd ~/Ramplify/NodeRed
sudo chmod +755 install-node-red.sh
bash install-node-red.sh
echo "Node-Red installed"

cd ~/Ramplify

#install Spotify
sudo chmod +755 install-spotify.sh
sudo ./install-spotify.sh
echo "Spotify installed"

#install Airplay
sudo chmod +755 install-shairport.sh
sudo ./install-shairport.sh
echo "Airplay installed"

#install Upnp
sudo chmod +755 install-Upnp.sh
sudo ./install-Upnp.sh
echo "Upnp installed"

#install access point
cd ~/Ramplify/AccessPoint
sudo chmod +755 install-accespoint.sh
sudo ./install-accespoint.sh
echo "AccessPoint installed"

#install  I2S-Traibers
cd ~/Ramplify
sudo chmod +755 install-GenericI2S-Traiber.sh
sudo ./install-GenericI2S-Traiber.sh
echo "I2S-Traibers installed"

cd ~

#delete unnecessary project files
sudo rm -r Ramplify
echo Remplify removed

#set hostname to "Ramplify"
sudo hostname -b Ramplify
echo "Hostname changed to"
hostname

#unblock wifi from rfkill
echo "To unblock wifi from rfkill you must set your country."
echo "Please enter your country abbreviation. You can find "
echo "your country's code here: https://en.wikipedia.org/wiki/ISO_3166-"
read country
sudo raspi-config nonint do_wifi_country $country

read -p "Installation has finished press enter to reboot.[ok]"
sudo reboot

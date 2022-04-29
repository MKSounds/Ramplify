#!/bin/bash -e

#if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

#install node-red and dashboard
cd ~/Ramplify/NodeRed
sudo chmod +755 install-node-red.sh
bash install-node-red.sh
echo "----------------------------"
echo "Node-Red installed"
echo "----------------------------"
echo

#install bluetooth AAC and aptX codecs
cd ~/Ramplify/Bluetooth
sudo chmod +755 install-bluetooth-features.sh
sudo ./install-bluetooth-features.sh
echo "----------------------------"
echo "Bluetooth installed!"
echo "----------------------------"
cd ~
rm sudo rm -r rpi-multiroom-setup-master
echo "rpi-multiroom-setup-master removed!"
echo

#install Spotify
# ========= Raspotify only supports Debian >= Bullseye =========
#cd ~/Ramplify
#sudo chmod +755 install-spotify.sh
#sudo ./install-spotify.sh
#echo "----------------------------"
#echo "Spotify installed"
#echo "----------------------------"
#echo

#install Airplay
sudo chmod +755 install-shairport.sh
sudo ./install-shairport.sh
echo "----------------------------"
echo "Airplay installed"
echo "----------------------------"
echo

#install Upnp
#sudo chmod +755 install-Upnp.sh
#sudo ./install-Upnp.sh
#echo "----------------------------"
#echo "Upnp installed"
#echo "----------------------------"
#echo

#install Access point
cd ~/Ramplify/AccessPoint
sudo chmod +755 install-accespoint.sh
sudo ./install-accespoint.sh
echo "----------------------------"
echo "AccessPoint installed"
echo "----------------------------"
echo

#install I2S drivers
cd /home/pi/Ramplify/I2S-driver
sudo chmod +755 install-GenericI2S-driver.sh
sudo ./install-GenericI2S-driver.sh
echo "----------------------------"
echo "Generic I2S drivers installed"
echo "----------------------------"
echo

#install Snapcast
#cd ~/Ramplify
#sudo chmod +755 install-snapcast.sh
#sudo ./install-snapcast.sh
#echo "----------------------------"
#echo "Snapcast installed"
#echo "----------------------------"
#echo


#delete installation files
cd ~
sudo rm -r Ramplify
echo
echo "Ramplify installation files removed"
echo

#set hostname to "Ramplify"
sudo sed -i 's$raspberrypi$Ramplify$' /etc/hostname
echo "Hostname changed to Ramplify"
echo

#unblock wifi from rfkill
echo "To unblock wifi from rfkill you must set your country."
echo "Please enter your country abbreviation. You can find "
echo "your country's code here: https://en.wikipedia.org/wiki/ISO_3166-1"
echo "Here are a few examples:"
echo "AR AU AT BE BG CD FI FR DE GR HK IN IE IT NZ PL RU ES SE US"
echo "Germany = DE"

read country
sudo raspi-config nonint do_wifi_country $country
echo

echo "----------------------------------------------------"
echo "----------------------------------------------------"
read -p "Installation has finished press enter to reboot"

sudo reboot

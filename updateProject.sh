#!/bin/bash -e

#if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

#install bluetooth AAC and aptX codecs
#cd Bluetooth
#sudo chmod +755 install.sh
#sudo ./install.sh
#echo bl installed

#cd ..

#install node-red and dashboard
cd ~/Ramplify/NodeRed
sudo chmod +755 install-node-red.sh
bash install-node-red.sh
echo Node-Red installed

cd ~/Ramplify

#install Spotify
sudo chmod +755 install-spotify.sh
sudo ./install-spotify.sh
echo Spotify installed

#install Airplay
sudo chmod +755 install-shairport.sh
sudo ./install-shairport.sh
echo Airplay installed

#install Upnp
sudo chmod +755 install-Upnp.sh
sudo ./install-Upnp.sh
echo Upnp installed

#install access point
#cd AccessPoint
cd ~/Ramplify/AccessPoint
sudo chmod +755 install-access-point.sh
sudo ./install-accespoint.sh
echo AccessPoint installed

cd ~

#delete unnecessary project files
sudo rm -r Ramplify
echo Remplify removed

#read -p Installation has finished, press enter to reboot.[ok]
#sudo reboot

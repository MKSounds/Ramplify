#!/bin/bash -e

if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

#install bluetooth AAC and aptX codecs
#cd Bluetooth
#sudo chmod +755 install.sh
#sudo ./install.sh

#cd ..

#install node-red and dashboard
#cd NodeRed
#sudo chmod +755 install-node-red.sh
#sudo ./install-node-red.sh

#cd ..

#install Spotify
sudo chmod +755 install-spotify.sh
sudo ./install-spotify.sh

#install Airplay
sudo chmod +755 install-shairport.sh
sudo ./install-shairport.sh

#install Upnp
sudo chmod +755 install-Upnp.sh
sudo ./install-Upnp.sh

#install access point
cd AccessPoint
sudo chmod +755 install-access-point.sh
sudo ./install-accespoint.sh

cd ..

#delete unnecessary project files
sudo rm -r Ramplify

read -p Installation has finished, press enter to reboot.[ok]
sudo reboot

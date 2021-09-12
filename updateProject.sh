#!/bin/bash

if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

//install bluetooth AAC and aptX codecs
cd ~/Rmaplify/Bluetooth
chmod +755 install.sh
sudo ./install.sh

//install node-red and dashboard
cd ~/Ramplify/NodeRed
chmod +755 install-node-red.sh
sudo ./install-node-red.sh

//install Spotify
cd ~/Ramplify
chmod +755 install-spotify.sh
sudo ./install-spotify.sh

//install Airplay
cd ~/Ramplify
chmod +755 install-shairport.sh
sudo ./install-shairport.sh

//install Upnp
cd ~/Ramplify
chmod +755 install-Upnp.sh
sudo ./install-Upnp.sh

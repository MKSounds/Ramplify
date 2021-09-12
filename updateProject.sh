#!/bin/bash

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

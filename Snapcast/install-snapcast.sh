#!/bin/bash -e

#install Snapserver
cd /home/pi/Ramplify/Snapcast

sudo chmod +755 install-snapserver.sh
sudo ./install-snapserver.sh
echo "Snapserver installed"

#install Snapclient
cd /home/pi/Ramplify/Snapcast

sudo chmod +755 install-snapclient.sh
sudo ./install-snapclient.sh
echo "Snapclient installed!"

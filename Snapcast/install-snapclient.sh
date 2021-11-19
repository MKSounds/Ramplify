#!/bin/bash -e

cd /home/pi

#install
#wget https://github.com/badaix/snapcast/releases/download/v0.25.0/snapclient_0.25.0-1_armhf.deb
#sudo dpkg -i snapclient_0.25.0-1_armhf.deb
#rm snapclient_0.25.0-1_armhf.deb
wget  https://github.com/badaix/snapcast/releases/download/v0.24.0/snapclient_0.24.0-1_armhf.deb
sudo dpkg -i snapclient_0.24.0-1_armhf.deb
rm snapclient_0.24.0-1_armhf.deb
echo "Snapclient installed!"

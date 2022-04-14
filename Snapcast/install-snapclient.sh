#!/bin/bash

cd /home/pi

#snapclient v0.24 needs dependency libpulse0

#install v24
#wget  https://github.com/badaix/snapcast/releases/download/v0.24.0/snapclient_0.24.0-1_armhf.deb
#sudo dpkg -i snapclient_0.24.0-1_armhf.deb
#rm snapclient_0.24.0-1_armhf.deb

#install v25
#wget https://github.com/badaix/snapcast/releases/download/v0.25.0/snapclient_0.25.0-1_armhf.deb
#sudo dpkg -i snapclient_0.25.0-1_armhf.deb
#rm snapclient_0.25.0-1_armhf.deb

#install v26
wget https://github.com/badaix/snapcast/releases/download/v0.25.0/snapclient_0.25.0-1_armhf.deb
sudo dpkg -i snapclient_0.25.0-1_armhf.deb
rm snapclient_0.25.0-1_armhf.deb


echo "Snapclient installed!"

#!/bin/bash -e

cd /home/pi/Ramplify/Snapcast

chmod +755 install-snapserver.sh
sudo./install-snapserver.sh
echo "Snapserver installed"

cd /home/pi/Ramplify/Snapcast

chmod +755 install-snapclient.sh
sudo ./install-snapclient.sh
echo "Snapclient installed!"

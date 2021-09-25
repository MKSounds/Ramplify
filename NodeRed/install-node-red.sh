#!/bin/bash -e

if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

#install latest version of node-red
bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)

#install dashboard
#cd ~/.node-red
cd ..
cd ..
cd .node-red

npm i node-red-dashboard

#clone dashboard flows
#cd ~/Ramplify/NodeRed
cd ..
cd Ramplify
cd NodeRed

sudo mv change_hotspot_password.sh context flows_raspberrypi_cred.json flows_raspberrypi.json package.json package-lock.json rename_nodered_flows.sh settings.js /home/pi/.node-red

#cd ~/.node-red
cd ..
cd ..
cd .node-red
chmod +755 change_hotspot_password.sh
chmod +755 rename_nodered_flows.sh

cd ..
cd Ramplify
cd NodeRed

#enable autostart
sudo systemctl enable nodered.service

#sudo node-red-start

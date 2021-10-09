#!/bin/bash -e

cd ~

# get scripts
sudo wget https://github.com/zalerion/rpi-multiroom-setup/archive/master.zip

sudo unzip master.zip

sudo rm master.zip

cd ~/rpi-multiroom-setup-master

# preparing
sudo chmod 755 setRights.sh
sudo ./setRights.sh

# just install bluetooth with AAC and xptX
server="no"		#setup as server yes/no
mpd="no"		#setup mpd yes/no
sclient="no" 	#setup of snapclient yes/no
oclient="no" 	#option for "only only as client" setup
btl="yes"		##setup the bluetooth receiver yes/no
btlADV="yes"	#Advanced
spotify="no"	#setup spotify yes/no
dsp="no"
dspADV="no"
hat="no"		#setup for hifiberry etc.

# replace script
cd ~/Ramplify/Bluetooth
sudo mv install-bluetooth.sh /home/pi/scripts/rpi-audio-receiver-master

# call scripts
cd ~/rpi-multiroom-setup-master/scripts

sudo rm /etc/asound.conf

sudo ./autostartSetup.sh

sudo ./btlInstall.sh $btl
sudo ./btlSetup.sh $server $btl

sudo ./asoundConf.sh $sclient $btl $dsp

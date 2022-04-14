#!/bin/bash

#sudo rpi-update 5c80565

cd /home/pi
git clone https://github.com/MKSounds/ADAU1701-I2S-Audio-Driver-for-Raspberry-Pi.git

cd /home/pi/ADAU1701-I2S-Audio-Driver-for-Raspberry-Pi
sudo cp generic_audio_out_i2s_master.dtbo   /boot/overlays
sudo cp generic_audio_out_i2s_slave.dtbo    /boot/overlays
sudo cp generic_audio_out_tdm8_master.dtbo  /boot/overlays
sudo cp generic_audio_out_tdm8_slave.dtbo   /boot/overlays

#add lines at the end of the file
sudo sed -i '$ a\'"[all]"         /boot/config.txt
sudo sed -i '$ a\'"#placeholder"  /boot/config.txt
sudo sed -i '$ a\'"#placeholder"  /boot/config.txt

#cd /home/pi/Ramplify/I2S-driver
#sudo mv .asoundrc /home/pi

cd /home/pi
sudo rm -r ADAU1701-I2S-Audio-Driver-for-Raspberry-Pi       #-r for removing filled directories


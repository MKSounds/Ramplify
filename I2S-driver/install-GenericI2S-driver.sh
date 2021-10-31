#!/bin/bash

cd ~

sudo rpi-update 5c80565

git clone https://github.com/MKSounds/ADAU1701-I2S-Audio-Driver-for-Raspberry-Pi.git

sudo cp ADAU1701-I2S-Audio-Driver-for-Raspberry-Pi/adau1701-i2s.dtbo /boot/overlays

sudo sed -i 's$dtparam=audio=on$#dtparam=audio=on$' /etc/hostname

sed -i '$ a\'"$dtoverlay=adau1701-i2s" $config.txt /boot

cd ~/Ramplify/I2S-driver

sudo mv .asoundrc /home/pi

sudo remove -r ADAU1701-I2S-Audio-Driver-for-Raspberry-Pi

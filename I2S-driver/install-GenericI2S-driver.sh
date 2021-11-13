#!/bin/bash

cd ~

sudo rpi-update 5c80565

#git clone https://github.com/MKSounds/ADAU1701-I2S-Audio-Driver-for-Raspberry-Pi.git

git clone https://github.com/MKSounds/ADAU1701-I2S-Audio-Driver-for-Raspberry-Pi.git

sudo mv generic_audio_out_i2s_master.dtbo generic_audio_out_i2s_slave.dtbo generic_audio_out_tdm8_master.dtbo generic_audio_out_tdm8_slave.dtbo /boot/overlays

#sudo cp ADAU1701-I2S-Audio-Driver-for-Raspberry-Pi/adau1701-i2s.dtbo /boot/overlays

#sudo sed -i 's$dtparam=audio=on$#dtparam=audio=on$' /boot/config.txt

#sed -i '$ a\'"$dtoverlay=adau1701-i2s" $config.txt /boot

sed -i '$ a\'"$[all]" $config.txt /boot

cd /home/pi/Ramplify/I2S-driver

sudo mv .asoundrc /home/pi

cd /home/pi

sudo remove -r ADAU1701-I2S-Audio-Driver-for-Raspberry-Pi

#!/bin/bash -e

#cd ~
#git clone https://github.com/MKSounds/ADAU1701-I2S-Audio-Driver-for-Raspberry-Pi.git

#cd ~/ADAU1701-I2S-Audio-Driver-for-Raspberry-Pi
#sudo mv generic_audio_out_i2s_master.dtbo generic_audio_out_i2s_slave.dtbo generic_audio_out_tdm8_master.dtbo generic_audio_out_tdm8_slave.dtbo /boot/overlays

#cd ~
#sudo rm -r ADAU1701-I2S-Audio-Driver-for-Raspberry-Pi

cd ~/Ramplify
mv "I2S-driver" "overlays" /boot

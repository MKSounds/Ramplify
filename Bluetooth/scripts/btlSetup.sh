#!/bin/bash
source options.conf
#echo "sudo modprobe snd-aloop" >> /etc/autostart.sh 

echo "sleep 3" >> /etc/autostart.sh 
echo "sudo hciconfig hci0 reset" >> /etc/autostart.sh 

echo "BTL SETUP"
#echo "stream = pipe:///tmp/bluesnapfifo?name=BluetoothStream&sampleformat=44100:16:2" >> ./res/snapserver/2_streams
echo source = alsa://?name=BluetoothStream&device=hw:Loopback,1,0  >> ./res/snapserver/2_streams
### load loopback
echo "snd_aloop" > /etc/modules-load.d/snd_aloop.conf
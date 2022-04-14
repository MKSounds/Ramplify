#!/bin/bash

#install Snapserver
#-----------------------
cd /home/pi

#get files
#wget https://github.com/badaix/snapcast/releases/download/v0.25.0/snapserver_0.25.0-1_armhf.deb
wget https://github.com/badaix/snapcast/releases/download/v0.26.0/snapserver_0.26.0-1_armhf.deb

sudo dpkg -i snapserver_0.25.0-1_armhf.deb
rm snapserver_0.25.0-1_armhf.deb

#sed configs
#sudo sed -i '$ a\'"SNAPSERVER_OPTS=$"– codec flac$"" /etc/default/snapserver
sudo sed -i 's$SNAPSERVER_OPTS=""$SNAPSERVER_OPTS="– codec flac"$' /etc/default/snapserver

#sed audio streams
sudo sed -i '131i source = airplay:///shairport-sync?name=AirPi[&dryout_ms=2000][&port=5000]' /etc/snapserver.conf
sudo sed -i '132i stream = spotify:///librespot?name=Spotify&devicename=Snapcast&killall=true' /etc/snapserver.conf
sudo sed -i '133i source = pipe:///tmp/snapfifo?name=Bluetooth' /etc/snapserver.conf

#update asound.conf, redirect audio to snapfifo
sudo cat > asound.conf <<EOF
pcm.!default {
  type plug
  slave.pcm rate48000Hz
}
pcm.rate48000Hz {
  type rate
  slave {
    pcm writeFile # Direct to the plugin which will write to a file
    format S16_LE
    rate 48000
  }
}
pcm.writeFile {
  type file
  slave.pcm null
  file "/tmp/snapfifo"
  format "raw"
}
EOF

sudo mv asound.conf /etc

echo "Snapserver installed"


#install Snapclient
#-----------------------
cd /home/pi

#install v24
#wget  https://github.com/badaix/snapcast/releases/download/v0.24.0/snapclient_0.24.0-1_armhf.deb
#sudo dpkg -i snapclient_0.24.0-1_armhf.deb
#rm snapclient_0.24.0-1_armhf.deb
#snapclient v0.24 needs dependency libpulse0

#install v25
#wget https://github.com/badaix/snapcast/releases/download/v0.25.0/snapclient_0.25.0-1_armhf.deb
#sudo dpkg -i snapclient_0.25.0-1_armhf.deb
#rm snapclient_0.25.0-1_armhf.deb

#install v26
wget https://github.com/badaix/snapcast/releases/download/v0.26.0/snapclient_0.26.0-1_armhf.deb
sudo dpkg -i snapclient_0.25.0-1_armhf.deb
rm snapclient_0.25.0-1_armhf.deb


echo "Snapclient installed"
echo

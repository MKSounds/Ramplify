#!/bin/bash -e

cd /home/pi

#install
wget https://github.com/badaix/snapcast/releases/download/v0.25.0/snapserver_0.25.0-1_armhf.deb
sudo dpkg -i snapserver_0.25.0-1_armhf.deb
sudo apt-get -f install --yes
sudo apt-get update
rm snapserver_0.25.0-1_armhf.deb

#sed configs
sudo sed -i '$ a\'${"SNAPSERVER_OPTS="– codec flac"}" /etc/default/snapserver

#sed audio streams
sudo sed -i '$ a\'"source = pipe:///tmp/snapfifo?name=default" /etc/snapserver.conf
sudo sed -i '$ a\'"source = airplay:///shairport-sync?name=AirPi[&dryout_ms=2000][&port=5000]" /etc/snapserver.conf
sudo sed -i '$ a\'"stream = spotify:///librespot?name=Spotify&devicename=Snapcast&killall=true" /etc/snapserver.conf
sudo sed -i '$ a\'"source = pipe:///tmp/snapfifo?name=Bluetooth" /etc/snapserver.conf

sudo cat > $/etc/asound.conf <<EOF
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

#!/bin/bash -e

if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

#install Spotify
sudo apt install curl apt-transport-https -y
sudo curl -sSL https://dtcooper.github.io/raspotify/key.asc | sudo apt-key add -v -
sudo echo 'deb https://dtcooper.github.io/raspotify raspotify main' | sudo tee /etc/apt/sources.list.d/raspotify.list
sudo apt update
sudo apt install raspotify -y

#you find configs by /etc/default/raspotify

#enable autostart
sudo systemctl enable raspotify

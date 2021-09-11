#!/bin/bash -e
sudo sed -i '13d' /etc/hostapd/hostapd.conf
sudo sed -i '13i wpa_passphrase=myramplify123%' /etc/hostapd/hostapd.conf
#endoffile

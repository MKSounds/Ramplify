#!/bin/bash

if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

sudo chmod 755 setRights.sh
sudo ./setRights.sh

pwd
sudo ./callScripts.sh

sudo reboot

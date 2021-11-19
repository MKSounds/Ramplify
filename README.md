# Ramplify

Ramplify offers funcitonality for streaming audio via bluetooth, airplay and upnp to your raspberry pi and to other devices connected to it.

Simply download, flash to a sd-card and enjoy!

After installation Ramplify offers the following functionalities:
- Automated Access Point if no WIFI is detected after boot
- Always reachable homepage hosted by the pi powered by node-red
- Change hostname, add wifi or change the accessibility of your raspberry pi
- Further functionalities, including output-change on raspberry (I2S, 3.5mm-jack, HDMI)

## Image Installation

Get the file via the download link below and flash it to an empty sd card. Put it into your raspberry pi 3 or zero. That's it!

Download Software for Raspberry Pi 3 and Zero                                                           
https://studhsheilbronnde-my.sharepoint.com/:u:/g/personal/tbreunig_stud_hs-heilbronn_de/EdJX2HswBRRCjQ9cYZ2zEkMBfxNTEfKkX7AQmNINIXbRww?e=BTxE9u

## Installing from scratch
Download the [Raspberry Pi OS Lite](https://www.raspberrypi.org/software/operating-systems/) (it was tested by the version from: 2021-05-07) version and flash it to a SD-Card with the [Raspberry Pi Imager](https://www.raspberrypi.org/software/), [Etcher](https://www.balena.io/etcher/) or something else. You can also choose the Raspberry Pi OS Lite version in the Raspberry Pi Imager.

Now you need to activate the ssh-tunnel. You can do it by creating a file named ssh without a filename extension and copy it to the SD-card.
Activate the netzwork settings or link it by LAN for internet. You need it during the installation and can disconnect it after if you don't need it.

After preparing the SD-Card you can get the remote control by a simply program named [Putty](https://www.putty.org/). Use the ssh-tunnel to open a terminal and follow the commands bellow in consol. The standard username is "pi" and password "raspberry". For your secure you should change the passwort after installing.

```javascript
sudo apt-get update
sudo apt-get upgrade
sudo apt install git
git clone https://github.com/MKSounds/Ramplify
cd Ramplify
sudo chmod +755 updateProject.sh
bash updateProject.sh
```

Since the installation takes some time, it is recommended to use a more powerful Raspberry (e.g. Raspberry 3 or 4) for the installation and to change the SD card afterwards.

You will find the web interface by ```<ip-address-raspi>:1880``` and the SnapWeb by ```<ip-address-raspi>:1780```. You can find more infos about the SnapWeb or Snapdroid [here](https://github.com/badaix/snapweb).

NOTICE:<br/>
Node-Red only contains the packages for the the Raspberry Pi on which they were installed. If you remove the installed SD card and put him into an other Raspberry version it makes possible to don't work anymore. In these case you must install the Node-Red again manuell for the missing packages. Use the following command to do this. (It will just working if you install the project before)

```bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)```

You can also install the project again with the new Raspberry Pi.

## How to use

After installing simply reboot the pi, connect to its hotspot "Ramplify" (password: myramplify123%) and access the configuration page via ramplify.audio for teaching wifi and change configurations. The pi-account password in Raspian is "ramplify" .. change that immediately!

## To-Do
- ACC and aptX codec
- Snapcast multiroom implementation
- Raspberry Pi 4 compatibility

## References

- [BlueALSA: Bluetooth Audio ALSA Backend](https://github.com/Arkq/bluez-alsa)
- [Shairport Sync: AirPlay Audio Receiver](https://github.com/mikebrady/shairport-sync)
- [gmrender-resurrect: Headless UPnP Renderer](http://github.com/hzeller/gmrender-resurrect)
- [Snapcast: Synchronous audio player](https://github.com/badaix/snapcast)
- [Access Point by ajfisher](https://gist.github.com/ajfisher/a84889e64565d7a74888)
- [NODE-RED](https://nodered.org/)
- [Raspotify](https://hoerli.net/mopidy-snapcast-multi-room-music-setup/)

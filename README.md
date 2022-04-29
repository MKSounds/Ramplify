# Ramplify

Ramplify offers funcitonality for streaming audio via bluetooth, airplay and upnp to your raspberry pi and to other devices connected to it.

Simply download, flash to a sd-card and enjoy!

After installation Ramplify offers the following functionalities:
- Automated Access Point if no WIFI is detected after boot
- Always reachable homepage hosted by the pi powered by node-red
- Change hostname, add wifi or change the accessibility of your raspberry pi
- Further functionalities, including output-change on raspberry (I2S, 3.5mm-jack, HDMI)

## Installing from scratch
Download the [Raspberry Pi OS Lite](https://www.raspberrypi.org/software/operating-systems/) (it was tested with the version from: 2021-05-07) version and flash it to a sd card with the [Raspberry Pi Imager](https://www.raspberrypi.org/software/), [Etcher](https://www.balena.io/etcher/) or something else. You can also select the Raspberry Pi OS Lite version in the Raspberry Pi Imager.

Now you have to activate the ssh tunnel. To do this, create a file named ssh without a file name extension and copy it to the SD card.
Activate the network settings or connect it to the Internet via LAN. You will need this during installation and can disconnect afterwards if you do not need it.

After you have prepared the SD card, you can access the remote control with a simple program called [Putty](https://www.putty.org/). Use the ssh-tunnel to open a terminal and follow the commands bellow in the console. The default username is "pi" and the password is "raspberry". For your security you should change the password after installation.

```javascript
sudo apt-get update
sudo apt-get upgrade
sudo apt install -y git
git clone https://github.com/MKSounds/Ramplify
cd Ramplify
sudo chmod +755 install-Ramplify.sh
bash install-Ramplify.sh
```

Since the installation takes some time, it is recommended to use a more powerful Raspberry (e.g. Raspberry 3 or 4) for the installation and to change the SD card afterwards.

You will find the Web interface at ```<ip-address-raspi>:1880``` and the SnapWeb at ```<ip-address-raspi>:1780```. You can find more information about SnapWeb and Snapdroid [here](https://github.com/badaix/snapweb).

NOTICE:<br/>
Node-Red only contains the packages for the Raspberry Pi on which they were installed. If you remove the installed SD card and put it into another Raspberry version, it may not work anymore. In this case, you will need to manually reinstall the Node-Red for the missing packages. Use the following command to do this. (It will only work if you install the project before).

```bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)```

You can also install the project again with the new Raspberry Pi.

## How to use

After installing simply reboot the pi, connect to its hotspot "Ramplify" (password: myramplify123%) and access the configuration page via ramplify.audio for teaching wifi and change configurations. The pi-account password in Raspian is "ramplify" .. change that immediately!

## To-Do
- Implement SnapWeb in Node-Red
- Mutual deactivation of inputs
- Several input options
- Raspberry Pi 4 compatibility

## References

- [BlueALSA: Bluetooth Audio ALSA Backend](https://github.com/Arkq/bluez-alsa)
- [Shairport Sync: AirPlay Audio Receiver](https://github.com/mikebrady/shairport-sync)
- [gmrender-resurrect: Headless UPnP Renderer](http://github.com/hzeller/gmrender-resurrect)
- [Snapcast: Synchronous audio player](https://github.com/badaix/snapcast)
- [Access Point by ajfisher](https://gist.github.com/ajfisher/a84889e64565d7a74888)
- [NODE-RED](https://nodered.org/)
- [Raspotify](https://github.com/dtcooper/raspotify)

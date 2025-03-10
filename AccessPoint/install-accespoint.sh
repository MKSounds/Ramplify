#!/bin/bash -e

if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

cd ~

sudo apt-get install hostapd wpasupplicant dnsmasq << EOF
y
EOF

sudo update-rc.d -f hostapd remove
sudo update-rc.d -f dnsmasq remove

echo "Now enable the networking at boot. After the configs are"
echo "opened move to 'System Options' and select 'Network at boot'."
echo "Press enter and confirm with 'yes' for enabling."
read -p "Press enter to continue after reading.[ok]"

sudo raspi-config

#replace DAEMON_CONF="" in /etc/default/hostapd
sudo sed -i 's$#DAEMON_CONF=""$DAEMON_CONF="/etc/hostapd/hostapd.conf"$' /etc/default/hostapd


#move config files
cd /home/pi/Ramplify/AccessPoint

sudo mv hostapd.conf /etc/hostapd
sudo mv dnsmasq.conf /etc
sudo mv rc.local /etc/rc.local

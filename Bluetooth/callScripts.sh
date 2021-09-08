cd scripts

sudo rm /etc/asound.conf
##starting with clean asound.conf

sudo ./autostartSetup.sh
sudo ./btlInstall.sh
sudo ./btlSetup.sh
sudo ./asoundConf.sh

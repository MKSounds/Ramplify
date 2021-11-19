#!/bin/bash -e

cd /home/pi

sudo apt install iptables-persistent
sudo iptables -I INPUT 1 -p tcp --dport 80 -j ACCEPT
sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 1880
sudo netfilter-persistent save
sudo netfilter-persistent reload

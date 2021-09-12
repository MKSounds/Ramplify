#!/bin/bash

//install bluetooth AAC and aptX codecs
cd Bluetooth

chmod +755 install.sh

sudo ./install.sh

//instal node-red and dashboard
cd NodeRed

chmod +755 install-node-red.sh

sudo ./install-node-red.sh

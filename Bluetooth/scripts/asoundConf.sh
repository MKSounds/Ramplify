#!/bin/bash

source options.conf

#snapclient="$1" 	# yes / no
#bluetooth="$2"	# yes / no
#dsp="$3"        # yes / no
#$server        #yes / no snapserver

cd res/asound

cat bluetooth >> /etc/asound.conf
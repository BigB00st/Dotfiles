#!/bin/bash

LIMIT=10
AUDIO_FILE='./i3-battery-popup.wav'
PERCENTAGE=$(grep -oP '(?<=CAPACITY=).*' /sys/class/power_supply/BAT*/uevent)

if [[ $PERCENTAGE -le $LIMIT ]]
then
	exec paplay $AUDIO_FILE &
	exec i3-nagbar -m "Warning, $PERCENTAGE percent battery left." > /dev/null 2>&1
fi

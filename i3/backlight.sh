#!/bin/bash
curr=$(sudo cat /sys/class/backlight/intel_backlight/brightness)
if [ "$1" == "up" ];
then
        echo "up" > /tmp/bright
	curr=$(( curr + 100 ))
        if [ "$curr" -gt "$(cat /sys/class/backlight/intel_backlight/max_brightness)" ];
        then
                echo "$(cat /sys/class/backlight/intel_backlight/max_brightness)" | sudo tee /sys/class/backlight/intel_backlight/brightness > /dev/null
        else
                echo "$curr" | sudo tee /sys/class/backlight/intel_backlight/brightness > /dev/null
        fi
elif [ "$1" == "down" ];
then
        echo "down" > /tmp/bright
	curr=$(( curr - 100 ))
        if [ $curr -le 100 ];
        then
                echo "100" | sudo tee /sys/class/backlight/intel_backlight/brightness > /dev/null
        else
                echo "$curr" | sudo tee /sys/class/backlight/intel_backlight/brightness > /dev/null
        fi
fi

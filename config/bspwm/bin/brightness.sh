#!/bin/bash

## Script To Manage Brightness

# Get br
get_brightness() {
	brightness=$(echo $(brightnessctl info | grep "%" | cut -d ' ' -f 4))
	echo "$brightness"
}

# Increase br
up_brightness() {
	brightnessctl s 5+% &&dunstify -u low --replace=69 -i 0 "󰃠 Brightness : $(get_brightness)"
}

# Decrease br
down_brightness() {
	brightnessctl s 5-% &&dunstify -u low --replace=69 -i 0 "󰃞 Brightness : $(get_brightness)"
}


# Execute accordingly
if [[ "$1" == "--get" ]]; then
	get_brightness
elif [[ "$1" == "--up" ]]; then
	up_brightness
elif [[ "$1" == "--down" ]]; then
    down_brightness
else
	get_brightness
fi

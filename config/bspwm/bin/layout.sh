#!/bin/bash

## Script To Manage Layout


# Get the current layout
current=$(setxkbmap -query | awk '/layout/ {print $2}' | cut -c 1,2)

# Layouts. You can add yours.

if [[ "$current" == "ru" ]]; then
	dunstctl close-all && setxkbmap us,ru && dunstify -u low --replace=69 "  Layout: US"
else
	dunstctl close-all && setxkbmap ru,us && dunstify -u low "  Layout: RU"
fi



#t=$(xset -q | grep LED)
#You can query the LED mask value from xset -q command and then apply 00001000 mask to see if the primary or the seconday layout is in use. Example:
# this will remove all trash in $t before the LED mask:
#mask="${t##*mask:  }"
#not_en_mask="00001004"
# Now we just apply bitwise AND to $mask and see if it is equals zero or not
#[[ $((mask & not_en_mask)) == 0 ]] && layout="EN" || layout="RU"

#if [[ "$layout" == "RU" ]]; then
#	dunstctl close-all && dunstify --timeout=1000 -u low "  Layout: RU"
#else
#	dunstctl close-all && dunstify --timeout=1000 -u low "  Layout: US"
#fi

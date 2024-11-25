#! /bin/bash
pkill redshift-gtk && sleep 1
redshift-gtk &
pkill polybar && sleep 1
polybar --config=~/.config/bspwm/polybar/config.ini

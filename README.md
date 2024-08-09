# Arch setup
## Basics
Installing xorg
`sudo pacman -S xorg xorg-server xorg-xinit xorg-xrandr xorg-xfonts`

Installing timeshift & backing up system
`sudo pacman -S timeshift`
`sudo timeshift --create --comment "pure arch"`

Installing audio packages
`sudo pacman -S pipewire pipewire-alsa pipewire-pulse pipewire alsa-utils`
Installing audio settings 
`sudo pacman -S pavucontrol pulseaudio-equalizer`



`sudo pacman -S ttf-jetbrains-mono ttf-jetbrains-mono-nerd`
`sudo pacman -S sxhkd polybar rofi alacritty nitrogen bspwm xorg xorg-xinit xorg-xrandr xorg-xfonts xorg-server pipewire pipewire-alsa alsa-utils pipewire-pulse pulseaudio-equalizer wireplumber pavucontrol bluez bluez-utils git linux-headers dkms`

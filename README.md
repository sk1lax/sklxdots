# Arch setup

### WiFi setup
`nmcli radio wifi on`
`nmcli device wifi connect SSID password PASSWORD`
### Basics
Installing xorg
`sudo pacman -S xorg xorg-server xorg-xinit xorg-xrandr xorg-xfonts`

Installing timeshift & backing up system
`sudo pacman -S timeshift`
`sudo timeshift --create --comments "pure arch"`

### Audio
Installing audio packages
`sudo pacman -S pipewire pipewire-alsa pipewire-pulse pipewire alsa-utils wireplumber`

Installing audio settings 
`sudo pacman -S pavucontrol pulseaudio-equalizer`

### Bspwm
Installing essentials
`sudo pacman -S picom bspwm sxhkd polybar rofi nitrogen alacritty firefox git`
Fonts
`sudo pacman -S ttf-jetbrains-mono ttf-jetbrains-mono-nerd`
Setting up xinirtc
`sudo nano .xinitrc`
``exec sxhkd &
exec bspwm``

### Title
`sudo pacman -S linux-headers dkms`

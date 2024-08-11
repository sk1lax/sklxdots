# Arch setup

### WiFi setup
```
nmcli radio wifi on
nmcli device wifi connect SSID password PASSWORD
```
### Basics
- Installing xorg
```
sudo pacman -S xorg xorg-server xorg-xinit xorg-xrandr xorg-xfonts
```

- Installing timeshift & backing up system
```
sudo pacman -S timeshift
sudo timeshift --create --comments "pure arch"
```
### Pacman config
```
sudo nano /etc/pacman.conf
```
`[multilib]
include = /etc/pacman.d/mirrorlist
`
### Audio
- Installing audio packages
```
sudo pacman -S pipewire pipewire-alsa pipewire-pulse pipewire alsa-utils wireplumber
```

- Apps for audio management 
```
sudo pacman -S pavucontrol pulseaudio-equalizer
```

### Bluetoooth 
- Bluetooth packages and daemon setup
```
sudo pacman -S bluez bluez-utils 
```
- Bluetooth management apps
  - Blueman
```
sudo pacman -S blueman
```
  - Overskride
```
yay -S overskride
```
### Bspwm
- Installing essentials
```
sudo pacman -S picom bspwm sxhkd polybar rofi nitrogen alacritty firefox git
```
- Fonts
```
sudo pacman -S ttf-jetbrains-mono ttf-jetbrains-mono-nerd
```
- Setting up xinirtc
```
sudo nano .xinitrc
touch ~/.config/bspwm/bspwmrc
touch ~/.config/sxhkd/sxhkdrc
sudo chmod 775 ~/.config/bspwm/bspwmrc
sudo chmod 775 ~/.config/sxhkd/sxhkdrc
```

`exec sxhkd &
exec bspwm`

### Title
`sudo pacman -S linux-headers dkms`

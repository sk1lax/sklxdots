# Personal Arch Setup

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

- Basic Apps
```
sudo pacman -S discord firefox telegram-desktop
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
 Blueman
```
sudo pacman -S blueman
```
 [Overskride](https://github.com/kaii-lb/overskride#overskride)
```
yay -S overskride
```
### Bspwm
- Installing essentials
```
sudo pacman -S picom bspwm sxhkd polybar rofi nitrogen alacritty git
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

### Dual Booting
```
sudo pacman -S ntp os-prober
```
- Adding another OS
```
sudo os-prober
```
```
sudo nano /etc/default/grub 
```
`GRUB_DISABLE_OS_PROBER=false`
```
sudo grub-mkconfig /boot/grub/grub.cfg
```
- Fixing time sync (if necessary)
```
sudo ntpd -qg
sudo hwclock --systoh
```
### Title
`sudo pacman -S linux-headers dkms`

### Setting keyboard loyaout
```
sudo localectl --no-convert set-x11-keymap us,ru "" "" grp:win_space_toggle
```

### Disabling Mouse Acceleration
```
sudo nano /etc/X11/xorg.conf.d/40-libinput.conf
```
`Section "InputClass"\n
  Identifier "libinput pointer catchall"\n
  MatchIsPointer "on"\n
  MatchDevicePath "/dev/input/event*"\n
  Driver "libinput"\n
  Option "AccelProfile" "flat"\n
 EndSection
 `

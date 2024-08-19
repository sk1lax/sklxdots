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
sudo pacman -S picom bspwm sxhkd polybar rofi nitrogen alacritty git brightnessctl
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
sudo grub-mkconfig -o /boot/grub/grub.cfg
```
- Fixing time sync (if necessary)
```
sudo ntpd -qg
sudo hwclock --systoh
```
### RealteK driver issue fix
```
sudo pacman -Syu linux-headers dkms bc
```
```
nano /etc/modprobe.d/blacklist.conf
```
`
blacklist rtw88_8821ce
`

```
git clone https://aur.archlinux.org/rtl8821ce-dkms-git.git
cd rtl8821ce-dkms-git
makepkg -si
```


### Setting keyboard loyaout
```
sudo localectl --no-convert set-x11-keymap us,ru "" "" grp:win_space_toggle
```

### Disabling Mouse Acceleration
```
sudo nano /etc/X11/xorg.conf.d/40-libinput.conf
```
```
 Section "InputClass"
  Identifier "libinput pointer catchall"
  MatchIsPointer "on"
  MatchDevicePath "/dev/input/event*"
  Driver "libinput"
  Option "AccelProfile" "flat"
 EndSection
```

### Graphics Setup
- Essential Packages
```
sudo pacman -S nvidia nvidia-prime nvidia-utils lib32-nvidia-utils vulkan-intel lib32-vulkan-intel
```
- GPU Switcher
```
yay -S envycontrol
```
-  Udev rules from wiki
```
sudo nano /etc/udev/rules.d/80-nvidia-pm.rules
```
```
# Enable runtime PM for NVIDIA VGA/3D controller devices on driver bind
ACTION=="bind", SUBSYSTEM=="pci", ATTR{vendor}=="0x10de", ATTR{class}=="0x030000", TEST=="power/control", ATTR{power/control}="auto"
ACTION=="bind", SUBSYSTEM=="pci", ATTR{vendor}=="0x10de", ATTR{class}=="0x030200", TEST=="power/control", ATTR{power/control}="auto"

# Disable runtime PM for NVIDIA VGA/3D controller devices on driver unbind
ACTION=="unbind", SUBSYSTEM=="pci", ATTR{vendor}=="0x10de", ATTR{class}=="0x030000", TEST=="power/control", ATTR{power/control}="on"
ACTION=="unbind", SUBSYSTEM=="pci", ATTR{vendor}=="0x10de", ATTR{class}=="0x030200", TEST=="power/control", ATTR{power/control}="on"
# Enable runtime PM for NVIDIA VGA/3D controller devices on adding device
ACTION=="add", SUBSYSTEM=="pci", ATTR{vendor}=="0x10de", ATTR{class}=="0x030000", TEST=="power/control", ATTR{power/control}="auto"
ACTION=="add", SUBSYSTEM=="pci", ATTR{vendor}=="0x10de", ATTR{class}=="0x030200", TEST=="power/control", ATTR{power/control}="auto"
```

```
sudo nano /etc/modprobe.d/nvidia-pm.conf
```
`options nvidia "NVreg_DynamicPowerManagement=0x02"`

### Gnome
```
sudo pacman -S gnome gnome-tweaks gdm
```
```
sudo pacman -R gnome-calculator gnome-calendar gnome-clocks gnome-connections gnome-console gnome-contacts simple-scan yelp gnome-music snapshot gnome-software gnome-weather epiphany gnome-maps gnome-disk-utility totem gnome-logs gnome-system-monitor rygel gnome-tour gnome-font-viewer gnome-characters malcontent
```

### KDE
```
sudo pacman -S sddm plasma kate dolphin spectacle gwenview
```

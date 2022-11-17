#!/bin/bash
set -e

sudo pacman -Syyu --noconfirm

# HANG DOLGOK TELEPÍTÉSE

#sudo pacman -S pulseaudio --noconfirm --needed
#sudo pacman -S pulseaudio-alsa --noconfirm --needed
sudo pacman -S wireplumber pipewire pipewire-pulse pipewire-jack pipewire-alsa lib32-pipewire-jack lib32-pipewire gst-plugin-pipewire easyeffects --noconfirm --needed
sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware --noconfirm --needed
sudo pacman -S gstreamer --noconfirm --needed
sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly --noconfirm --needed
sudo pacman -S pavucontrol  --noconfirm --needed
sudo pacman -S volumeicon --noconfirm --needed
sudo pacman -S playerctl --noconfirm --needed

# BLUETOOTH (if needed)

#sudo pacman -S --noconfirm --needed pulseaudio-bluetooth bluez bluez-libs bluez-utils blueberry && sudo systemctl enable bluetooth.service && sudo systemctl start bluetooth.service
#sudo sed -i 's/'#AutoEnable=false'/'AutoEnable=true'/g' /etc/bluetooth/main.conf

# PRINTER

#sudo pacman -S --noconfirm --needed cups cups-pdf

#first try if you can print without foomatic
#sudo pacman -S foomatic-db-engine --noconfirm --needed
#sudo pacman -S foomatic-db foomatic-db-ppds foomatic-db-nonfree-ppds foomatic-db-gutenprint-ppds --noconfirm --needed
#sudo pacman -S ghostscript gsfonts gutenprint --noconfirm --needed
#sudo pacman -S gtk3-print-backends --noconfirm --needed
#sudo pacman -S libcups --noconfirm --needed
#sudo pacman -S hplip --noconfirm --needed
#sudo pacman -S system-config-printer --noconfirm --needed

#sudo systemctl enable org.cups.cupsd.service

#echo "After rebooting it will work"

#echo "################################################################"
#echo "#########   printer management software installed     ##########"
#echo "################################################################"

# NETWORK DISCOVERY
sudo pacman -S --noconfirm --needed avahi
sudo systemctl enable avahi-daemon.service
sudo systemctl start avahi-daemon.service
sudo pacman -S --noconfirm --needed nss-mdns
sudo pacman -S --noconfirm --needed gvfs-smb
sudo sed -i 's/files mymachines myhostname/files mymachines/g' /etc/nsswitch.conf
sudo sed -i 's/\[\!UNAVAIL=return\] dns/\[\!UNAVAIL=return\] mdns dns wins myhostname/g' /etc/nsswitch.conf

# KIEGÉSZÍTŐ PROGRAMOK

sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed git
sudo pacman -S --noconfirm --needed gnome-disk-utility
sudo pacman -S --noconfirm --needed gnome-keyring
sudo pacman -S --noconfirm --needed gnome-system-monitor
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed hddtem
sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed lm_sensors
sudo pacman -S --noconfirm --needed lsb-release
sudo pacman -S --noconfirm --needed net-tools
sudo pacman -S --noconfirm --needed polkit-gnome
sudo pacman -S --noconfirm --needed qt5ct
sudo pacman -S --noconfirm --needed sysstat
sudo pacman -S --noconfirm --needed thunar
sudo pacman -S --noconfirm --needed thunar-archive-plugin
sudo pacman -S --noconfirm --needed thunar-volman
sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed wmctrl
sudo pacman -S --noconfirm --needed unclutter
sudo pacman -S --noconfirm --needed rxvt-unicode
sudo pacman -S --noconfirm --needed xdg-user-dirs
sudo pacman -S --noconfirm --needed xfce4-notifyd
sudo pacman -S --noconfirm --needed discord
sudo pacman -S --noconfirm --needed dkms

# TÖMÖRÍTŐK
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller

# BETŰTÍPUSOK

sudo pacman -S adobe-source-sans-pro-fonts --noconfirm --needed
sudo pacman -S cantarell-fonts --noconfirm --needed
sudo pacman -S noto-fonts --noconfirm --needed
sudo pacman -S ttf-bitstream-vera --noconfirm --needed
sudo pacman -S ttf-dejavu --noconfirm --needed
sudo pacman -S ttf-droid --noconfirm --needed
sudo pacman -S ttf-hack --noconfirm --needed
sudo pacman -S ttf-inconsolata --noconfirm --needed
sudo pacman -S ttf-liberation --noconfirm --needed
sudo pacman -S ttf-roboto --noconfirm --needed
sudo pacman -S ttf-ubuntu-font-family --noconfirm --needed
sudo pacman -S tamsyn-font --noconfirm --needed
sudo pacman -S noto-fonts-emoji --noconfirm --needed

# SZEMÉLYES PROGRAMOK
sudo pacman -S --noconfirm --needed breeze-icons
sudo pacman -S --noconfirm --needed breeze-gtk
sudo pacman -S --noconfirm --needed breeze
sudo pacman -S --noconfirm --needed doublecmd-gtk2
sudo pacman -S --noconfirm --needed galculator
sudo pacman -S --noconfirm --needed ristretto
sudo pacman -S --noconfirm --needed mpv
sudo pacman -S --noconfirm --needed vlc
#sudo pacman -S --noconfirm --needed libreoffice-fresh-hu

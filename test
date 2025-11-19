#!/bin/sh
#idk
termux-setup-storage
curl -L https://raw.githubusercontent.com/Prime-TITAN-CameraMan/Termux-Stuffs/main/bin/termux-fastest-repo | bash
pkg update

# Update installed package but keep configuration
pkg upgrade -y -o Dpkg::Options::="--force-confold"

# idk
pkg install -y x11-repo tur-repo
# idk
pkg install -y curl wget git nano proot-distro termux-x11 pulseaudio
# idk 
pkg install -y termux-x11-nightly

# clear cache termux
pkg clean

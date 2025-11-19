#!/bin/sh
#idk
termux-setup-storage
curl -L https://github.com/neonlighthdr/termux-setup/raw/refs/heads/main/change-repo/termux-fastest-repo | bash
pkg update

# update installed package but keep configuration
pkg upgrade -y -o Dpkg::Options::="--force-confold"

# idk
pkg install -y x11-repo tur-repo
# idk
pkg install -y curl wget git nano proot-distro termux-x11 pulseaudio
# idk 
pkg install -y termux-x11-nightly

clear

# settings termux style
git clone https://github.com/neonlighthdr/my-termux-style.git
rm -rf .termux && cp -rf my-termux-style/.termux ../home/ && rm -rf my-termux-style

# clear cache in termux
pkg clean
clear


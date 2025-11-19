#!/bin/sh
#idk
termux-setup-storage
sleep 2
curl -L https://github.com/neonlighthdr/termux-setup/raw/refs/heads/main/change-repo/termux-fastest-repo | bash
pkg update
sleep 2

# update installed package but keep configuration
pkg upgrade -y -o Dpkg::Options::="--force-confold"
sleep 1

# idk
pkg install -y x11-repo tur-repo
sleep 2
# idk
pkg install -y curl wget git nano 
pkg install -y proot-distro pulseaudio
sleep 1
# idk 
pkg install termux-x11 && pkg install -y termux-x11-nightly

clear

# settings termux style
git clone https://github.com/neonlighthdr/my-termux-style.git
rm -rf .termux && cp -rf my-termux-style/.termux ../home/ && rm -rf my-termux-style

# clear cache in termux
pkg clean
clear


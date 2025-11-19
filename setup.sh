sleep 3
termux-setup-storage

sleep 2
curl -L https://github.com/neonlighthdr/termux-setup/raw/refs/heads/main/change-repo/termux-fastest-repo | bash
pkg update
sleep 3
clear

# idk
pkg upgrade -y -o Dpkg::Options::="--force-confold"
sleep 2

pkg install -y x11-repo
pkg install -y tur-repo
pkg install -y termux-x11
pkg install -y pulseaudio
pkg install -y termux-x11-nightly
pkg install -y proot-distro
clear

sleep 2
pkg install -y curl wget git nano
clear

# settings termux style
git clone https://github.com/neonlighthdr/my-termux-style.git
rm -rf .termux && cp -rf my-termux-style/.termux ../home/ && rm -rf my-termux-style

# clear cache in termux
pkg clean
clear

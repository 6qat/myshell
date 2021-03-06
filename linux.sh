sudo apt-install build-essential
sudo apt install libgl-dev

myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
echo "My WAN/Public IP address: ${myip}"

## https://itsfoss.com/things-to-do-after-installing-manjaro/
yay ttf-ms-fonts
sudo systemctl enable fstrim.timer
sudo pacman-mirrors --fasttrack

# Inotify Instances Limit

sudo sh -c "echo 256 > /proc/sys/fs/inotify/max_user_instances"

cargo install fd-find
cargo install du-dust
cargo install exa

# For electron devel
apt install autoconf libtool libdrm-dev xorg xorg-dev openbox libx11-dev libgl1-mesa-glx libgl1-mesa-dev


sudo apt-install build-essential
sudo apt install libgl-dev

myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
echo "My WAN/Public IP address: ${myip}"


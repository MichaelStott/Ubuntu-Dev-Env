# Install nmap
apt-get install nmap

# Install burpsuite community edition.
wget burpsuite.sh "https://portswigger.net/burp/releases/download?product=community&version=1.7.36&type=linux"
source burpsuite.sh
# TODO: Can we do any further configuration here?

# Install wireshark
add-apt-repository ppa:wireshark-dev/stable
apt-get update
apt-get install wireshark
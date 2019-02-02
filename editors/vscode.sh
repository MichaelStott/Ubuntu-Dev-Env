
# Exit if vscode is already installed
if [ -x "$(command -v code)" ]; then
    echo "vscode is already installed."
    return
fi

# Add repo for vs code 
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Install vs code
apt-get install apt-transport-https
apt-get update
apt-get install code
# TODO: Is there anyway to install vscode packages?
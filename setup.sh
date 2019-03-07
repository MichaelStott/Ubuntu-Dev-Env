#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "Must have root permission to run setup script." 
   exit 1
fi

echo -e "\e[94mStarting setup...\e[0m"

echo "Adding repositories"
while read l; do
    add-apt-repository "$l"
done <repos.txt
apt-get -qq --assume-yes update

echo "Setting up editors/IDEs"

# Install editors 
source editors/emacs.sh
source editors/vscode.sh

# Install network debugging tools
source tools/networking.sh

#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "Must have root permission to run setup script." 
   exit 1
fi

echo -e "\e[94mStarting application setup...\e[0m"

echo "Setting up editors/IDEs"

# Install editors 
source editors/emacs.sh
source editors/vscode.sh

# Install network debugging tools
source networking.sh
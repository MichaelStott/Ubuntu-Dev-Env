
# Exit if vscode is already installed
if [ -x "$(command -v vscode)" ]; then
    echo "vscode is already installed."
    return
fi


#!/bin/bash

THEME_DIR=$HOME"/.emacs.d/themes/"

THEME="melancholy-theme.el"
THEME_GIT_RAW="https://raw.githubusercontent.com/techquila/melancholy-theme/master/"

# Get emacs
apt-get install emacs

# Apply nice theme :)
mkdir $THEME_DIR
if [ ! -f $THEME_DIR$THEME ]; then
    wget $THEME_GIT_RAW$THEME -P $THEME_DIR
    echo "(load-file \"$THEME_DIR$THEME\")" >> "$HOME/.emacs"
fi

echo "Finsished installing emacs!"

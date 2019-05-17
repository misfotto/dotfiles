#!/usr/bin/bash

## CONFIGURE PATHS HERE
#
# VIM
VIM_PATH="/usr/bin/vim"
VIM_DOTF="dotfiles/vimrc"
#
# TMux
TMUX_PATH="/usr/bin/tmux"
TMUX_DOTF="dotfiles/tmux.conf"


# Array to manage dotfiles going to be installed
# based on wich software is installed
INSTALL=()

# Checking for vim
if test -f "$VIM_PATH"; then
  echo "VIM IS INSTALLED! ( $VIM_PATH )"
  echo "  Copying config for vim..."  
  cp $VIM_DOTF ~/.vimrc
else
  echo "VIM IS NOT INSTALLED ( or is not here $VIM_PATH )"
fi

# Checking for TMux
if test -f "$TMUX_PATH"; then
    echo "TMUX IS INSTALLED! ( $TMUX_PATH )"
    echo "  Copying config for tmux..."
    cp $TMUX_DOTF ~/.tmux.conf
else
  echo "TMUX IS NOT INSTALLED ( or is not here $TMUX_PATH )"
fi

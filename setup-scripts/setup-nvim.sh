#!/bin/bash

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

git clone https://github.com/NvChad/starter ~/.config/nvim

rm -rf ~/.config/nvim/lua/*

cp ~/.dotfiles/nvim/lua/* ~/.config/nvim/lua/
#!/bin/bash

echo "Starting neovim install"

echo "Creating .config directories..."

mkdir ~/.config/nvim

echo "Downloading and setting up vim-plug"

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.dotfiles/neovim/init.vim ~/.config/nvim/init.vim
ln -s ~/.dotfiles/neovim/plugins.vim ~/.config/nvim/plugins.vim

echo "Neovim's done."

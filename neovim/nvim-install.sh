#!/bin/bash

echo "Starting neovim install"

echo "Creating .config directories..."

mkdir ~/.config/nvim
mkdir ~/.config/nvim/lua

echo "Downloading and setting up vim-plug and neovim settings"

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.dotfiles/neovim/plugins.vim ~/.config/nvim/plugins.vim
ln -s ~/.dotfiles/neovim/init.lua ~/.config/nvim/init.lua
ln -s ~/.dotfiles/neovim/lua/ ~/.config/nvim/lua/

echo "Setting up downloaded LSP server binaries"

mkdir -p ~/.local/bin && fish_add_path ~/.local/bin/
chmod -R +x ~/.dotfiles/neovim/lsp-server-bin

ln -s ~/.dotfiles/neovim/lsp-server-bin/marksman ~/.local/bin/marksman

echo "Neovim's done."

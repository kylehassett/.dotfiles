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

echo "Downloading and setting up all desired lsp servers"

mkdir -p ~/.local/bin && fish_add_path ~/.local/bin/
chmod -R +x ~/.dotfiles/neovim/lsp-server-bin

ln -s ~/.dotfiles/neovim/lsp-server-bin/marksman ~/.local/bin/marksman

npm install -g @prisma/language-server @tailwindcss/language-server corepack dockerfile-language-server-nodejs emmet-ls npm pyright sql-language-server svelte-language-server typescript-language-server typescript vscode-langservers-extracted

echo "Neovim's done."

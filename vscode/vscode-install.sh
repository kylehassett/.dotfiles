#!/bin/bash

echo "Linking vscode files..."

rm ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

echo "Installing vscode extensions..."

cd vscode
while IFS= read -r line; do
    code --install-extension $line
done < extensions.txt
cd ~/.dotfiles

echo "Vscode's done."

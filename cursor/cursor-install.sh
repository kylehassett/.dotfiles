#!/bin/bash

echo "Linking vscode files..."
rm ~/Library/Application\ Support/Cursor/User/settings.json
ln -s ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Cursor/User/settings.json
ln -s ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Cursor/User/keybindings.json

echo "Enabling key repeating in Cursor..."
defaults write com.todesktop.230313mzl4w4u92 ApplePressAndHoldEnabled -bool false

echo "Key repeating settings applied. You may need to restart Cursor for changes to take effect."

echo "Installing Cursor extensions..."

cd vscode
while IFS= read -r line; do
    cursor --install-extension $line
done < extensions.txt
cd ~/.dotfiles

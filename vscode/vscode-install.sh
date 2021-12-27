#!/bin/bash

echo "Linking vscode files..."

ln -s settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

echo "Installing vscode extensions..."

while IFS= read -r line; do
    code --install-extension $line
done < extensions.txt

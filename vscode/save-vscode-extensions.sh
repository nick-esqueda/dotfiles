#!/bin/sh

echo "Saving VSCode extensions..."
code --list-extensions > $HOME/dotfiles/vscode/extensions.txt


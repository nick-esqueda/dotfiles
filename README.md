# Dotfiles and Configs

Clone this repo to your home directory (~/)

## Setup Instructions

> Below instructions are from Ubuntu Linux setup

### Bash

Create a symlink in your home directory pointing to the .bashrc in this repo.

`ln -s ~/dotfiles/bash/.bashrc ~/.bashrc`

### Neovim

Create a symlink in the neovim config directory pointing to the init.lua file in this repo.

`ln -s ~/dotfiles/neovim/init.lua ~/.config/nvim/init.lua`

### VS Code

Create a symlink in the VS Code config directory pointing to the settings.json file in this repo.

`ln -s ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json`

Do the same for keybindings.json.

`ln -s ~/dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json`

Run the script to install your VS Code extensions.

`~/dotfiles/vscode/install-vscode-extensions.sh`

If you install more extensions within VS Code later on, run the below script to ensure they get saved to this repo. 

`~/dotfiles/vscode/save-vscode-extensions.sh`

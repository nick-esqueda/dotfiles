# Dotfiles and Configs

Clone this repo to your home directory (~/) and follow the OS-specific instructions below.

## Bash

Create a symlink in your home directory pointing to the .bashrc in this repo.

### Ubuntu

```bash
ln -s ~/dotfiles/bash/.bashrc ~/.bashrc
```

### Windows

Run Windows Command Prompt as Administrator

```cmd
mklink "%USERPROFILE%\.bashrc" "%USERPROFILE%\dotfiles\bash\.bashrc"
```

## Neovim

Create a symlink in the neovim config directory pointing to the init.lua file in this repo.

### Ubuntu

```bash
ln -s ~/dotfiles/neovim/init.lua ~/.config/nvim/init.lua
```

### Windows

Run Windows Command Prompt as Administrator

```cmd
mklink "%USERPROFILE%\AppData\Local\nvim\init.lua" "%USERPROFILE%\dotfiles\neovim\init.lua"
```

## VS Code

1. Create a symlink in the VS Code config directory pointing to the settings.json file in this repo.

2. Do the same for keybindings.json.

3. Run the script to install your VS Code extensions.

If you install more extensions within VS Code later on, run the below script to ensure they get saved to this repo. 

```bash
~/dotfiles/vscode/save-vscode-extensions.sh
```

### Ubuntu

```bash
ln -s ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
ln -s ~/dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json
~/dotfiles/vscode/install-vscode-extensions.sh
```

### Windows

Run Windows Command Prompt as Administrator

```cmd
mklink "%USERPROFILE%\AppData\Roaming\Code\User\settings.json" "%USERPROFILE%\dotfiles\vscode\settings.json"
mklink "%USERPROFILE%\AppData\Roaming\Code\User\keybindings.json" "%USERPROFILE%\dotfiles\vscode\keybindings.json"
```

From Git Bash

```bash
~/dotfiles/vscode/install-vscode-extensions.sh
```

# Dotfiles and Configs

Clone this repo to your home directory (~/) and follow the OS-specific instructions below.

## Bash

Create a symlink in your home directory pointing to the .bashrc in this repo.

### Ubuntu & macOS

```bash
ln -s ~/dotfiles/bash/.bashrc ~/.bashrc
```

### Windows

Run Windows Command Prompt as Administrator

```cmd
mklink "%USERPROFILE%\.bashrc" "%USERPROFILE%\dotfiles\bash\.bashrc"
```

## Neovim

Create a symlink of the `nvim` directory in the proper config location.

### Ubuntu & macOS

```bash
ln -s ~/dotfiles/nvim/ ~/.config/nvim
```

### Windows

Run Windows Command Prompt as Administrator

```cmd
<TODO>
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

### macOS

```bash
ln -s ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
~/dotfiles/vscode/install-vscode-extensions.sh
```

## IntelliJ

Most IntelliJ configs (keymaps, plugins, settings) are synced via JetBrains account.

- TODO! Settings aren't synced across OSes. Set up a new way to sync keymaps and other configs!

Make sure your IntelliJ instance is logged in to your account to sync settings (Log in using GitHub - nick_esqueda@outlook.com)

Create a symlink in your home directory pointing to the .ideavimrc in this repo.

### Ubuntu & macOS

```bash
ln -s ~/dotfiles/intellij/.ideavimrc ~/.ideavimrc
```

### Windows

```cmd
mklink "%USERPROFILE%\.ideavimrc" "%USERPROFILE%\dotfiles\intellij\.ideavimrc"
```


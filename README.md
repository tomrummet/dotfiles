# Dotfiles

This repository is tested on Linux (PopOS + Raspberry Pi OS) and on Windows 11 (WSL2).

## TODO

- [x] create install script
- [x] terminal (alacritty)
- [x] tmux
- [ ] ohmyzsh
    - [ ] machine specific scripts
- [ ] neovim

## Prerequisites

The following software needs to be installed:

- Alacritty
- OhMyZsh
- Tmux
- FZF
- Neovim

Scripts assume local code folder is located in ~/code/.

It also assumes that the dotfiles folder is in ~/code/tools/.

## Usage

### Linux (+ WSL2)

```sh
cd ~/code/
git clone git@github.com:ash-lund/dotfiles.git
./install
```

### Windows

Usage of this dotfiles repository requires WSL2.

#### Alacritty

Copy the file dotfiles/alacritty/alacritty-win11.toml to %AppData%\Roaming\alacritty\alacritty.toml.
# Dotfiles

> (ALWAYS) WORK IN PROGRESS

This repository is tested on Linux (Debian + PopOS + Raspberry Pi OS) and on Windows 11 (WSL2).

Heavily inspired from the Laracast series  [Neovim as a PHP and Javascript IDE](https://laracasts.com/series/neovim-as-a-php-ide) from Jess Archer, and from her dotfiles repository on [Github](https://github.com/jessarcher/dotfiles).

The purpose is to have an easy setup across my private labtop and my work labtop.

## Prerequisites

The following software needs to be installed:

- Ghostty <https://ghostty.org/>
- Neovim <https://neovim.io/>
- OhMyZsh <https://ohmyz.sh/>
- Starship <https://starship.rs/>
- Tmux <https://github.com/tmux/tmux>
- FZF <https://github.com/junegunn/fzf>
- ripgrep (rg) <https://github.com/BurntSushi/ripgrep>
- JetBrainsMono font from Nerd Fonts <https://www.nerdfonts.com/>

All this can be installed by running `./install` after cloning repository.

## Usage

### Linux (+ WSL2)

```sh
mkdir -p ~/code/tools/
cd ~/code/tools/
git clone git@github.com:ash-lund/dotfiles.git
cd dotfiles/
./setup
```

**Optional**: If you want to install prerequisites, then run `./install` before `./setup`. This also installs PHP, Composer and Docker.

### Windows

Usage of this dotfiles repository expects WSL2.


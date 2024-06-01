# Dotfiles

> (ALWAYS) WORK IN PROGRESS

This repository is tested on Linux (Debian + PopOS + Raspberry Pi OS) and on Windows 11 (WSL2).

Heavily inspired from the Laracast series  [Neovim as a PHP and Javascript IDE](https://laracasts.com/series/neovim-as-a-php-ide) from Jess Archer, and from her dotfiles repository on [Github](https://github.com/jessarcher/dotfiles).

The purpose is to have an easy setup across my private labtop and my work labtop.

## Prerequisites

The following software needs to be installed:

- Alacritty <https://alacritty.org/>
- Neovim <https://neovim.io/>
- OhMyZsh <https://ohmyz.sh/>
- Starship <https://starship.rs/>
- Tmux <https://github.com/tmux/tmux>
- FZF <https://github.com/junegunn/fzf>
- ripgrep (rg) <https://github.com/BurntSushi/ripgrep>

All this can be install by running `./install` after cloning repository.

### Assumptions

- local code folder is located in `~/code/`
- dotfiles folder is in `~/code/tools/`
- it uses JetBrainsMono font from Nerd Fonts <https://www.nerdfonts.com/>

## Usage

### Linux (+ WSL2)

```sh
cd ~/code/
git clone git@github.com:ash-lund/dotfiles.git
./setup
```

**Optional**: If you want to install prerequisites, then run `./install` before `./setup`. This also installs PHP, Composer and Docker.

### Windows

Usage of this dotfiles repository requires WSL2.

#### Alacritty

Copy the file `dotfiles/alacritty/alacritty-win11.toml` to `%AppData%\Roaming\alacritty\alacritty.toml`.


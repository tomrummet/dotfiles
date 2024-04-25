# Dotfiles

> WORK IN PROGRESS

This repository is tested on Linux (PopOS + Raspberry Pi OS) and on Windows 11 (WSL2).

Heavily inspired from the Laracast series  [Neovim as a PHP and Javascript IDE](https://laracasts.com/series/neovim-as-a-php-ide) from Jess Archer, and from her dotfiles repository on [Github](https://github.com/jessarcher/dotfiles).

## Prerequisites

The following software needs to be installed:

- Alacritty <https://alacritty.org/>
- Neovim <https://neovim.io/>
- OhMyZsh <https://ohmyz.sh/>
- Tmux <https://github.com/tmux/tmux>
- FZF <https://github.com/junegunn/fzf>
- ripgrep (rg) <https://github.com/BurntSushi/ripgrep>

All this can be install by running `./setup` after cloning repository.

### Assumptions

- local code folder is located in `~/code/`
- dotfiles folder is in `~/code/tools/`
- it uses JetBrainsMono font from Nerd Fonts <https://www.nerdfonts.com/>

## Usage

### Linux (+ WSL2)

```sh
cd ~/code/
git clone git@github.com:ash-lund/dotfiles.git
./install
```

**Optional**: If you want to install prerequisites, then run `./setup` before `./install`. This also installs PHP, Composer and Docker.

### Windows

Usage of this dotfiles repository requires WSL2.

#### Alacritty

Copy the file `dotfiles/alacritty/alacritty-win11.toml` to `%AppData%\Roaming\alacritty\alacritty.toml`.

## TODO

Configuration for:

- [x] create install script
- [x] terminal (alacritty)
- [x] tmux
- [x] ohmyzsh
    - [x] machine specific aliases and environment variables
- [ ] neovim
- [x] create install prerequisites script
- [x] composer
- [x] gitconfig
- [x] move code alias to work aliases

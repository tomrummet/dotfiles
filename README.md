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

Scripts assume local code folder is located in `~/code/`.

It also assumes that the dotfiles folder is in `~/code/tools/`.

To include `.zshenv` and `.aliases` ENV variable `$MACHINA` needs to be set (hell/work).

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

Copy the file `dotfiles/alacritty/alacritty-win11.toml` to `%AppData%\Roaming\alacritty\alacritty.toml`.

## TODO

Configuration for:

- [x] create install script
- [x] terminal (alacritty)
- [x] tmux
- [ ] ohmyzsh
    - [x] machine specific scripts
- [ ] neovim

# Dotfiles

> (ALWAYS) WORK IN PROGRESS

This repository is tested on EndeavourOS (Arch Linux).

Heavily inspired from the Laracast series  [Neovim as a PHP and Javascript IDE](https://laracasts.com/series/neovim-as-a-php-ide) from Jess Archer, and from her dotfiles repository on [Github](https://github.com/jessarcher/dotfiles).

The purpose is to have an easy setup across my private labtop and my work labtop.

## Prerequisites

### Clone the project

```sh
mkdir -p ~/code/tools/
cd ~/code/tools/
git clone git@github.com:tomrummet/dotfiles.git
cd dotfiles/
```

### Dependencies

The following packages needs to be installed:

- Ghostty <https://ghostty.org/>
- Neovim <https://neovim.io/>
- Gum <https://github.com/charmbracelet/gum/>
- JetBrainsMono font from Nerd Fonts <https://www.nerdfonts.com/>
- Starship <https://starship.rs/>
- Tmux <https://github.com/tmux/tmux>
- FZF <https://github.com/junegunn/fzf>
- ripgrep (rg) <https://github.com/BurntSushi/ripgrep>

All this can be installed by cloning and running `./install` from my installer repository <https://github.com/tomrummet/installer>.

## Setup

Run `./setup` after cloning the project, this will take care of symlinking config files and setting up executables.

The setup script will tell you this, but just to make sure, remember to update `~/.gitconfig.local` to make sure you commit with the right name and email.

## Honourable mentions

- Jess Archer <https://github.com/jessarcher> <https://jessarcher.com/>
- ThePrimeagen for the `t` script <https://github.com/ThePrimeagen>

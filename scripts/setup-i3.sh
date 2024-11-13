#!/usr/bin/env bash

echo "Adding config for i3"

mkdir -p $HOME/.config/i3
ln -sf $DOTFILES/wm/i3/config $HOME/.config/i3/config
ln -sf $DOTFILES/utils/dimmer $HOME/.local/bin/dimmer

mkdir -p $HOME/.config/polybar
ln -sf $DOTFILES/wm/polybar/config.ini $HOME/.config/polybar/config.ini

mkdir -p $HOME/.config/rofi
ln -sf $DOTFILES/wm/rofi/config.rasi $HOME/.config/rofi/config.rasi
ln -sf $DOTFILES/wm/rofi/catppuccin-mocha.rasi $HOME/.config/rofi/catppuccin-mocha.rasi

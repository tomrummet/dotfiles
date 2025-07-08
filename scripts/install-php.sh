#!/usr/bin/env bash

gum log --structured --time="DateTime" --level info "Installing PHP 8.3"

IS_INSTALLED=$(php -v | rg -c "PHP 8.3.")

if [ ! "$IS_INSTALLED" = "1" ]; then
    if [ ! "$RUNNING_DOTFILES" = 1 ]; then
        yay
    fi

    # Install dependencies
    yay -S --noconfirm --needed php
fi

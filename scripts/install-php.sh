#!/usr/bin/env sh

gum log --structured --time="DateTime" --level info "Installing PHP 8.3"

IS_INSTALLED=$(php -v | rg -c "PHP 8.3.")

if [ ! "$IS_INSTALLED" = "1" ]; then
    if [ ! "$RUNNING_DOTFILES" = 1 ]; then
        sudo apt update
    fi

    # Install dependencies
    sudo apt install -y \
        ca-certificates \
        apt-transport-https \
        lsb-release

    IS_DEBIAN=$(uname -v | rg -c "Debian")

    # Set up repository
    if [ "$IS_DEBIAN" = "1" ]; then
        sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
        sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
    else
        sudo apt install -y software-properties-common

        sudo add-apt-repository ppa:ondrej/php -y
    fi

    sudo apt update
    sudo apt install -y --no-install-recommends \
        php8.3 \
        php8.3-cli \
        php8.3-mysql \
        php8.3-zip \
        php8.3-gd \
        php8.3-mbstring \
        php8.3-curl \
        php8.3-xml \
        php8.3-bcmath \
        php8.3-xdebug
fi

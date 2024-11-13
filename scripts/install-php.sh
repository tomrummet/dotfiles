#!/usr/bin/env sh

IS_INSTALLED=$(php -v | rg -c "PHP 8.2.")

if [ ! "$IS_INSTALLED" = "1" ]; then
    echo "Installing PHP and commen extensions"

    # Installs Docker and Docker Compose
    if [ ! "$RUNNING_DOTFILES" = 1 ]; then
        sudo apt update
    fi

    # Installs PHP 8.2 and modules
    sudo apt install -y \
        ca-certificates \
        apt-transport-https \
        lsb-release

    IS_DEBIAN=$(uname -v | rg -c "Debian")

    if [ "$IS_DEBIAN" = "1" ]; then
        sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
        sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
    else
        sudo apt install -y software-properties-common

        sudo add-apt-repository ppa:ondrej/php -y
    fi

    sudo apt update

    sudo apt install -y --no-install-recommends \
        php8.2 \
        php8.2-cli \
        php8.2-mysql \
        php8.2-zip \
        php8.2-gd \
        php8.2-mbstring \
        php8.2-curl \
        php8.2-xml \
        php8.2-bcmath \
        php8.2-xdebug
fi

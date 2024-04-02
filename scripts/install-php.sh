#!/usr/bin/env sh

# Installs PHP 8.2 and modules
sudo apt update

sudo apt install -y \
    ca-certificates \
    apt-transport-https \
    software-properties-common \
    lsb-release

sudo add-apt-repository ppa:ondrej/php -y

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
    php8.2-bcmath

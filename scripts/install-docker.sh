#!/usr/bin/env sh

gum log --structured --time="DateTime" --level info "Installing Docker and Docker Composer"

# Installs Docker and Docker Compose
if [ ! "$RUNNING_DOTFILES" = 1 ]; then
    yay
fi

# Install dependencies
yay -S --needed --noconfirm curl docker docker-compose

systemctl enable docker.service

sudo groupadd docker
sudo usermod -aG docker $USER


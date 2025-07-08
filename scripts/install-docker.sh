#!/usr/bin/env sh

gum log --structured --time="DateTime" --level info "Installing Docker and Docker Composer"

# Installs Docker and Docker Compose
if [ ! "$RUNNING_DOTFILES" = 1 ]; then
    sudo apt update
fi

# Install dependencies
sudo apt install -y \
    ca-certificates \
    curl

IS_DEBIAN=$(uname -v | rg -c "Debian")

# Set up repository
if [ "$IS_DEBIAN" = "1" ]; then
    if [ ! -f "/etc/apt/keyrings/docker.asc" ]; then
        sudo install -m 0755 -d /etc/apt/keyrings
        sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
        sudo chmod a+r /etc/apt/keyrings/docker.asc

        echo \
            "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
            $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
            sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    fi
else
    sudo apt install -y \
        apt-transport-https \
        software-properties-common

    if [ ! -f "/usr/share/keyrings/docker-archive-keyring.gpg" ]; then
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

        echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    fi
fi

sudo apt update

sudo apt install -y \
    docker-ce \
    docker-ce-cli \
    docker-compose-plugin

sudo groupadd docker
sudo usermod -aG docker $USER


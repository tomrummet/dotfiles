#!/usr/bin/env sh

# This script is used to refresh the asus-wmi-screenpad kernel module when the Linux kernel has been updated

# Remove the old module
sudo dkms remove -m asus-wmi -v 1.0 --all
sudo rm -r /usr/src/asus-wmi-1.0

# Download the new module
sudo mkdir /usr/src/asus-wmi-1.0
cd /usr/src/asus-wmi-1.0
sudo wget 'https://github.com/Plippo/asus-wmi-screenpad/archive/master.zip'
sudo unzip master.zip
sudo mv asus-wmi-screenpad-master/* .
sudo rmdir asus-wmi-screenpad-master
sudo rm master.zip

# Prepare the module for the current kernel
sudo sh prepare-for-current-kernel.sh

# Add, build and install the module
sudo dkms add -m asus-wmi -v 1.0
sudo dkms build -m asus-wmi -v 1.0

# Install the module, force if necessary
sudo dkms install -m asus-wmi -v 1.0 --force

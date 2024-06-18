#!/bin/bash

# Update Ubuntu system
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
sudo apt autoclean

# Update Flatpak packages
flatpak update -y

echo "System and Flatpak packages updated successfully."

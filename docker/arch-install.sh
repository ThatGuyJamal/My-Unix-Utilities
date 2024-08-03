#!/bin/bash

FILE_NAME=docker-desktop-x86_64.pkg.tar.zst
TEMP_DIR=$(mktemp -d)

sudo pacman -S gnome-terminal # Required for docker
sudo pacman -S docker -y

# Add the current user to the docker group using the who command
sudo usermod -aG docker $(whoami)
su $(whoami)

# Download Docker Desktop package to the temporary directory
wget -P $TEMP_DIR https://desktop.docker.com/linux/main/amd64/$FILE_NAME

# Extract the package in the temporary directory
tar --use-compress-program=unzstd -xvf $TEMP_DIR/$FILE_NAME -C $TEMP_DIR

# Install Docker Desktop
sudo pacman -U --noconfirm $TEMP_DIR/$FILE_NAME

echo "Docker and Docker Desktop have been installed!"

# Clean up
rm -rf $TEMP_DIR
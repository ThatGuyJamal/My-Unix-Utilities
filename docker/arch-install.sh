#!/bin/bash

FILE_NAME=docker-desktop-x86_64.pkg.tar.zst

sudo pacman -S gnome-terminal # Required for docker
sudo pacman -S docker -y

# Add the current user to the docker group using the who command
sudo usermod -aG docker $(whoami)
su $(whoami)

# Download Docker Desktop package
wget https://desktop.docker.com/linux/main/amd64/$FILE_NAME

# Extract the package
tar --use-compress-program=unzstd -xvf $FILE_NAME

# Install Docker Desktop
sudo pacman -U --noconfirm $FILE_NAME

echo "Docker and Docker Desktop has been installed!"
#!/bin/bash

# Stop Docker services
sudo systemctl stop docker.service
sudo systemctl disable docker.service

# Remove Docker Desktop package
sudo pacman -Rns docker-desktop

# Remove Docker group
sudo groupdel docker

# Remove Docker configuration and data directories
sudo rm -rf /var/lib/docker
sudo rm -rf /etc/docker
sudo rm -rf ~/.docker

echo "Docker and Docker Desktop have been completely uninstalled and configurations removed!"

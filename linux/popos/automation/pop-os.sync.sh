#!/bin/bash

# A simple script to synchronise all repositories and locally installed packages for our system.

echo "Synchronising repositories..."

sudo apt update

echo "Synchronising packages..."

sudo apt upgrade -y

echo "Synchronising packages complete... removing any unsed dependancy's..."

sudo apt-get autoremove

echo "Done!"

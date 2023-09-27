#!/bin/bash

# Update package repositories
sudo pacman -Syu --noconfirm

# Install trash
sudo pacman -S trash-cli --noconfirm

# Install lsd
sudo pacman -S lsd --noconfirm

# Install bat
sudo pacman -S bat --noconfirm

# Install youtube-dl
# sudo pacman -S youtube-dl --noconfirm
sudo pacman -S yt-dlp --noconfirm

# Install neofetch
sudo pacman -S neofetch --noconfirm


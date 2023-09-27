#!/bin/bash

# Install required packages
sudo pacman -S sof-firmware
sudo pacman -S alsa-utils alsa-firmware
sudo pacman -S pulseaudio pulseaudio-alsa
sudo pacman -S pamixer plasma-pa

# Reload system daemon and restart ALSA service
systemctl daemon-reload
systemctl restart alsa-state.service


echo "+-----------------------------------+"
echo "|                                   |"
echo "| Reboot your system                |"
echo "| for the changes to                |"
echo "| take effect.                      |"
echo "|                                   |"
echo "+-----------------------------------+"


#!/bin/bash

# Use this dir as a mount point
mkdir /home/salma/HDD

# Arch Linux requires the ntfs-3g package to be installed to be able to mount NTFS partitions.
sudo pacman -S ntfs-3g

# Unmount the partition
sudo umount /dev/sda1

# Add an entry to the /etc/fstab file to mount the partition at boot time.
sudo bash -c "echo $'\n# ~S~\n/dev/sda1 /home/salma/HDD auto defaults 0 1' >> /etc/fstab"

# Make systemd uses the new version of fstab
sudo systemctl daemon-reload

# Mount the partition manually to start using it
sudo mount /home/salma/HDD/

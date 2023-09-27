#!/bin/bash

# Set the directory where programs will be installed
programs_dir="$HOME/programs"

# Create programs directory if it doesn't exist
mkdir "$programs_dir"

# Change to programs directory
cd "$programs_dir" || exit

# Install yay package manager if not already installed
if ! command -v yay &> /dev/null; then
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd "$programs_dir" || exit
    rm -rf yay
fi

# Update package lists
sudo pacman -Syu --noconfirm

# Define packages to install
packages=(
    vlc
    wps-office
    kolourpaint
    google-chrome
    discord
    obs-studio
    visual-studio-code-bin
    jetbrains-toolbox
)

# Install packages using yay or pacman
installed_packages=()
for package in "${packages[@]}"; do
    if yay -Qi "$package" &> /dev/null; then
        echo "$package is already installed. Skipping..."
    else
        if ! sudo pacman -Qi "$package" &> /dev/null; then
            yay -S --noconfirm "$package"
            installed_packages+=("$package")
        else
            echo "$package is already installed using pacman. Skipping..."
        fi
    fi
done

# Print installed packages
if [[ ${#installed_packages[@]} -gt 0 ]]; then
    echo "Successfully installed the following packages:"
    for installed_package in "${installed_packages[@]}"; do
        echo "- $installed_package"
    done
else
    echo "No new packages were installed."
fi

echo "Installation completed successfully!"


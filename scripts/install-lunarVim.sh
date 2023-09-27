#!/bin/bash

# Install dependencies
sudo pacman -S neovim lua git make python python-pip nodejs npm cmake cargo ripgrep curl unzip fontconfig xsel ripgrep

# Install neovim if not already installed
if ! command -v nvim &> /dev/null; then
    sudo pacman -S --noconfirm neovim
else
    echo "Neovim is already installed. Skipping..."
fi

# Install LunarVim if not already installed
if ! command -v lvim &> /dev/null; then
    bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
else
    echo "LunarVim is already installed. Skipping..."
fi

# Install pynvim Python package
if python -c "import pynvim" &> /dev/null; then
    echo "pynvim is already installed. Skipping..."
else
    pip install pynvim
fi

# Install NerdFonts if not already installed
nerdfonts_dir="$HOME/programs/getnf"
#if [ -d "$nerdfonts_dir" ]; then
#    echo "NerdFonts is already installed. Skipping..."
#else
#    git clone https://github.com/ryanoasis/nerd-fonts.git "$nerdfonts_dir"
#    cd "$nerdfonts_dir" && ./install.sh
#    echo "Remember to run 'getnf' from the terminal to choose your Nerd Font."
#    echo "After installing your font, refresh your font cache using 'fc-cache -f -v'."
#fi
#
#echo "Installation completed successfully!"

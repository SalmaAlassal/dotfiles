#!/bin/bash

# Check if an image file is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <image_file>"
    exit 1
fi

# Copy the image to the clipboard in PNG format
cat "$1" | xclip -selection clipboard -t image/png

echo "Image copied to clipboard: $1"

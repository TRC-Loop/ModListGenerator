#!/bin/bash

# This will check if Python is installed
if ! command -v python3 &> /dev/null
then
    echo "Python3 could not be found. Installing Python3..."
    if [[ "$(uname)" == "Darwin" ]]; then
        # macOS install
        brew install python3
    else
        # Linux (Debian/Ubuntu) install
        sudo apt update
        sudo apt install -y python3 python3-pip
    fi
fi

# Install required dependencies (tkinter, toml, etc.)
echo "Installing dependencies..."
echo "No dependencies."

# Check if the repo is already cloned, if not, clone it
if [ ! -d "ModListGenerator" ]; then
    echo "Cloning ModListGenerator repository..."
    git clone https://github.com/TRC-Loop/ModListGenerator.git
else
    # If repo exists, pull the latest changes
    echo "Updating ModListGenerator repository..."
    cd ModListGenerator
    git pull origin main
    cd ..
fi

# Make the script executable
chmod +x ModListGenerator/src/main.py

# Create a symlink for global CLI access
if ! command -v modlistgen &> /dev/null
then
    echo "Creating symlink for modlistgen command..."
    sudo ln -s "$(pwd)/ModListGenerator/src/main.py" /usr/local/bin/modlistgen
fi

echo "Installation complete! You can now use modlistgen in your terminal."

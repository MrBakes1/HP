#!/bin/bash

if ! command -v mpg123 &> /dev/null; then
    echo "mpg123 not found. Installing mpg123..."
    # Detect OS and install mpg123
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt update && sudo apt install -y mpg123
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install mpg123 || echo "Please install Homebrew first!"
    else
        echo "Unsupported OS. Please install mpg123 manually."
        exit 1
    fi
fi

SONG_PATH="$HOME/harry_potter_theme.mp3"

if [ -f "$SONG_PATH" ]; then
    echo "Playing the Harry Potter theme song..."
    mpg123 "$SONG_PATH"
else
    echo "Error: File not found. Please place 'harry_potter_theme.mp3' in your home directory."
    exit 1
fi

SCRIPT_NAME="hp"
if [ "$0" != "/usr/local/bin/$SCRIPT_NAME" ]; then
    echo "Moving script to /usr/local/bin as 'hp' for global execution..."
    sudo mv "$0" "/usr/local/bin/$SCRIPT_NAME"
    echo "Script has been moved to /usr/local/bin and is now accessible as 'hp' from anywhere in the terminal."
fi

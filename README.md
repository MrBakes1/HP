# HP - Harry Potter Theme Song Player

A simple Bash script that plays the Harry Potter theme song from the terminal. This script automatically installs the `mpg123` audio player if it’s not already installed, plays the theme song, and installs itself globally so you can run it from anywhere in the terminal using the command `hp`.

## Prerequisites

1. **Download the Theme Song**  
   First, download the Harry Potter theme song MP3 file from [this link on Zedge](https://www.zedge.net/ringtones/4db2dcbb-3aea-31a5-a463-e99674283dde).

2. **Place the Theme Song in Your Home Directory**  
   After downloading, move the file to your home directory (`~/`) and rename it as `harry_potter_theme.mp3` if necessary.

## Installation

1. **Copy the Script**  
   Copy the `hp.sh` script provided in this repository to your local machine.

2. **Make the Script Executable**  
   Run the following command to make the script executable:
   ```bash
   chmod +x hp.sh

3. **Run the script to play the theme song, install dependencies, and make the command globally accessible:

bash

    ./hp.sh

4. **Usage

After running hp.sh once, the script will move itself to /usr/local/bin/hp, allowing you to run it from anywhere in the terminal. Simply type:

bash

    hp

This will play the Harry Potter theme song from your home directory.

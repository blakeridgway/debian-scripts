#!/bin/sh

if [ "$(id -u)" -ne 0 ]; then
        echo 'This script must be run by root' >&2
        exit 1
fi

# Retrieve discord tar.gz file 

wget "https://discord.com/api/download?platform=linux&format=tar.gz" -O discord.tar.gz

# Extract files to /opt directory

tar -xvf discord.tar.gz -C /opt/;rm discord.tar.gz

#!/bin/sh

if [ "$(id -u)" -ne 0 ]; then
        echo 'This script must be run by root' >&2
        exit 1
fi

# Retrive Discord
wget "https://discord.com/api/download?platform=linux&format=tar.gz" -O discord.tar.gz

# Extract files to /opt directory

tar -xvf discord.tar.gz -C /opt/;rm discord.tar.gz

# Create symbolic link

ln -sf /opt/Discord/Discord /usr/bin/Discord

# adding desktop file
cat > ./temp << "EOF"
	[Desktop Entry]
	Name=Discord
	StartupWMClass=discord
	Comment=All-in-one voice and text chat for gamers that's free, secure, and works on both your desktop and phone.
	GenericName=Internet Messenger
	Exec=/usr/bin/Discord
	Icon=/opt/Discord/discord.png
	Type=Application
	Categories=Network;InstantMessaging;
	Path=/usr/bin
EOF

cp ./temp /usr/share/applications/discord.desktop;rm ./temp
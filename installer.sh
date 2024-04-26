#!/bin/bash

# Check to see if Zenity is installed
if ! command -v zenity &> /dev/null; then
	echo "Zenity is not installed. Please install it to use this script"
	exit 1
fi

# Display dialog to selection installation options

option=$(zenity --list \
				--title="Installer Options" \
				--text="Select one of the Options:" \
				--columm="Option" --column="Description" \
				"Option 1" "Install Discord" \
				"Option 2" "Update Discord" \
				"Option 3" "Configure dotfiles" \
				"Option 4" "Cancel")

# Check against selection

case "$option" in
	"Option 1")
		echo "Installing Discord..."
		# Add discord install script
		;;
	"Option 2")
		echo "Updating Discord..."
		# Add Discord Update script
		;;
	"Option 3")
		echo "Configuring dotfiles..."
		# Add dotfiles script
		;;
	"Option 4")
		echo "Exiting..."
		;;
	*)
		echo "Invalid option. Exiting..."
		;;
esac

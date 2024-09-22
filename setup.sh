#!/bin/sh

set -e

echo "
--------------------------------------------------------------------------

 █████╗ ██████╗  ██████╗██╗  ██╗███████╗███████╗████████╗██╗   ██╗██████╗ 
██╔══██╗██╔══██╗██╔════╝██║  ██║██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔══██╗
███████║██████╔╝██║     ███████║███████╗█████╗     ██║   ██║   ██║██████╔╝
██╔══██║██╔══██╗██║     ██╔══██║╚════██║██╔══╝     ██║   ██║   ██║██╔═══╝ 
██║  ██║██║  ██║╚██████╗██║  ██║███████║███████╗   ██║   ╚██████╔╝██║     
╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝     

--------------------------------------------------------------------------
"

# List of common AUR helpers
aur_helpers=("yay" "paru" "pikaur" "trizen")

# Function to check if an AUR helper is installed
checkAURHelper() {
    for helper in "${aur_helpers[@]}"; do
	if command -v "$helper" &> /dev/null; then
		AURHelper=$helper
	fi
    done
}

# Checking system is up-to-date
echo "
--------------------------------------------------------------------------
	███████╗██╗   ██╗███████╗████████╗███████╗███╗   ███╗
	██╔════╝╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔════╝████╗ ████║
	███████╗ ╚████╔╝ ███████╗   ██║   █████╗  ██╔████╔██║
	╚════██║  ╚██╔╝  ╚════██║   ██║   ██╔══╝  ██║╚██╔╝██║
	███████║   ██║   ███████║   ██║   ███████╗██║ ╚═╝ ██║
	╚══════╝   ╚═╝   ╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝
	                                                     
	██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗   
	██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝   
	██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗     
	██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝     
	╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗   
	 ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝   
--------------------------------------------------------------------------
"
checkAURHelper

echo "Do you want to update the system? (Y/y) or (N,n)"
echo "Entered: " && read updateConfirmation && echo -e " \n "
function systemUpdate(){
	case $updateConfirmation in 
		Y | y)  echo "Updating System"
			echo "$AURHelper -Syu"
			$AURHelper -Syu;;
		N | n)  echo "System Update Skipped";;
		*)	echo "Enter a valid answer";;
	esac
}

systemUpdate

echo "
--------------------------------------------------------------------------
   ██╗  ██╗██╗   ██╗██████╗ ██████╗ ██╗      █████╗ ███╗   ██╗██████╗ 
   ██║  ██║╚██╗ ██╔╝██╔══██╗██╔══██╗██║     ██╔══██╗████╗  ██║██╔══██╗
   ███████║ ╚████╔╝ ██████╔╝██████╔╝██║     ███████║██╔██╗ ██║██║  ██║
   ██╔══██║  ╚██╔╝  ██╔═══╝ ██╔══██╗██║     ██╔══██║██║╚██╗██║██║  ██║
   ██║  ██║   ██║   ██║     ██║  ██║███████╗██║  ██║██║ ╚████║██████╔╝
   ╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ 
                                                                      
   ███████╗███████╗████████╗██╗   ██╗██████╗                          
   ██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔══██╗                         
   ███████╗█████╗     ██║   ██║   ██║██████╔╝                         
   ╚════██║██╔══╝     ██║   ██║   ██║██╔═══╝                          
   ███████║███████╗   ██║   ╚██████╔╝██║                              
   ╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝                              
--------------------------------------------------------------------------
"

echo "Do want to install Hyprland? (Y/y) or (N/n)"
echo "Entered: " && read hyprlandConfirmation && echo -e " \n "
function installHyprland(){
	case $hyprlandConfirmation in
		Y | y)  echo "Installing Hyprland & Hyprland Ecosystem"
			echo "$AURHelper -S hyprland hypridle hyprlock hyprpaper hyprpicker xdg-desktop-portal-hyprland" 
			$AURHelper -S hyprland hypridle hyprlock hyprpaper hyprpicker xdg-desktop-portal-hyprland;;
		N | n)  echo "Cancelling Hyprland Installation"
	esac
}
installHyprland

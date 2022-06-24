#!/bin/bash

PS3='Choose an option: '
options=("Snap" "Flatpak" "Pip" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "Snap")
            cd ~/Applications

            git clone https://aur.archlinux.org/snapd.git 
            cd snapd
            makepkg -si
            sudo systemctl enable --now snapd.socket
            sudo ln -s /var/lib/snapd/snap /snap
        
            ;;
            
        "Flatpak")
            sudo pacman -S --noconfirm --needed flatpak



            ;;
        "Pip")
            sudo pacman -S --noconfirm --needed python-pip



            ;;        	
        "Back")

          clear
        exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

#!/bin/bash

PS3='Get Another Package Manager: '
options=("Snap" "Flatpak" "Pip" "Pacaur" "Yay" "Back")
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
            sudo pacman -S --noconfirm --needed python python-pip
            ;;
        "Pacaur")
            cd ~/Applications
            git clone https://aur.archlinux.org/pacaur.git
            cd pacaur/
            makepkg -si
            ;;
            
        "Yay")
            cd ~/Applications*
            git clone https://aur.archlinux.org/yay-bin.git
            cd yay-bin
            makepkg -si
            ;;
        "Back")

          clear
        exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

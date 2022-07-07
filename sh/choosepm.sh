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
            clear
            cd ~/ts/sh
            ./choosepmprompt.sh
        
            ;;
            
        "Flatpak")
            sudo pacman -S --noconfirm --needed flatpak
            clear

            cd ~/ts/sh
            ./choosepmprompt.sh
        

            ;;
        "Pip")
            sudo pacman -S --noconfirm --needed python python-pip
            ;;
        "Pacaur")
            cd ~/Applications
            git clone https://aur.archlinux.org/pacaur.git
            cd pacaur/
            makepkg -si
            clear
            cd ~/ts/sh
            ./choosepmprompt.sh
        
            
            ;;
            
        "Yay")
            cd ~/Applications*
            git clone https://aur.archlinux.org/yay-bin.git
            cd yay-bin
            makepkg -si
            clear
            cd ~/ts/sh
            ./choosepmprompt.sh
        
            ;;
        "Back")

          clear
        exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

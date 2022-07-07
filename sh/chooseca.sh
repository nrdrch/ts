#!/bin/bash 
clear
PS3='Choose an option: '
options=("Spotify" "Discord" "Telegram" "Session" "Virt-Manager/QEMU/KVM" "")
select fav in "${options[@]}"; do
    case $fav in
        "Spotify")
            cd ~/Applications
            git clone https://aur.archlinux.org/spotify.git
            cd spotify/
            makepkg -si
            
            clear
            cd ~/ts/sh
            ./choosecaprompt
        
            ;;
        "Discord")
            cd ~/Applications
            
            git clone https://aur.archlinux.org/discord_arch_electron.git
            cd discord*
            makepkg -si
           
            clear
            cd ~/ts/sh
            ./choosecaprompt
            
            ;;
        "Telegram")
            cd ~/Applications
            git clone https://aur.archlinux.org/telegram-desktop-bin.git
            cd telegram-desktop-bin
            makepkg -si
            
            clear
            cd ~/ts/sh
            ./choosecaprompt
            
            ;;
        "Session")
            
            cd ~/Applications
            git clone https://aur.archlinux.org/session-desktop-bin.git
            cd session-desktop-bin/
            makepkg -si

            clear
            cd ~/ts/sh
            ./choosecapromp
        
        
            ;;
        "Virt-Manager/QEMU/KVM")
            
            
            
            
            clear
            cd ~/ts/sh
            ./choosecapromp
            
            ;;
        "Back")
        
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

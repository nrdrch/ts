#!/bin/bash 
clear
cat $HOME/ts/ignore/necessary.txt
sleep 0.2s
PS3='Choose an Application: '
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
            ./choosecaprompt.sh
        
            ;;
        "Discord")
            cd ~/Applications
            
            git clone https://aur.archlinux.org/discord_arch_electron.git
            cd discord*
            makepkg -si
           
            clear
            cd ~/ts/sh
            ./choosecaprompt.sh
            
            ;;
        "Telegram")
            cd ~/Applications
            git clone https://aur.archlinux.org/telegram-desktop-bin.git
            cd telegram-desktop-bin
            makepkg -si
            
            clear
            cd ~/ts/sh
            ./choosecaprompt.sh
            
            ;;
        "Session")
            
            cd ~/Applications
            git clone https://aur.archlinux.org/session-desktop-bin.git
            cd session-desktop-bin/
            makepkg -si

            clear
            cd ~/ts/sh
            ./choosecapromp.sh
        
        
            ;;
        "Virt-Manager/QEMU/KVM")
            cd ~/Applications 
            git clone https://github.com/BigAnteater/KVM-GPU-Passthrough/
            
            cd ~/ts/sh
            ./chooseintamd.sh
            
            
            
            
            
            clear
            cd ~/ts/sh
            ./choosecapromp.sh
            
            ;;
        "Back")
        
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

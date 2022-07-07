#!/bin/bash 
clear
cat $HOME/ts/ignore/necessary.txt
sleep 0.2s
PS3='Choose an Option: '
options=("GIMP" "Kden-Live" "K-SNIP" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "GIMP)")
             sudo pacman -S --noconfirm
             clear
             cd ~/ts/sh
             ./choosegutilsprompt.sh

             ;;
        "Kden-Live")
             cd ~/Applications
             git clone https://aur.archlinux.org/kdenlive-git.git
             cd kdenlive-git/
             makepkg -si
             clear
             cd ~/ts/sh
             ./choosegutilsprompt.sh

             ;;
        "K-SNIP")
             
             cd ~/Applications
             git clone https://aur.archlinux.org/ksnip-git.git
             cd ksnip-git/
             makepkg -si
             clear
             cd ~/ts/sh
             ./choosegutilsprompt.sh
        
             
             

        
             ;;
        "Back")
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

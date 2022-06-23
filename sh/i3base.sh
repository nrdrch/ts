
#!/bin/bash

PS3='Choose an option: '
options=("Base" "i3-gaps" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "Base Packages")
            sudo pacman -S --needed --noconfirm man-db btop neofetch mpv
            sudo pacman -S --noconfirm base-devel
            clear
            cd ~/ts/sh
            ./choosesh.sh
            
            
            
            ;;
        	
        "Back")
          clear
        exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

#!/bin/bash
echo ""

PS3='Are you sure?'
options=("i3-gaps Base" "" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "")
            sudo pacman -S --needed --noconfirm man-db btop neofetch mpv
            sudo pacman -S --noconfirm base-devel
            clear
            cd ~/ts/sh
            ./choosesh.sh
            clear 
            cd ~/ts/sh
            ./choosete.sh
            
            
            ;;
        	
        "Back")
          clear
        exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

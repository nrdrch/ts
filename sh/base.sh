#!/bin/bash

echo "moejoe's mildly useful and totally unbiased:"
sleep 0.5s
cat $HOME/ts/ignore/necessary.txt
sleep 2s
PS3='Are you sure?'
options=("Yes" "" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "Yes")
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

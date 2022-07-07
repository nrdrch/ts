#!/bin/bash
clear
echo "moejoe's mildly useful and totally unbiased:"
sleep 0.5s
cat $HOME/ts/ignore/necessary.txt
sleep 0.2s

PS3='Are you sure?'
options=("Yes" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "Yes")
            sudo pacman -S --noconfirm base-devel
            sudo pacman -S --noconfirm picom rofi feh polybar alacritty
            sudo pacman -S --needed --noconfirm man-db
	    
            
            sudo rm -r -d ~/.config/i3/config
            sudo mv ~/ts/cfg/config ~/.config/i3/config
            sudo mv ~/ts/cfg/config.ini ~/.config/polybar/config.ini
            sudo mv ~/ts/cfg/picomconfig ~/.config/picom/config
            sudo mv ~/ts/ignore/spaceguy.jpg ~/Pictures/spaceguy.jpg
            sudo mv ~/ts/ignore/Baldurs-Gare-Dark-Alliance.jgp ~/Pictures/Baldurs-Gare-Dark-Alliance.jgp
            sudo rm -r -d ~/.config/alacritty/alacritty.yml
            sudo mv ~/ts/cfg/alacritty.yml ~/.config/alacritty/alacritty.yml
            
            clear
            cd ~/ts/sh
	    ./chooseed.sh
            
	    
            
            
            echo ">>  Performed i3-gaps base Installation | $(date)" >> ~/ts/sh/mainprompt.sh
            ;;
        "Back")
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

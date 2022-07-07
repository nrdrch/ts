#!/bin/bash 
clear
cat $HOME/ts/ignore/necessary.txt
sleep 0.2s
PS3='Select the Utilities for your needs: '
options=("Did You Mean?(TUI Spellchecker)" "GRUB Utilities"  "Graphical Utilities" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "Did You Mean?(TUI Spellchecker)")
             cd ~/Applications
             git clone https://aur.archlinux.org/didyoumean-bin.git
             cd didyoumean-bin/
             makepkg -si
             clear
             

             ;;
        "GRUB Utilities")
             sudo pacman -S --noconfirm grub-customizer
             cd ~/Applications
             git clone https://aur.archlinux.org/grub-hook.git
             cd grub-hook/
             makepkg -si
             

             ;;
        "Graphical Utilities")
        
             cd ~/ts/sh 
             ./choosegutils.sh
        
             
             ;;

        "")
             ;;
        "Back")
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

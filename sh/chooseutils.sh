#!/bin/bash 
clear
cat $HOME/ts/ignore/necessary.txt
sleep 0.2s
PS3='Select the Utilities for your needs: '
options=("Did You Mean?(TUI Spellchecker)" "GRUB Utilities"  "Graphical Utilities" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "Did You Mean?(TUI Spellchecker)")
             cd ~/ts/sh
             ./choosepm.sh

             ;;
        "GRUB Utilities")
             sudo pacman -S --noconfirm mpv btop neofetch man-db
             sudo pacman -S --noconfirm ntfs-3g udisks2 btrfs-progs exfatprogs f2fs-tools dosfstools jfsutils cryptsetup lvm2 util-linux nilfs-utils xfsprogs

             ;;
        "Graphical Utilities")
        
             
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

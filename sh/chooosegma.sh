#!/bin/bash 
clear
PS3='Choose an option: '
options=("Package Managers" "The Usual Stuff"  "Useful Utilities" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "Package Managers")
             cd ~/ts/sh
             ./choosepm.sh

             ;;
        "The Usual Stuff")
             sudo pacman -S --noconfirm mpv btop neofetch man-db
             sudo pacman -S --noconfirm ntfs-3g udisks2 btrfs-progs exfatprogs f2fs-tools dosfstools jfsutils cryptsetup lvm2 util-linux nilfs-utils xfsprogs

             ;;
        "Useful Utilities")
             cd ~/ts/sh
             ./chooseutils.sh
             clear
             
             ;;


        "Back")
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

#!/bin/bash 
clear
cat $HOME/ts/ignore/necessary.txt
sleep 0.2s
PS3='Choose an option: '
options=("Package Managers" "The Usual Stuff"  "Useful Utilities" "Common Applications" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "Package Managers")
             cd ~/ts/sh
             ./choosepm.sh
             clear
             cd ~/ts/sh 
             ./choosegmaprompt.sh

             ;;
        "The Usual Stuff")
             sudo pacman -S --noconfirm mpv btop neofetch man-db
             sudo pacman -S --noconfirm ntfs-3g udisks2 btrfs-progs exfatprogs f2fs-tools dosfstools jfsutils cryptsetup lvm2 util-linux nilfs-utils xfsprogs
             clear
             cd ~/ts/sh 
             ./choosegmaprompt.sh

             ;;
        "Useful Utilities")
             cd ~/ts/sh
             ./chooseutils.sh
             clear
             cd ~/ts/sh 
             ./choosegmaprompt.sh
             
             ;;
        "Common Applications")
             cd ~/ts/sh 
             ./chooseca.sh
             
             clear
             cd ~/ts/sh 
             ./choosegmaprompt.sh

             ;;
        "Back")
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

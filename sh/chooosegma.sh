#!/bin/bash 
clear
echo "Choose a shell"
PS3='Choose an option: '
options=("Package Managers" "The Usual Stuff"  "Useful Utilities" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "Package Managers")
             cd ~/ts/sh
             ./choosepm.sh

             ;;
        "The Usual Stuff")

             ;;
        "Useful Utilities")
        
             ;;


        "Back")
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

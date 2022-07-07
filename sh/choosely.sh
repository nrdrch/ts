#!/bin/bash 
clear
echo "Do you want to use ly as your display manager?"
PS3='Choose an option: '
options=("Yes" "No")
select fav in "${options[@]}"; do
    case $fav in
        "Yes")

            ;;
        "Back")
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

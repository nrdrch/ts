#!/bin/bash 
clear
echo "Choose a shell"
PS3='Choose an option: '
options=("" "Use Zsh"  "Use Bash" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "Use Fish")

             ;;
        "Use Zsh")

             ;;
        "Use Bash")
        
             ;;


        "Back")
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

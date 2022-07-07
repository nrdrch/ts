#!/bin/bash 
clear
echo "Choose a shell"
PS3='Choose an option: '
options=("Use Fish" "Use Zsh"  "Use Bash" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "Use Fish")
             sudo pacman -S --noconfirm fish
             sudo chsh -s /usr/bin/fish &(whoami)
             echo ">>  Installed fish and set it as default | $(date)" >> ~/ts/ignore/mainprompt.sh
             clear
             cd ~/ts/sh
             ./ts.sh
             
             ;;
        "Use Zsh")
             sudo pacman -S --noconfirm zsh
             sudo chsh -s /usr/bin/zsh &(whoami)
             echo ">>  Installed zsh and set it as default | $(date)" >> ~/ts/ignore/mainprompt.sh
             ;;
        "Use Bash")
             sudo pacman -S --noconfirm --needed bash
             sudo chsh -s /bin/bash &(whoami)
             echo ">>  Installed bash and set it as default | $(date)" >> ~/ts/ignore/mainprompt.sh
             ;;


        "Back")
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

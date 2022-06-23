#!/bin/bash 

PS3='Choose an option: '
options=("Use Fish (friendly interactive shell"  "Use Bash" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "Use Fish (friendly interactive shell")
             sudo pacman -S --noconfirm fish
             sudo chsh -s /usr/bin/fish
             echo ">>  Installed fish and set it as default | $(date)" >> ~/ts/ignore/mainprompt.sh
             
            ;;
        "Use Zsh")
             sudo pacman -S --noconfirm zsh
             sudo chsh -s /usr/bin/zsh
             echo ">>  Installed zsh and set it as default | $(date)" >> ~/ts/ignore/mainprompt.sh
            ;;
        "Use Bash")
             sudo pacman -S --noconfirm --needed bash
             sudo chsh -s /bin/bash/
             echo ">>  Installed bash and set it as default | $(date)" >> ~/ts/ignore/mainprompt.sh
            ;;


        "Back")
          clear
        exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

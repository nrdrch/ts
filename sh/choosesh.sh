#!/bin/bash 
clear
cat $HOME/ts/ignore/necessary.txt
sleep 0.2s
PS3='Choose a Shell: '
options=("Use Fish" "Use Zsh"  "Use Bash" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "Use Fish")
             sudo pacman -S --noconfirm fish
             sudo chsh -s /usr/bin/fish &(whoami)
             
             sudo rm -r -d /usr/share/fish/functions/fish_greeting.fish
             sudo mv ~/ts/cfg/fish_greeting.fish /usr/share/fish/functions/fish_greeting.fish             
             echo ">>  Installed fish and set it as default | $(date)" >> ~/ts/sh/mainprompt.sh
             clear
             cd ~/ts/sh 
             ./fishalias.sh
	     clear
	     cd ~/ts/sh
             ./mainprompt.sh
             cd ~/ts
             ./ts.sh
             
             ;;
        "Use Zsh")
             sudo pacman -S --noconfirm zsh
             sudo chsh -s /usr/bin/zsh &(whoami)
             echo ">>  Installed zsh and set it as default | $(date)" >> ~/ts/sh/mainprompt.sh
             clear
             cd ~/ts
             ./ts.sh
             
             ;;
        "Use Bash")
             sudo pacman -S --noconfirm --needed bash
             sudo chsh -s /bin/bash &(whoami)
             echo ">>  Installed bash and set it as default | $(date)" >> ~/ts/sh/mainprompt.sh
             clear
             cd ~/ts
             ./ts.sh
                          
             ;;


        "Back")
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

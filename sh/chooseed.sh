
#!/bin/bash 
clear
PS3='Which Text-Editor do you want to use?: '
options=("Sublime Text4" "Neovim" "VS Codium" "Back")
select fav in "${options[@]}"; do
    case $fav in
        "Sublime Text4")
            cd $HOME/Applications	    
            git clone https://aur.archlinux.org/sublime-text-4.git
	          cd sublime-text-4/
            makepkg -si	                
            clear
            echo ">>  Installed Sublime Text4 | $(date)" >> ~/ts/sh/mainprompt.sh
            

            ;;        
        "Neovim")
            cd ~/Applications	    
            git clone https://aur.archlinux.org/neovim-git.git 
            cd neovim-git/  
            makepkg -si	                
            clear
            echo ">>  Installed Neovim | $(date)" >> ~/ts/sh/mainprompt.sh

            ;;            
        "VS Codium")
            cd ~/Applications
            git clone https://aur.archlinux.org/vscodium-bin.git 
            cd vscodium-bin/
            makepkg -si
            clear
            echo ">>  Installed VS Codium | $(date)" >> ~/ts/sh/mainprompt.sh
            
            
            ;;
        "Back")
        
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

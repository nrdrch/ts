
#!/bin/bash 
clear
cat $HOME/ts/ignore/necessary.txt
sleep 0.2s
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
            sudo rm -r -d ~/.config/sublime-text/Packages/User/Preferences.sublime-settings
	    sudo mv ~/ts/cfg/Preferences.sublime-settings ~/.config/sublime-text/Packages/User/Preferences.sublime-settings
	    clear
	    echo ">>  Installed and Configured Sublime Text4 | $(date)" >> ~/ts/sh/mainprompt.sh
	    
	    cd ~/ts/sh
            ./choosely.sh
            

            ;;        
        "Neovim")
            sudo pacman -S --noconfirm neovim
	    
	    
	    
	    
	    
	    clear
            echo ">>  Installed Neovim | $(date)" >> ~/ts/sh/mainprompt.sh
	    
	    
	    
	    cd ~/ts/sh
            ./choosely.sh
	    

            ;;            
        "VS Codium")
            cd ~/Applications
            git clone https://aur.archlinux.org/vscodium-bin.git 
            cd vscodium-bin/
            makepkg -si
            clear
            echo ">>  Installed VS Codium | $(date)" >> ~/ts/sh/mainprompt.sh
	    
	    cd ~/ts/sh
            ./choosely.sh
            
            
            ;;
        "Back")
        
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

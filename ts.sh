#!/bin/bash

echo "the mildly useful and totally unbiased:"
cat $HOME/Downloads/ts/necessary.txt
sleep 2s

PS3='Choose an option: '
options=("i3base" "fsdeps" "more apps" "fish alias" "grub utils" "Quit")
select fav in "${options[@]}"; do
    case $fav in
        "i3base")
	    cd $HOME
 	    mkdir Applications Documents Music Pictures
            clear
	    cd $HOME/.config
            mkdir polybar picom alacritty
            sudo touch $HOME/Downloads/ts/tog.txt
            sudo chmod 777 $HOME/Downloads/ts/log.txt
            clear
            sudo pacman -S --needed --noconfirm polybar picom feh man-db alacritty btop neofetch fish mpv
	    sudo pacman -S --noconfirm base-devel
            sudo chsh -s /usr/bin/fish $(whoami)
            cd $HOME/Applications
            git clone https://aur.archlinux.org/yay-bin.git
            sudo chmod 777 yay-bin && cd yay-bin && makepkg -si --noconfirm --noprogressbar
            cd $HOME/Applications
            yay -S --noconfirm --needed --quiet rofi 
	    clear
 	    git clone --depth=1 https://github.com/adi1090x/rofi.git
	    cd rofi
	    sudo chmod +x setup.sh
	    ./setup.sh
      	    clear
	    cd $HOME/Applications	    
	    git clone https://aur.archlinux.org/sublime-text-4.git
	    cd sublime-text-4/
	    makepkg -si
	    
	    
	    
            sudo rm -r -d ~/.config/i3/config
            sudo mv ~/Downloads/ts/cfg/config ~/.config/i3/config
            sudo mv ~/Downloads/ts/cfg/config.ini ~/.config/polybar/config.ini
            sudo mv ~/Downloads/ts/cfg/picomconfig ~/.config/picom/config
            sudo mv ~/Downloads/ts/cfg/spaceguy.jpg ~/Pictures/spaceguy.jpg
            sudo mv ~/Downloads/ts/cfg/Baldurs-Gare-Dark-Alliance.jgp ~/Pictures/Baldurs-Gare-Dark-Alliance.jgp
            sudo rm -r -d /usr/share/fish/functions/fish_greeting.fish
	    sudo mv ~/Downloads/ts/cfg/fish_greeting.fish /usr/share/fish/functions/fish_greeting.fish
	    sudo rm -r -d ~/.config/alacritty/alacritty.yml
	    sudo mv ~/Downloads/ts/cfg/alacritty.yml ~/.config/alacritty/alacritty.yml




	    clear
            cd ~/Applications
            git clone --recurse-submodules https://github.com/fairyglade/ly.git && cd ly
            make && clear
            sudo make install && sudo rm -r -d /etc/systemd/system/display-manager.service
            sudo systemctl enable ly.service
            clear

	    echo "the mildly useful and totally unbiased:"
	    cat $HOME/Downloads/ts/necessary.txt
            echo "1) i3base "
	    echo "2) fsdeps "
	    echo "3) more apps"
	    echo "4) fish alias"
	    echo "5) grub utils"
	    echo "6) Quit"
	    echo " "
	    echo " "
	    echo ">last chosen option: 1) i3base"
	    echo "Options used to far:" >> ~/Downloads/ts/log.txt
	    echo "1) i3base" >> ~/Downloads/ts/log.txt
	    cat ~/Downloads/ts/log.txt

            ;;
        "fsdeps")


            sudo pacman -S --noconfirm ntfs-3g udisks2 btrfs-progs exfatprogs f2fs-tools dosfstools jfsutils cryptsetup lvm2 util-linux nilfs-utils xfsprogs
            clear

	    echo "the mildly useful and totally unbiased:"
	    cat $HOME/Downloads/ts/necessary.txt
            echo "1) i3base "
	    echo "2) fsdeps "
	    echo "3) more apps"
	    echo "4) fish alias"
	    echo "5) grub utils"
	    echo "6) Quit"
	    echo " "
	    echo " "
	    echo ">last chosen option: 2) fsdeps"
	    echo "2) fsdeps" >> ~/Downloads/ts/log.txt
	    cat ~/Downloads/ts/log.txt

	          ;;
        "more apps")
            
	    yay -S --noconfirm --needed didyoumean-bin
	    yay -S --noconfirm --needed bitwarden-git
	    yay -S --noconfirm --needed i3-swallow-git
	    yay -S --noconfirm --needed ksnip-git
            clear
	    echo "the mildly useful and totally unbiased:"
	    cat $HOME/Downloads/ts/necessary.txt

            echo "1) i3base "
	    echo "2) fsdeps "
	    echo "3) more apps"
	    echo "4) fish alias"
	    echo "5) grub utils"
	    echo "6) Quit"
	    echo " "
	    echo " "
      	    echo ">last chosen option: 3) have more"
	    echo "3) more apps" >> ~/Downloads/ts/log.txt
	    cat ~/Downloads/ts/log.txt
            ;;
        "fish alias")
            cd ~/Downloads/ts/sh/
	    sudo chmod +x fishalias.sh
            ./fishalias.sh

            clear

	    echo "the mildly useful and totally unbiased:"
	    cat $HOME/Downloads/ts/necessary.txt


      	    echo ">last chosen option 4) fish alias"

	    echo "4) fish alias" >> ~/Downloads/ts/log.txt
	    cat ~/Downloads/ts/log.txt
            ;;
        "grub utils")
            sudo pacman -S --noconfirm os-prober
	    sudo pacman -S --noconfirm grub-customizer
	    sudo os-prober

	    echo "the mildly useful and totally unbiased:"
	    cat $HOME/Downloads/ts/necessary.txt


            echo "1) i3base "
	    echo "2) fsdeps "
	    echo "3) more apps"
	    echo "4) fish alias"
	    echo "5) grub utils"
	    echo "6) Quit"
	    echo " "
	    echo " "
	    echo ">last chosen option: 5) grub utils"
	    echo "5) grub utils" >> ~/Downloads/ts/log.txt
	    cat ~/Downloads/ts/log.txt
            ;;
        "Quit")
          clear
		echo "please Note: A reboot is required for option:[ i3base ] to function."
		exit
	        ;;
        *) echo "invalid option $REPLY";;
    esac
done

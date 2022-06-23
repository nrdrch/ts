#!/usr/bin/fish

#general
alias --save c="clear"
alias --save e="exit"
alias --save ed="sudo subl"
alias --save oprm="sudo rm -r -d"
alias --save nf="neofetch"


#Power & System commands
alias --save jesus="reboot"
alias --save ded="shutdown now"
alias --save update="sudo pacman -Syu"


#Directories
alias --save apps="cd ~/Applications"
alias --save docs="cd ~/Documents"
alias --save pics="cd ~/Pictures"
alias --save downs="cd ~/Downloads"
alias --save music="cd ~/Music"
alias --save .config="cd ~/.config"
alias --save .cfg="cd ~/.config"
alias --save media="cd /run/media/$(whoami)"

#Package Managers
alias --save pac="sudo pacman -S --needed"
alias --save npac="sudo pacman -S --needed --noconfirm"
alias --save yy="yay -S"
alias --save nyy="yay -S -q --removemake --noconfirm"
alias --save gc="git clone"
alias --save msi="makepkg -si"

#Websitestuff
alias --save fire="swallow firefox"
alias --save aur="swallow firefox https://aur.archlinux.org"
alias --save wiki="swallow firefox https://wiki.archlinux.org"
alias --save gh="swallow firefox https://github.com/"


#Configuration
alias --save i3cfg="sudo subl ~/.config/i3/config"
alias --save picomcfg="sudo subl ~/.config/picom/config"
alias --save polybarcfg="sudo subl ~/.config/polybar/config.ini"
alias --save grubcfg="sudo subl /etc/default/grub"
alias --save alacrittycfg="sudo subl ~/.config/alacritty/alacritty.yml"
alias --save btopcfg="sudo subl ~/.config/btop/btop.conf"
alias --save roficfg="cd ~/.config/rofi/"

echo "4) fish alias" >> ~/Downloads/i3ts/log.txt

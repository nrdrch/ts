#!/bin/bash 
clear
echo "Do you want to use ly as your display manager?"
PS3='Choose an option: '
options=("Yes" "No")
select fav in "${options[@]}"; do
    case $fav in
        "Yes")
            cd ~/Applications
            git clone --recurse-submodules https://github.com/fairyglade/ly.git && cd ly
            make && clear
            sudo make install && sudo rm -r -d /etc/systemd/system/display-manager.service
            sudo systemctl enable ly.service
            clear

            ;;
        "Back")
          clear
                exit
                ;;
        *) echo "invalid option $REPLY";;
    esac
done

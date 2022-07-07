#!/bin/bash
cd ~/Applications/KVM*
sudo chmod +x *.sh
clear
echo "moejoe's mildly useful and totally unbiased:"
sleep 0.4s
cat $HOME/ts/ignore/necessary.txt
sleep 0.2s
PS3='Are you using an Intel or AMD CPU? '
options=("Intel CPU"  "AMD CPU")
select fav in "${options[@]}"; do
    case $fav in
        "Intel CPU")
	    cd ~/Applications/KVM-GPU-Passthrough/
	    sudo ./grub_setup_intel.sh
	    
      
      
      	    clear
	    
            ;;
        "AMD CPU")
	    cd ~/Applications/KVM-GPU-Passthrough/
            sudo ./grub_setup_amd.sh
	    clear
      
      
      
	    ;;
      
        *) echo "invalid option $REPLY";;
    esac
done

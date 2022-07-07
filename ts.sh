#!/bin/bash
clear
echo "moejoe's mildly useful and totally unbiased:"
sleep 0.5s
cat $HOME/ts/ignore/necessary.txt
sleep 0.2s
cd ~/ts/sh/
sudo chmod +x *.sh
sudo chmod 777 *.sh

cd ~/ts/sh
./mainprompt.sh
PS3='Choose an option: '
options=("i3-gaps Base"  "Get More Apps" "Quit")
select fav in "${options[@]}"; do
    case $fav in
        "i3-gaps Base")
	    cd ~/ts/sh/
	    ./i3base.sh
	    clear
	    
   	    cd ~/ts/sh
	    ./mainprompt.sh
	    
            ;;
	"Get More Apps")
	    cd ~/ts/sh
	    ./choosegma.sh
	    ;;
        "Quit")
          clear
          	echo "please Note: A reboot is required for various things to function correctly."
        	exit
            	;;
        *) echo "invalid option $REPLY";;
    esac
done


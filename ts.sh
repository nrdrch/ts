#!/bin/bash
clear
echo "moejoe's mildly useful and totally unbiased:"
sleep 0.5s
cat $HOME/ts/ignore/necessary.txt
sleep 0.2s

PS3='Choose an option: '
options=("i3-gaps Base"  "Get More Apps" "Quit")
select fav in "${options[@]}"; do
    case $fav in
        "i3-gaps Base")
	    cd ~/ts/sh/
            sudo chmod +x *.sh
	    ./base.sh	    
   	    cd ~/ts/sh
	    ./mainprompt.sh
	    
            ;;
	"Get More Apps")
		
	    ;;
        "Quit")
          clear
          	echo "please Note: A reboot is required for various things to function correctly."
        	exit
            	;;
        *) echo "invalid option $REPLY";;
    esac
done


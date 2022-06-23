#!/bin/bash

echo "moejoe's mildly useful and totally unbiased:"
cat $HOME/ts/ignore/necessary.txt
sleep 2s

PS3='Choose an option: '
options=("Base" "Configure" "Get More Apps" "Quit")
select fav in "${options[@]}"; do
    case $fav in
        "Base")
	    cd ~/ts/sh/
            sudo chmod +x base.sh
	    
            	
	
	    
   	    cd ~/ts/ignore/
	    ./mainprompt.sh
	    
            ;;

        "Quit")
          clear
        echo "please Note: A reboot is required for various things to function correctly."
        exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done


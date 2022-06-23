#!/bin/bash

echo "moejoe's mildly useful and totally unbiased:"
cat $HOME/ts/necessary.txt
sleep 2s

PS3='Choose an option: '
options=("Base" "" "Quit")
select fav in "${options[@]}"; do
    case $fav in
        "Base")
	    cd ~/ts/sh/
            sudo chmod +x base.sh
	    
            	
	
	    
   	    cd ~/ts/sh/
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


#!/bin/bash

echo "Choose an option:"
#echo "Say Hello, Show Date, Quit"
options=("Say Hello" "Show Date" "Quit")

select opt in "${options[@]}"
do 
    case $REPLY in
        1) echo "Hello!!!" ;;
        2) date ;;
        3) echo "Goodbye!!!"; break ;;
        *) echo "Invalid option. Please try again" ;;
    esac
done 
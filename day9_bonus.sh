#!/bin/bash

echo "Choose an option"
option=("Create file" "List Files" "Show Uptime" "Exit")

select opt in "${option[@]}"
do 
    case $REPLY in 
        1) 
            read -p "Enter filename: " filename
            echo "Creating $filename"
            touch $filename
            echo "File $filename created"
            ;;
        2)
            echo "The current directory contains:"
            ls -l 
            ;;
        3)
            Uptime
            ;;
        4) 
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid selection. Please try again."
            ;;
    esac
done

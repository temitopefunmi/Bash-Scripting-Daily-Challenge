#!/bin/bash

answer=""

while true
do 
    read -p "What is 6 + 6? " answer
    if [[ "$answer" =~ ^[0-9]+$ ]]; then
        if [[ $answer -eq 12 ]]; then
            echo "Correct!"
            break
        else
            echo "Try again"    
        fi
    else
        echo "Please enter a number..."
    fi
done

#!/bin/bash

echo "Welcome to Bash file analysis"

read -p "Enter a filename: " filename

if [[ ! -f $filename ]]; then    
    echo "File $filename does not exist"
    exit 1
fi

echo "Select an operations"
options=("Word count" "Line count" "Character count" "Show first 10 lines" "Exit")

select opt in "${options[@]}"
do
    case $REPLY in
        1) echo "Word count: $(wc -w < $filename)" ;;
        2) echo "Line count: $(wc -l < $filename)" ;;
        3) echo "Character count: $(wc -m < $filename)" ;;
        4) echo "First 10 lines: $(head $filename)" ;;
        5) echo "Exiting..."; break ;;
        6) echo "Invalid option. Try again.";;
    esac
done
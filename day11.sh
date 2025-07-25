#!/bin/bash

#Prompt user for username
read -p "Enter username: " username

#Check if username exists, create if it does not
if id $username &>/dev/null; then
    echo "User $username already exists"
    echo "$username belongs to: " group $username
else
    echo "Creating new user: $username..."
    sudo useradd -m $username
    echo "User $username created"
    #sudo passwd $username 
    read -p "Would you like to add to sudo? (Yes/No)" option
    if [[ $option == "Yes" ]]; then
        sudo usermod -aG sudo $username
        echo "$username added to sudo group"
    else    
        echo "Exiting..."
    fi
fi
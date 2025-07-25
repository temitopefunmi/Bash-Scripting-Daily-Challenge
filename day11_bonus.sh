#!/bin/bash

read -p "Enter username to lock: " username

if id $username &>/dev/null; then
    sudo passwd -l $username
    echo "User $username is now locked."
else
    echo "User does not exit."
fi
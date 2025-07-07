#!/bin/bash

#Ask for name
read -p "What is your name? " name

#Ask for age
read -p "How old are you? " age

#Response based on age
if [ "$age" -ge 65 ]; then
    echo "Wow $name!, you qualify as a senior citizen"   
elif [ "$age" -ge 18 ]; then
    echo "Welcome $name!, you are old enough to vote. 🗳️"
else
    echo "Hi $name, you are not yet old enough to vote. 🧒"
fi


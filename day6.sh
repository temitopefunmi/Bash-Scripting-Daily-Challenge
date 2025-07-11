#!/bin/bash

greet_user(){
    echo "Hello $1, Welcome to Day6 of the challenge."
}

read -p "What is your name: " name
greet_user $name

add_numbers(){
    result=$(( $1 + $2 ))
    echo "$1 + $2 = $result"
}

read -p "Enter the first number: " num
read -p "Enter the second number: " num2

add_numbers $num $num2
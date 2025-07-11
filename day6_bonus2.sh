#!/bin/bash

get_length(){
    echo ${#1}
}

read -p "Enter any word: " input
length=$(get_length "$input")
echo "The word $input has $length characters."
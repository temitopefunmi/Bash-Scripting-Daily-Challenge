#!/bin/bash

calculate(){
    if [[ $1 =~ ^[0-9]+$ && $3 =~ ^[0-9]+$ ]]; then
        case "$2" in
            +) echo "$1 + $3 = $(( $1 + $3 ))" ;;
            -) echo "$1 - $3 = $(( $1 - $3 ))" ;;
            \*)echo "$1 * $3 = $(( $1 * $3 ))" ;;
            /)
                if [[ $3 -ne 0 ]]; then
                    echo "$1 / $3 = $(( $1 / $3 ))"
                else
                    echo "Cannot divide by zero"
                fi;;
            *) echo "Enter a valid operator, e.g + - * /";;
        esac
    else
        echo "Please enter valid integers"
    fi
}

while true;
    do 
        echo "Type in format: x operator y, e.g 1 + 3"
        read -a input
        ##set -- $input
        if [[ ${input[0]} == "exit" ]]; then
            break
        fi
        calculate "${input[0]}" "${input[1]}" "${input[2]}"
    done


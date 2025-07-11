#!/bin/bash

if [[ $1 =~ ^[0-9]+$ && $2 =~ ^[0-9]+$ ]]; then
    sum=$(( $1 + $2 ))
    echo "$1 + $2 = $sum"
else
    echo "Please enter valid integer!!!"
fi
#!/bin/bash

usage (){
    echo "Usage: $0 -f <filename> [-v]"
    echo "(-v means Verbose)"
    exit 1
}

FILE=""
VERBOSE=false

#OPTARG to specify what -f takes as argument, so -v -f filename still works
while getopts ":f:v" options;
    do
        case $options in
            f) FILE="$OPTARG" ;;
            v) VERBOSE=true ;;
            *) usage ;;
        esac
    done

if [[ -z $FILE ]]; then
    usage
fi

echo "Target file: $FILE"
if $VERBOSE; then
    echo "Verbose is ON"
fi

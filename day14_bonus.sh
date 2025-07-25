#!/bin/bash

help() {
    echo "usage: $0 -f <filename> [-w] [-l] [-c] [-v]"
    echo -e "options: -w, to print word count \n -l, to print line count \n -c, to print character count"
    echo "-v, Enable verbose mode (timestamps)"
    exit 1
}
#initialize variables
FILE=""
WORD_COUNT=false
LINE_COUNT=false
CHAR_COUNT=false
VERBOSE=false

while getopts ":f:wlcv" options;
    do  
        case $options in
            f) FILE=$OPTARG ;;
            w) WORD_COUNT=true ;;
            l) LINE_COUNT=true ;;
            c) CHAR_COUNT=true ;;
            v) VERBOSE=true ;;
            *) help ;;
        esac
    done

if [[ -z $FILE ]]; then
    help
fi

print_verbose() {
    if $VERBOSE; then
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
    else
        echo "$1"
    fi
}

print_verbose "Analyzing file: $FILE"
$WORD_COUNT && print_verbose "Word count: $(wc -w < $FILE)" 
$LINE_COUNT && print_verbose "Line count: $(wc -l < $FILE)" 
$CHAR_COUNT && print_verbose "Character count: $(wc -m < $FILE)"
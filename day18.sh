#!/bin/bash


FILE=""
KEYWORD=""
TAIL=false

usage() {
    echo "Usage: $! [-f filename] [-k keyword] [-t tail mode]"
    echo "f: specific file"
    echo "k: keyword to search"
    echo "t: enable live monitoring in tail mode"
}


while getopts f:k:t opt;
    do
        case $opt in
            f) FILE=$OPTARG ;;
            k) KEYWORD=$OPTARG ;;
            t) TAIL=true ;;
            *) usage ;;
        esac
    done

if [[ -z $FILE || -z $KEYWORD ]]; then
    echo "Error in argument"
    usage
    exit 1
fi

if [[ ! -d $FILE ]]; then
    echo "File $FILE does not exist!!!... Try again"
    exit 1
fi

echo "Checkin $FILE for word: $KEYWORD"
grep $KEYWORD $FILE

if $TAIL ; then
    echo "Tailing logs with keyword: $KEYWORD"
    tail $FILE | grep $KEYWORD
fi

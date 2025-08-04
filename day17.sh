#!/bin/bash

FOLDER="/home"
VERBOSE=false

usage () {
    echo "Usage: $0 -f <foldername> -v <verbose>"
    echo "f: specific folder to show disk usage(defaults to /home)"
    echo "v: verbose mode(with timestamps)"
}

while getopts f:v options;
    do
        case $options in
            f) FOLDER=$OPTARG;;
            v) VERBOSE=true;;
            *) usage;;
        esac
    done 

#check if any positional arguments remain after getopts finishes parsing
shift $((OPTIND - 1))

# If any extra argument remains, show usage
if [[ $# -gt 0 ]]; then
    echo "Unexpected argument"
    usage
    exit 1
fi

if [[ ! -d $FOLDER ]]; then
    echo "Folder does not exist!!!"
    exit 1    
fi

if $VERBOSE; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')]"
fi

echo "Checking disk usage for $FOLDER"
df -h $FOLDER
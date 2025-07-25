#!/bin/bash

filename="file2.txt"

if [[ -f $filename ]]; then
    lines=$(wc -l < $filename)
    echo "File $filename has $lines line(s)"
    echo "Reading file line by line"
    while read -r line; 
        do
            echo "$line"
            sleep 1
        done < $filename
else
    echo "File not found!!!"
fi
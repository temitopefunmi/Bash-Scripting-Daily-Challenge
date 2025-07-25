#!/bin/bash

filename="file1.txt"

if [[ -f $filename ]]; then
    echo "File $filename already exists. Appending greeting..."
else
    echo "Creating new $filename"
fi

echo "Hello from day 8 of bash challenge" >> $filename
cat $filename
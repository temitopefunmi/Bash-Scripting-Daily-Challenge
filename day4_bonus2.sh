#!/bin/bash

count=0

while [[ $count -lt 3 ]]
    do 
        uptime
        sleep 5
        ((count++))
done

echo "Finished..."
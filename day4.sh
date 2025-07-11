#!/bin/bash

count=5
while (( count > 0 ))
do
    echo "Countdown: $count"
    ((count --))
    sleep 1
done
echo "Blast off!!!"
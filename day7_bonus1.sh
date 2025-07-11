#!/bin/bash

greet(){
    echo "Hello $1. Today is $2."
}

read -p "What is your name: " name
read -p "What day is it: " day

greet $name $day

